import 'package:bloc_project/bloc/game_data_bloc.dart';
import 'package:bloc_project/repositories/games_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:BlocBuilder<GameDataBloc, GameDataState>(
      builder: (context, state) {
        if (state is GameDataInitialState) {
          context.read<GameDataBloc>().add(LoadGameDataEvent());
          return const Center(child:  CircularProgressIndicator());
        } else if (state is GameDataLoadingState) {
          return const Center(child:  CircularProgressIndicator());
        } else if (state is GameDataLoadedState) {
          return const Center(child:Text("Game Loaded"));
        } else if (state is GameDataErrorState) {
          return const Center(child: Text('Something went Wrong'));
        }
        return const Text('Error');
      },
    ), 
    );

    
  }
}
