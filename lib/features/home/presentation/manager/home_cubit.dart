import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

part 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit()
      : _yourNameController = TextEditingController(),
        super(const HomeState());

  late final TextEditingController _yourNameController;

  TextEditingController get yourNameController => _yourNameController;

  onChangeInput() {
    emit(state.copyWith(yourName: _yourNameController.text));
  }

  onClearText() {
    if (state.yourName?.isEmpty ?? true) {
      return;
    }
    _yourNameController.clear();
    emit(state.copyWith(clearText: true));
  }

  @override
  Future<void> close() async {
    _yourNameController.dispose();
    super.close();
  }
}
