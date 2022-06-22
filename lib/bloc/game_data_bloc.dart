// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:bloc_project/models/data_model.dart';
import 'package:bloc_project/repositories/games_repository.dart';

part 'game_data_event.dart';
part 'game_data_state.dart';

class GameDataBloc extends Bloc<GameDataEvent, GameDataState> {
  final GamesRepository gamesRepository;

  GameDataBloc(
    this.gamesRepository,
  ) : super(
          GameDataInitialState(),
        ) {
    on<GameDataEvent>((event, emit) async {
      if (event is LoadGameDataEvent) {
        emit(
          GameDataLoadingState(),
        );
        List<DataModel>? apiResult = await gamesRepository.getGamesData();
        if (apiResult == null) {
          emit(
            GameDataErrorState(),
          );
        } else {
          emit(
            GameDataLoadedState(
              apiResult: apiResult,
            ),
          );
        }
      }
    });
  }
}
