import 'package:doctor/core/di/dependency_injection.dart';
import 'package:doctor/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:doctor/core/routing/app_router.dart';

void main() {
  setupGetIt();
  runApp(DocApp(appRouter: AppRouter()));
}
