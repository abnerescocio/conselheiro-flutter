part of 'input_name_bloc.dart';

@immutable
abstract class InputNameState {}

class InitialInputNameState extends InputNameState {}

class ValidInputNameState extends InputNameState {}

class InvalidInputNameState extends InputNameState {
  final ValidateNameResultType result;

  InvalidInputNameState(this.result);
}
