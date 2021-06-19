import 'package:flutter/material.dart';

import 'intents.dart';
import 'keysets.dart';

final globalShortcuts = <LogicalKeySet, Intent>{
  newKeySet: NewIntent(),
};
