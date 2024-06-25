import 'package:flutter/material.dart';
// import 'package:projectuas/screen/view/signin_dan_signup/sign_in.dart';
import 'package:projectuas/screen/view/signin_dan_signup/sign_up.dart';
import 'package:projectuas/screen/view_model/view_model_signin.dart';
import 'package:projectuas/screen/view_model/view_model_signup.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SignInViewModel()),
        ChangeNotifierProvider(create: (_) => SignUpViewModel()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          useMaterial3: false,
          brightness: Brightness.light,
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFF293066),
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: const SignUp(),
      ),
    );
  }
}
