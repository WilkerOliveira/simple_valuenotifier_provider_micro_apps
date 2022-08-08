abstract class HelpState {}

class InitialHelpState extends HelpState {}

class SuccessHelpState extends HelpState {
  SuccessHelpState(this.value);

  final String value;
}

class ErrorHelpState extends HelpState {}
