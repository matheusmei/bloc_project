
import 'package:bloc_project/screens/game_details_page.dart';
import 'package:bloc_project/screens/landing_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bloc_project/models/data_model.dart';
import 'package:flutter/material.dart';


part 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LandingPage, initial: true),
    AutoRoute(page: GamesDetailsPage),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
