import 'package:flutter/material.dart';

void main() {
  runApp(const BasketballApp());
}

class BasketballApp extends StatefulWidget {
  const BasketballApp({super.key});

  @override
  State<BasketballApp> createState() => _BasketballAppState();
}

class _BasketballAppState extends State<BasketballApp> {
  int teamApoints = 0;
  int teamBpoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Basketball App',
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.orange,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        "Team A",
                        style: TextStyle(color: Colors.black, fontSize: 40),
                      ),
                      Text(
                        "$teamApoints",
                        style:
                            const TextStyle(color: Colors.black, fontSize: 100),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamApoints += 1;
                            });
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.all(Colors.orange),
                            minimumSize:
                                WidgetStateProperty.all(const Size(130, 40)),
                          ),
                          child: const Text(
                            "1 Point",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          )),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamApoints += 2;
                            });
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.all(Colors.orange),
                            minimumSize:
                                WidgetStateProperty.all(const Size(130, 40)),
                          ),
                          child: const Text(
                            "2 Points",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          )),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamApoints += 3;
                            });
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.all(Colors.orange),
                            minimumSize:
                                WidgetStateProperty.all(const Size(130, 40)),
                          ),
                          child: const Text(
                            "3 Points",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 450,
                    child: VerticalDivider(
                      color: Colors.black,
                      thickness: 1,
                      width: 20,
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        "Team B",
                        style: TextStyle(color: Colors.black, fontSize: 40),
                      ),
                      Text(
                        "$teamBpoints",
                        style:
                            const TextStyle(color: Colors.black, fontSize: 100),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamBpoints += 1;
                            });
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.all(Colors.orange),
                            minimumSize:
                                WidgetStateProperty.all(const Size(130, 40)),
                          ),
                          child: const Text(
                            "1 Point",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          )),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamBpoints += 2;
                            });
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.all(Colors.orange),
                            minimumSize:
                                WidgetStateProperty.all(const Size(130, 40)),
                          ),
                          child: const Text(
                            "2 Points",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          )),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamBpoints += 3;
                            });
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.all(Colors.orange),
                            minimumSize:
                                WidgetStateProperty.all(const Size(130, 40)),
                          ),
                          child: const Text(
                            "3 Points",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          )),
                    ],
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    teamApoints = 0;
                    teamBpoints = 0;
                  });
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.orange),
                  minimumSize: WidgetStateProperty.all(const Size(130, 43)),
                ),
                child: const Text(
                  'Reset Game',
                  style: TextStyle(color: Colors.black, fontSize: 17),
                ),
              ),
            ],
          ),
        ));
  }
}
