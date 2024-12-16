
import 'package:flutter/material.dart';

class ContainerCustom extends StatefulWidget {
  String titleOftheContainer;
  final List<Color> colorsOftheContainer;
  ContainerCustom(
      {super.key,
      required this.titleOftheContainer,
      this.colorsOftheContainer = const [Colors.red, Colors.blue]});

  @override
  State<ContainerCustom> createState() => _ContainerCustomState();
}

class _ContainerCustomState extends State<ContainerCustom> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.titleOftheContainer = 'dfjdfd ';
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 40),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: widget.colorsOftheContainer),
            borderRadius: BorderRadius.circular(10)),
        width: 300,
        height: 100,
        child: Center(
          child: Text(
            widget.titleOftheContainer,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}