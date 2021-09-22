const functions = require("firebase-functions");

const stripe = require("stripe")(functions.config().stripe.secretkey);


exports.create_payment_intent = functions.https.onRequest(async (req, res) => {

    try {
        const customers = await stripe.customers.list({ email: req.body.email });
        if (!customers.data[0]) {
            const customer = await stripe.customers.create({
                name: req.body.name,
                email: req.body.email,
            });
            const ephemeralKey = await stripe.ephemeralKeys.create(
                { customer: customer.id },
                { apiVersion: '2020-08-27' }
            );

            const paymentIntent = await stripe.paymentIntents.create({
                amount: req.body.amount,
                currency: 'usd',
                description: req.body.description,
                customer: customer.id,
                payment_method_options: {
                    card: {
                        request_three_d_secure: 'automatic',
                    },

                },

            })
            res.json({
                paymentIntent: paymentIntent.client_secret,
                ephemeralKey: ephemeralKey.secret,
                customer: customer.id,
            })

        }

        const ephemeralKey = await stripe.ephemeralKeys.create(
            { customer: customers.data[0].id },
            { apiVersion: '2020-08-27' }
        );

        const paymentIntent = await stripe.paymentIntents.create({
            amount: req.body.amount,
            currency: 'usd',
            description: req.body.description,
            customer: customers.data[0].id,
            payment_method_options: {
                card: {
                    request_three_d_secure: 'automatic',
                },

            },

        })
        res.json({
            paymentIntent: paymentIntent.client_secret,
            ephemeralKey: ephemeralKey.secret,
            customer: customers.data[0].id,
        })
    } catch (err) {
        res.status(400).json({
            error: {
                message: err.message
            }
        })
    }
});


