import 'package:my_portfolio/domain/developer_data/model_developer_data.dart';

abstract class DeveloperDataDao {
  Future<BasicDetails> getDeveloperDetails();
  Future<List<PreviousJobDetails>> getPreviousJobDetails();
  Future<List<AppGallery>> getProjectsDetails();
}
