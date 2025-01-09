import 'package:flutter/material.dart';
import 'package:prime_shoe_app/features/prime_shoe/presentaion/screens/app_widget.dart';

import 'core/locator.dart';

void main() {
  DependencyInjection().setupLocator();
  runApp(AppWidget());
}
