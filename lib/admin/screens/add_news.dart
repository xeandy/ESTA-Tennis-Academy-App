import 'dart:io';
import 'dart:ui';

import 'package:academy_app/admin/business_logic/news/add_news/add_news_cubit.dart';
import 'package:academy_app/business_logic/payment/payment_cubit.dart';
import 'package:academy_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddNews extends StatelessWidget {
  const AddNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final userState = context.watch<PaymentCubit>().state;

    return Scaffold(
      body: SingleChildScrollView(
        child: BlocConsumer<AddNewsCubit, AddNewsState>(
          listener: (context, state) {
            if (state.isAdding) {
              showDialog(
                barrierColor: Colors.transparent,
                barrierDismissible: false,
                context: context,
                builder: (context) {
                  return MyShowDialog();
                },
              );
            }
            if (state.isAdded) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('News added!'),
                ),
              );
              Navigator.of(context)
                  .pushNamedAndRemoveUntil('/adminPanel', (route) => false);
            }
          },
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: kDefaultPadding, vertical: kDefaultPadding * 2),
              child: Column(
                children: [
                  InkWell(
                    onTap: () => context.read<AddNewsCubit>().pickImage(),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.purpleAccent[700]!,
                          width: 2,
                        ),
                      ),
                      height: 200,
                      width: size.width,
                      child: state.newsImg.path.isEmpty
                          ? Icon(
                              Icons.add_a_photo,
                              size: 50,
                              color: Colors.purpleAccent[700],
                            )
                          : Image.file(
                              File(state.newsImg.path),
                              fit: BoxFit.cover,
                            ),
                    ),
                  ),
                  SizedBox(height: kDefaultPadding),
                  Text(
                    'Content',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: kDefaultPadding / 2),
                  Form(
                    child: TextFormField(
                      maxLines: 5,
                      cursorColor: Colors.purpleAccent[700]!,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: kDefaultPadding,
                            vertical: kDefaultPadding),
                        errorStyle: TextStyle(fontSize: 15),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22),
                          borderSide: BorderSide(
                            color: Colors.purpleAccent[700]!,
                            width: 2,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22),
                          borderSide: BorderSide(
                            color: Colors.purpleAccent[700]!,
                            width: 2,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.purpleAccent[700]!,
                          ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.purpleAccent[700]!,
                            width: 2,
                          ),
                        ),
                      ),
                      onChanged: (String value) {
                        context.read<AddNewsCubit>().onChanged(value);
                      },
                    ),
                  ),
                  SizedBox(height: kDefaultPadding),
                  TextButton(
                    onPressed: () {
                      context.read<AddNewsCubit>().addNews(userState.userData);
                      FocusScope.of(context).unfocus();
                    },
                    child: Text('Add'),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.purpleAccent[700],
                      primary: Colors.white,
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class MyShowDialog extends StatelessWidget {
  const MyShowDialog({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(22),
          ),
          border: Border.all(
            color: Colors.purpleAccent[700]!,
            width: 3,
          ),
        ),
        height: 130,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                color: Colors.purpleAccent[700],
              ),
              SizedBox(
                height: kDefaultPadding / 2,
              ),
              Text(
                'Adding news...',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
