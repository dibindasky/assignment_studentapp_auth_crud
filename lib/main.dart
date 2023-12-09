import 'package:assignment_wandoor_kayla/application/business_logic/auth/auth_bloc.dart';
import 'package:assignment_wandoor_kayla/application/presentation/routes/route_generator.dart';
import 'package:assignment_wandoor_kayla/application/presentation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const AppRoot());
}

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (ctx) => AuthBloc())],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        onGenerateRoute: RouteGenerator().onGenerateRoute,
        initialRoute: Routes.initial,
      ),
    );
  }
}
