part of 'home_cubit.dart';

class HomeState extends Equatable {
  const HomeState({
    this.yourName,
  });

  final String? yourName;

  @override
  List<Object?> get props => [yourName];

  HomeState copyWith({
    String? yourName,
    bool clearText = false,
  }) {
    return HomeState(
      yourName: clearText ? null : yourName ?? this.yourName,
    );
  }
}
