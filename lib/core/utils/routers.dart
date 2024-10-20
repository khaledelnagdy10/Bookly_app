import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_view.dart';
import 'package:bookly_app/features/search/presentation/views/widget/search_view_body.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) {
            return const SplashView();
          }),
      GoRoute(
          path: '/homeView',
          builder: (BuildContext context, GoRouterState state) {
            return const HomeView();
          }),
      GoRoute(
          path: '/bookDetailsView',
          builder: (BuildContext context, GoRouterState state) {
            return const BookDetialsView();
          }),
      GoRoute(
          path: '/searchView',
          builder: (BuildContext context, GoRouterState state) {
            return const SearchViewBody();
          }),
    ],
  );
}
