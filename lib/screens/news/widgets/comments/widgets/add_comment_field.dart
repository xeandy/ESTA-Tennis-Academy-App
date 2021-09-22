import 'package:academy_app/business_logic/comment/create_comment/create_comment_cubit.dart';
import 'package:academy_app/model/news/news.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../constants.dart';

class AddCommentField extends StatelessWidget {
  AddCommentField({Key? key, required this.news}) : super(key: key);
  final TextEditingController commentController = TextEditingController();
  final News news;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CreateCommentCubit, CreateCommentState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container(
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
                        .commentChanges(commentController.text);
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
                        // context
                        //     .read<CreateCommentCubit>()
                        //     .createComment(news.newsId!);
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
        );
      },
    );
  }
}
