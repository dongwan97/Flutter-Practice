import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';

class Player {
  String? name;
  Player();
}

void main() {
  var nico = Player();
  nico.name;
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff181818),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                    Text(
                      'Hey, Selena',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 38,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'welcome back',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    )
                  ])
                ],
              ),
              const SizedBox(
                height: 70,
              ),
              Text('Total Balance',
                  style: TextStyle(
                      fontSize: 22, color: Colors.white.withOpacity(0.5))),
              const SizedBox(
                height: 10,
              ),
              const Text('\$5 194 482',
                  style: TextStyle(
                      fontSize: 38,
                      color: Colors.white,
                      fontWeight: FontWeight.w600)),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(
                      text: 'Transfer',
                      bgColor: Color(0xfff1B33B),
                      textColor: Colors.black),
                  Button(
                      text: 'Request',
                      bgColor: Color(0xff1f2123),
                      textColor: Colors.white),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Wallets',
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Container(
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(
                    color: Color(0xff1f2123),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Euro",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                "6.428",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('EUR',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ))
                            ],
                          )
                        ],
                      ),
                      Transform.scale(
                          scale: 1.9,
                          child: Transform.translate(
                            offset: const Offset(3, 15),
                            child: const Icon(Icons.euro_symbol,
                                color: Colors.white, size: 88),
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
