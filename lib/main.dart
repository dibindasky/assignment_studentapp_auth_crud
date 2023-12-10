import 'package:assignment_wandoor_kayla/application/business_logic/auth/auth_bloc.dart';
import 'package:assignment_wandoor_kayla/application/business_logic/student/student_bloc.dart';
import 'package:assignment_wandoor_kayla/application/presentation/routes/route_generator.dart';
import 'package:assignment_wandoor_kayla/application/presentation/routes/routes.dart';
import 'package:assignment_wandoor_kayla/data/services/auth/auth.dart';
import 'package:assignment_wandoor_kayla/data/services/student/student.dart';
import 'package:assignment_wandoor_kayla/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const AppRoot());
}

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => AuthBloc(AuthService())),
        BlocProvider(create: (ctx) => StudentBloc(StudentService()))
      ],
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
