import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
          useMaterial3: true),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _checked = false;

  void _toggleChecked(bool? newValue) {
    setState(() {
      _checked = newValue ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
      Container(
        height: Theme.of(context).textTheme.headlineLarge!.fontSize! * 2.1 + 20,
        margin: const EdgeInsets.all(70),
        child: Align(
          alignment: Alignment.topCenter,
          child: Text("Авторизация",
              style: TextStyle(
                  fontSize:
                      Theme.of(context).textTheme.headlineLarge!.fontSize!,
                  fontWeight: FontWeight.bold)),
        ),
      ),
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 0
                      )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                            color: Colors.grey,
                            width: 0
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                            color: Colors.grey,
                            width: 0
                        )
                    ),
                    hintText: "Логин",
                    hintStyle: TextStyle(color: Colors.grey.withOpacity(0.9)),
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.2)),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                            color: Colors.grey,
                            width: 0
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                            color: Colors.grey,
                            width: 0
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                            color: Colors.grey,
                            width: 0
                        )
                    ),
                    hintText: "Пароль",
                    hintStyle: TextStyle(color: Colors.grey.withOpacity(0.9)),
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.2)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Checkbox(
                    value: _checked,
                    onChanged: _toggleChecked,
                    side: const BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  Text("Запомнить меня",
                      style: TextStyle(
                        color: Colors.grey.withOpacity(0.9),
                          fontSize:
                              Theme.of(context).textTheme.bodyLarge!.fontSize!))
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(11, 107, 254, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  onPressed: () {},
                  child: const Text(
                    "Войти",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
              width: double.infinity,
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      side: const BorderSide(color: Colors.blue, width: 1)),
                  onPressed: () {},
                  child: const Text(
                    "Регистрация",
                    style: TextStyle(color: Colors.blue),
                  )),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
              width: double.infinity,
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Восстановить пароль",
                    style: TextStyle(
                        color: Colors.grey.withOpacity(0.8),
                        fontWeight: FontWeight.w700),
                  )),
            )
          ],
        ),
      )
    ] // This trailing comma makes auto-formatting nicer for build methods.,
                )));
  }
}
