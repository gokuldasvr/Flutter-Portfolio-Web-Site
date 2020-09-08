import 'dart:async';

import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_portfolio/domain/developer_data/dao.dart';
import 'package:my_portfolio/domain/developer_data/model_developer_data.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  DeveloperDataDao _dao;
  HomeBloc(this._dao) : super(HomeState.initial());

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    yield* event.map(
      getDeveloperDetails: (e) async* {
        final devDetails = await _dao.getDeveloperDetails();
        yield state.copyWith(basicDetails: devDetails);
      },
      getPreviousJobDetails: (e) async* {
        final previousJob = await _dao.getPreviousJobDetails();
        yield state.copyWith(previousJobDetails: previousJob);
      },
      getAppGalleryDetails: (e) async* {
        final apps = await _dao.getProjectsDetails();
        yield state.copyWith(applicationsList: apps);
      },
    );
  }
}
