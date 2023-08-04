import 'package:flutter/material.dart';

import './ui/theme/theme_configuration.dart';
import './pages/task_page.dart';
import './bloc/exported_blocs.dart';

void main() => runApp(const MyApp());

final class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TaskBloc(),
      child: MaterialApp(
        title: 'Task Flow',
        theme: ThemeConfiguration.appTheme,
        home: const TaskPage(),
      ),
    );
  }
}
