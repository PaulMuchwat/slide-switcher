import 'package:flutter/material.dart';
import 'package:slide_switcher/slide_switcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slide Switcher',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white10.withOpacity(0.27),
      ),
      home: const MyHomePage(title: 'Slide Switcher'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int switcherIndex1 = 0;
  int switcherIndex2 = 0;
  int switcherIndex3 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: switcherIndex1 == 0
          ? Colors.white10.withOpacity(0.27)
          : Colors.white10.withOpacity(0.2),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SlideSwitcher(
              isAllContainerTap: true,
              containerHeight: 30,
              containerWight: 60,
              onSelect: (int index) => setState(() => switcherIndex1 = index),
              indents: 5,
              containerColor:
                  switcherIndex1 == 0 ? Colors.grey : Colors.indigo.shade300,
              children: [
                Container(),
                Container(),
              ],
            ),
            const SizedBox(height: 20),
            SlideSwitcher(
              containerColor: Colors.cyan,
              onSelect: (int index) => setState(() => switcherIndex2 = index),
              containerHeight: 40,
              containerWight: 350,
              children: [
                Text(
                  'First',
                  style: TextStyle(
                    fontWeight:
                        switcherIndex2 == 0 ? FontWeight.w500 : FontWeight.w400,
                    color: switcherIndex2 == 0 ? Colors.cyan : Colors.white,
                  ),
                ),
                Text(
                  'Second',
                  style: TextStyle(
                    fontWeight:
                        switcherIndex2 == 1 ? FontWeight.w500 : FontWeight.w400,
                    color: switcherIndex2 == 1 ? Colors.cyan : Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SlideSwitcher(
              initialIndex: 2,
              onSelect: (int index) => setState(() => switcherIndex3 = index),
              containerBorderRadius: 0,
              indents: 10,
              containerBorder: Border.all(
                width: 3,
                color: const Color(0xffFFFFE3),
              ),
              containerColor:
                  const Color.fromARGB(255, 214, 226, 144).withOpacity(0.8),
              slidersColors: const [
                Color(0xffFFFFE3),
              ],
              containerHeight: 50,
              containerWight: 350,
              children: const [
                Text(
                  'First',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Second',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Third',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Forth',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
