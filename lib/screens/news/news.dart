import 'package:academy_app/business_logic/news_watcher/news_watcher_cubit.dart';
import 'package:academy_app/screens/news/widgets/news_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<NewsWatcherCubit, NewsWatcherState>(
        builder: (context, state) {
          return state.map(
            loadInProgress: (_) => Center(
              child: CircularProgressIndicator(),
            ),
            loadSuccess: (state) => state.news.isNotEmpty
                ? NewsCard(news: state.news)
                : Center(
                    child: Text('No news yet...'),
                  ),
            loadFailure: (state) => Center(
              child: Text(
                state.newsFailure.maybeMap(
                  orElse: () => 'Unexpected Error. \nPlease contact support',
                  insufficientPermission: (_) => 'Insufficient Permission',
                ),
              ),
            ),
            initial: (_) => Container(),
          );
        },
      ),
    );
  }
}
