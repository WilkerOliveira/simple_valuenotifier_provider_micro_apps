import 'dart:developer';

import 'package:base_dependencies/main.dart';
import 'package:flutter/material.dart';
import 'package:help_app/app/modules/features/help/domain/usecases/help_usecase.dart';
import 'package:help_app/app/modules/features/help/presentation/controllers/states/help_state.dart';

class HelpController extends ValueNotifier<HelpState> {
  HelpController(this._helpUsecase) : super(InitialHelpState());

  final HelpUsecase _helpUsecase;

  Future<void> changeName() async {
    final Either<Exception, String> result = await _helpUsecase();

    result.fold((Exception error) {
      value = ErrorHelpState();
    }, (String response) {
      value = SuccessHelpState(response);
    });
  }
}
