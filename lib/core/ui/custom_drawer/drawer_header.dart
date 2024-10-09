import 'package:flutter/material.dart';

class CustomDrawerHeader extends StatefulWidget {
  const CustomDrawerHeader({
    Key? key,
    this.name,
  }) : super(key: key);

  final String? name;

  @override
  State<CustomDrawerHeader> createState() => _CustomDrawerHeaderState();
}

class _CustomDrawerHeaderState extends State<CustomDrawerHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 250,
            child: Image.asset(
              'images/logo/MeuDoceCusto.png',
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
