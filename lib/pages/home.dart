import 'package:first_flutter_app/components/homePageComp.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String titleName = 'Hello World';

  bool isChanged = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(Icons.menu),
        title: const Text('HomeScreen'),
        actions: const [
          Icon(Icons.search),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ContainerCustom(
              titleOftheContainer: titleName,
              colorsOftheContainer: const [
                Color.fromARGB(255, 7, 205, 255),
                Color.fromARGB(255, 203, 230, 231)
              ],
            ),
            ContainerCustom(
              titleOftheContainer: "Something to me",
              colorsOftheContainer: const [
                Colors.amber,
                Color.fromARGB(255, 251, 251, 196)
              ],
            ),
            ContainerCustom(
              titleOftheContainer: "Ani Medaber Ivert",
              colorsOftheContainer: const [
                Color.fromARGB(255, 255, 7, 7),
                Color.fromARGB(255, 233, 190, 190)
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 66, 162, 240),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          print(titleName);
          setState(() {
            isChanged = !isChanged;
            titleName = isChanged
                ? titleName = 'Hello Yihun Alemayehu Shibure'
                : titleName = 'Hello Yasub Demissie Wachifo';
          });
        },
      ),
    );
  }
}
