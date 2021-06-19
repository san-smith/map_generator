import 'package:flutter/material.dart';
import 'package:map_generator/internal/module/app_module.dart';

import 'intents.dart';

final _appState = AppModule.appState();

final globalActions = {
  NewIntent: CallbackAction(onInvoke: (e) => _appState.createNewProject()),
};
