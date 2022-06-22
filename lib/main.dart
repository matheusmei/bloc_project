import 'package:bloc_project/app_widget.dart';
import 'package:bloc_project/bloc/game_data_bloc.dart';
import 'package:bloc_project/repositories/games_repository.dart';
import 'package:bloc_project/screens/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp( BlocProvider<GameDataBloc>(
    create: (context) => GameDataBloc(GamesRepository()),
    child:  MyApp(),
  ));
}
