part of 'input_name_bloc.dart';

@immutable
abstract class InputNameEvent {}

class ValidateInputNameEvent extends InputNameEvent {
  final String? input;

  ValidateInputNameEvent(this.input);
}
