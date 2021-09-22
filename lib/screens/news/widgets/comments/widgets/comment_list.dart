import 'package:academy_app/business_logic/comment/comment_watcher/comment_watcher_cubit.dart';
import 'package:academy_app/constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommentList extends StatelessWidget {
  const CommentList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<CommentWatcherCubit, CommentWatcherState>(
        builder: (context, state) {
          return state.maybeMap(
            orElse: () => Container(),
            loadFailure: (state) => Center(
              child: Text(
                state.newsFailure.maybeMap(
                  orElse: () => 'Unexpected Error. \nPlease contact support',
                  insufficientPermission: (_) => 'Insufficient Permission',
                ),
              ),
            ),
            loadSuccess: (state) => state.comments.isEmpty
                ? Center(child: Text('No comments yet..'))
                : ListView.builder(
                    itemCount: state.comments.length,
                    itemBuilder: (context, i) {
                      return ListTile(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: kDefaultPadding,
                          vertical: kDefaultPadding / 2,
                        ),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            Text(
                              state.comments[i].userName!,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              state.comments[i].comment!,
                              style: TextStyle(),
                            ),
                          ],
                        ),
                        leading: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: ClipOval(
                            child: state.comments[i].userImgUrl!.isNotEmpty
                                ? CachedNetworkImage(
                                    imageUrl: state.comments[i].userImgUrl!,
                                    fit: BoxFit.cover,
                                    width: 50,
                                  )
                                : Image.asset(
                                    'assets/images/no_image.png',
                                  ),
                          ),
                        ),
                      );
                    },
                  ),
          );
        },
      ),
    );
  }
}
