import 'package:flutter/material.dart';

class CoustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  const CoustomButton({
    super.key,
    required this.onPressed,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.deepOrange,
      ),
      width: double.infinity,
      height: 55.0,
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
