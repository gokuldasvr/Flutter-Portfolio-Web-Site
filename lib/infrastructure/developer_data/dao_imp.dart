import 'package:injectable/injectable.dart';
import 'package:my_portfolio/domain/developer_data/dao.dart';
import 'package:my_portfolio/domain/developer_data/model_developer_data.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

@LazySingleton(as: DeveloperDataDao)
class DaoImplimentation implements DeveloperDataDao {
  @override
  Future<BasicDetails> getDeveloperDetails() async {
    final devData = await _parseData();
    return devData.basic;
  }

  @override
  Future<List<PreviousJobDetails>> getPreviousJobDetails() async {
    final devData = await _parseData();
    return devData.previousJobDetails;
  }

  @override
  Future<List<AppGallery>> getProjectsDetails() async {
    final devData = await _parseData();
    return devData.appGallery;
  }

  Future<ModelDeveloperData> _parseData() async {
    final jsonDataAsString =
        await rootBundle.loadString('assets/json/user_data.json');
    final devData = ModelDeveloperData.fromJson(
        jsonDecode(jsonDataAsString) as Map<String, dynamic>);
    return devData;
  }
}
