import 'package:conselheiro/presentation/usecases/validate_name_result_type.dart';
import 'package:conselheiro/presentation/usecases/validate_name_usecase.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'input_name_event.dart';
part 'input_name_state.dart';

class InputNameBloc extends Bloc<InputNameEvent, InputNameState> {
  final ValidateNameUseCase _validateNameUseCase;

  InputNameBloc(
    this._validateNameUseCase,
  ) : super(InitialInputNameState()) {
    on<ValidateInputNameEvent>((event, emit) async {
      final result = _validateNameUseCase.execute(event.input);
      if (result == ValidateNameResultType.valid) {
        emit(ValidInputNameState());
      } else {
        emit(InvalidInputNameState(result));
      }
    });
  }
}
