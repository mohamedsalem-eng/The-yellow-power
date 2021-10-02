import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_yellow_power/Providers/homescreen_provider.dart';

class AuthWidgetBuilder extends StatelessWidget {
  const AuthWidgetBuilder({Key? key, required this.builder}) : super(key: key);
  final Widget Function(BuildContext, ) builder;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider<IndexProvider>(create: (context)=> IndexProvider())
    ],child: builder(context),);
  }
}
