import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:my_portfolio/domain/core/app_widget.dart';
import 'package:my_portfolio/domain/core/injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Environment.prod);
  runApp(MyPortfolioWebApp());
}
