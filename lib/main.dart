import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './state/profiles_state.dart';

import './views/profiles_view.dart';

import './utils/base.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ViewManagerWidget());
  }
}

class ViewManagerWidget extends StatefulWidget {
  const ViewManagerWidget({super.key});

  @override
  State<StatefulWidget> createState() => _ViewManagerState();
}

class _ViewManagerState extends State<ViewManagerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: getColorFromHexa('2d3a43'),
        body: ChangeNotifierProvider(
          create: (context) => ProfilesState(),
          child: const ProfilesView(),
        ));
  }
}
