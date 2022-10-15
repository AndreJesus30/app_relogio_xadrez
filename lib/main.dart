import 'package:app_relogio_xadrez/store/timer-chess-store.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'view/homePage.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
  ]).then(
    (value) => runApp(const MyApp()),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<TimerChess>(
          create: (_) => TimerChess(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}


/*
 SchedulerBinding.instance.addPostFrameCallback((_) => MultiProvider(
        providers: [
          Provider<TimerChess>(
            create: (_) => TimerChess(),
          ),
        ],
      ));
*/