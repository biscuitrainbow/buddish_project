import 'package:buddish_project/data/model/mantra.dart';
import 'package:buddish_project/data/model/news.dart';
import 'package:buddish_project/data/model/user.dart';
import 'package:buddish_project/redux/ui/login_screen/login_screen_state.dart';
import 'package:buddish_project/redux/ui/news_compose_screen/news_compose_screen_state.dart';
import 'package:buddish_project/redux/ui/news_list_screen/news_list_screen_state.dart';
import 'package:buddish_project/redux/ui/profile_screen/profile_screen_state.dart';
import 'package:buddish_project/redux/ui/sermon_videos_screen/sermon_video_screen_state.dart';

class AppState {
  final User user;
  final String token;
  final List<Mantra> mantras;
  final List<News> news;
  final LoginScreenState loginScreenState;
  final SermonVideoScreenState sermonVideoScreenState;
  final ProfileScreenState profileScreenState;
  final NewsComposeScreenState newsComposeScreenState;
  final NewsListScreenState newsListScreenState;

  AppState({
    this.user,
    this.token,
    this.mantras,
    this.news,
    this.loginScreenState,
    this.sermonVideoScreenState,
    this.profileScreenState,
    this.newsComposeScreenState,
    this.newsListScreenState,
  });

  factory AppState.initial() {
    return AppState(
      user: null,
      token: null,
      mantras: Mantra.generate(),
      news: [],
      loginScreenState: LoginScreenState.initial(),
      sermonVideoScreenState: SermonVideoScreenState.initial(),
      profileScreenState: ProfileScreenState.initial(),
      newsComposeScreenState: NewsComposeScreenState.initial(),
      newsListScreenState: NewsListScreenState.initial(),
    );
  }

  AppState copyWith({
    User user,
    String token,
    List<Mantra> mantras,
    List<News> news,
    LoginScreenState loginScreenState,
    SermonVideoScreenState sermonVideoScreenState,
    ProfileScreenState profileScreenState,
    NewsComposeScreenState newsComposeScreenState,
    NewsListScreenState newsListScreenState,
  }) {
    return AppState(
      user: user ?? this.user,
      token: token ?? this.token,
      mantras: mantras ?? this.mantras,
      news: news ?? this.news,
      loginScreenState: loginScreenState ?? this.loginScreenState,
      sermonVideoScreenState: sermonVideoScreenState ?? this.sermonVideoScreenState,
      profileScreenState: profileScreenState ?? this.profileScreenState,
      newsComposeScreenState: newsComposeScreenState ?? this.newsComposeScreenState,
      newsListScreenState: newsListScreenState ?? this.newsListScreenState,
    );
  }

  @override
  String toString() {
    return 'AppState{user: $user, token: $token, mantras: $mantras, news: $news, loginScreenState: $loginScreenState, sermonVideoScreenState: $sermonVideoScreenState, profileScreenState: $profileScreenState, newsComposeScreenState: $newsComposeScreenState, newsListScreenState: $newsListScreenState}';
  }
}
