// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/get_it_helper.dart';

import '../../application/home_bloc/home_bloc.dart';
import '../../infrastructure/developer_data/dao_imp.dart';
import '../developer_data/dao.dart';
import 'resolution.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

void $initGetIt(GetIt g, {String environment}) {
  final gh = GetItHelper(g, environment);
  gh.lazySingleton<DeveloperDataDao>(() => DaoImplimentation());
  gh.factory<HomeBloc>(() => HomeBloc(g<DeveloperDataDao>()));

  // Eager singletons must be registered in the right order
  gh.singleton<ManageResolution>(ManageResolution());
}
