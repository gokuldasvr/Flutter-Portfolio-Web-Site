part of 'home_bloc.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    @required BasicDetails basicDetails,
    @required List<PreviousJobDetails> previousJobDetails,
    @required List<AppGallery> applicationsList,
  }) = _HomeState;
  factory HomeState.initial() => HomeState(
        basicDetails: BasicDetails(
          name: '',
          address: '',
          designation: '',
          tools: '',
          mailID: '',
          contactNo: '',
          image: '',
        ),
        previousJobDetails: [],
        applicationsList: [],
      );
}
