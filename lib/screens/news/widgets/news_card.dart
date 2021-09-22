import 'package:academy_app/business_logic/check_auth/check_auth_cubit.dart';
import 'package:academy_app/business_logic/check_role/check_role_cubit.dart';
import 'package:academy_app/model/news/news.dart';
import 'package:academy_app/screens/news/widgets/comments/comments.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../constants.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({Key? key, required this.news}) : super(key: key);
  final List<News> news;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      itemCount: news.length,
      itemBuilder: (BuildContext context, int i) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Card(
            elevation: 3,
            color: kBgLightColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                TopPart(
                  news: news[i],
                ),
                Center(
                  child: Container(
                    height: 220,
                    child: news[i].imgUrl!.isNotEmpty
                        ? CachedNetworkImage(
                            imageUrl: news[i].imgUrl!,
                            width: 400,
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.medium,
                          )
                        : Image.asset(
                            'assets/images/no_image2.png',
                            height: 120,
                            width: 120,
                          ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: kDefaultPadding,
                      vertical: kDefaultPadding / 3),
                  child: Row(
                    children: [
                      IconButton(
                        splashRadius: 1,
                        padding: EdgeInsets.all(0),
                        alignment: Alignment.centerLeft,
                        icon: Icon(
                          Icons.favorite,
                          size: 30,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        padding: EdgeInsets.all(0),
                        splashRadius: 20,
                        alignment: Alignment.centerLeft,
                        icon: Icon(
                          Icons.comment,
                          size: 30,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Comments(
                                        news: news[i],
                                      )));
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Row(
                    children: [
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Muli',
                            ),
                            children: [
                              TextSpan(
                                text: '${news[i].coachName}:  ',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16.5,
                                ),
                              ),
                              TextSpan(text: news[i].content),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: kDefaultPadding,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class TopPart extends StatelessWidget {
  const TopPart({
    Key? key,
    required this.news,
  }) : super(key: key);
  final News news;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 28,
            child: ClipOval(
              child: news.coachImgUrl!.isNotEmpty
                  ? CachedNetworkImage(
                      imageUrl: news.coachImgUrl!,
                      fit: BoxFit.cover,
                      width: 100,
                      height: 100,
                      filterQuality: FilterQuality.medium,
                    )
                  : Image.asset(
                      'assets/images/no_image.png',
                      width: 50,
                      height: 50,
                    ),
            ),
          ),
          Text(
            news.coachName!,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Builder(
            builder: (context) {
              final checkAuthState = context.watch<CheckAuthCubit>().state;

              final checkRoleState = context.watch<CheckRoleCubit>().state;
              return checkAuthState.maybeMap(
                orElse: () => Container(),
                unauthenticated: (_) => Container(width: 40),
                authenticated: (_) => checkRoleState.maybeMap(
                  orElse: () => Container(),
                  user: (_) => Container(width: 40),
                  admin: (_) => IconButton(
                    padding: EdgeInsets.all(0),
                    icon: Icon(
                      Icons.close,
                      color: Colors.black87,
                      size: 24,
                    ),
                    onPressed: () {},
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
