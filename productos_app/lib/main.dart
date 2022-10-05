import 'package:flutter/material.dart';
import 'package:productos_app/src/services/services.dart';
import 'package:provider/provider.dart';

import 'src/screens/screen.dart';

void main() => runApp(const AppState());

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthService(),),
        ChangeNotifierProvider(create: (_) => ProductsService(),),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Productos App',
      initialRoute: 'checking',
      routes: {
        'login': (_) => LoginScreen(),
        'register': (_) => const RegisterScreen(),
        'home': (_) => HomeScreen(),
        'product': (_) => const ProductScreen(),
        'checking': (_) => const CheckAuthScreen(),
      },
      theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: Colors.grey[300],
          appBarTheme: AppBarTheme(elevation: 0, color: Colors.orange),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: Colors.orange, elevation: 0)),
    );
  }
}
