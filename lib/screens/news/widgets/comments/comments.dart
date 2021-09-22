import 'package:academy_app/business_logic/check_auth/check_auth_cubit.dart';
import 'package:academy_app/business_logic/comment/comment_watcher/comment_watcher_cubit.dart';
import 'package:academy_app/business_logic/comment/create_comment/create_comment_cubit.dart';
import 'package:academy_app/business_logic/payment/payment_cubit.dart';
import 'package:academy_app/model/news/news.dart';
import 'package:academy_app/screens/news/widgets/comments/widgets/comment_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../constants.dart';
import '../../../../injection.dart';

class Comments extends StatelessWidget {
  Comments({Key? key, required this.news}) : super(key: key);
  final News news;
  final TextEditingController commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final userState = context.watch<PaymentCubit>().state;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Comments'),
        ),
        body: BlocConsumer<CreateCommentCubit, CreateCommentState>(
          listener: (context, state) {},
          builder: (context, state) {
            return Column(
              children: [
                BlocProvider(
                  create: (context) =>
                      getIt<CommentWatcherCubit>()..getComments(news.newsId!),
                  child: CommentList(),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      vertical: 10, horizontal: kDefaultPadding),
                  child: SafeArea(
                    child: Row(
                      children: [
                        Expanded(
                          child: BlocBuilder<CheckAuthCubit, CheckAuthState>(
                            builder: (context, authstate) {
                              return authstate.maybeMap(
                                orElse: () => Container(),
                                unauthenticated: (_) => Center(
                                  child: Text(
                                    'Only authenticated user can add comment!',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                                authenticated: (_) => Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: kBgLightColor,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(width: kDefaultPadding),
                                      Expanded(
                                        child: TextField(
                                          controller: commentController,
                                          onChanged: (value) {
                                            value = commentController.text;
                                            context
                                                .read<CreateCommentCubit>()
                                                .commentChanges(
                                                    commentController.text);
                                          },
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: 'Your comment....',
                                          ),
                                        ),
                                      ),
                                      state.comment.comment!.isNotEmpty
                                          ? IconButton(
                                              onPressed: () {
                                                context
                                                    .read<CreateCommentCubit>()
                                                    .createComment(
                                                      news.newsId!,
                                                      userState
                                                          .userData.imgUrl!,
                                                      userState
                                                          .userData.userName!
                                                          .getOrCrash(),
                                                    );
                                                commentController.clear();
                                              },
                                              splashRadius: 1,
                                              icon: Icon(
                                                Icons.send_sharp,
                                                color: Colors.purpleAccent[700],
                                              ),
                                            )
                                          : Container(),
                                      SizedBox(width: kDefaultPadding),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
