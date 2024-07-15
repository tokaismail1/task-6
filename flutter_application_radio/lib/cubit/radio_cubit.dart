import 'package:bloc/bloc.dart';

class RadioCubit extends Cubit<int> {
  RadioCubit() : super(-1);

  void selectRadio(int index) {
    emit(index);
  }
}
