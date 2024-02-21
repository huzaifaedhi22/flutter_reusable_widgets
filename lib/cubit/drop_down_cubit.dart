import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'drop_down_state.dart';

class DropDownCubit extends Cubit<DropDownState> {
  DropDownCubit()
      : super(DropDownState(selectedValue: 'Select'));

  void storeSelectedValue(String selectedValue) =>
      emit(DropDownState(selectedValue: selectedValue));

}
