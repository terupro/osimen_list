import 'package:flutter/material.dart';

class LinkWidget extends StatelessWidget {
  const LinkWidget({
    Key? key,
    required this.icon,
    required this.label,
    required this.color,
    this.press,
  }) : super(key: key);

  final IconData icon;
  final String label;
  final Color color;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: ListTile(
        tileColor: color,
        leading: Icon(
          icon,
          size: 35,
          color: Colors.white,
        ),
        title: Text(
          label,
          style: const TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        trailing: Icon(
          Icons.launch_outlined,
          color: Colors.white,
        ),
      ),
    );
  }
}
