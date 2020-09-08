part of 'home_bloc.dart';

@freezed
abstract class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getDeveloperDetails() = GetDeveloperDetails;
  const factory HomeEvent.getPreviousJobDetails() = GetPreviousJobDetails;
  const factory HomeEvent.getAppGalleryDetails() = GetAppGalleryDetails;
}
