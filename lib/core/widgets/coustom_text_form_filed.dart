import 'package:flutter/material.dart';

class CoustomTextFormFiled extends StatelessWidget {
  final String lapelText;
  final String hintText;
  final TextEditingController controller;
  const CoustomTextFormFiled({
    super.key,
    required this.lapelText,
    required this.hintText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(lapelText, style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 5.0),

          TextFormField(
            controller: controller,
            decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(12),
              ),
              filled: true,
              fillColor: Color(0xffF3F3F5),
            ),
          ),
        ],
      ),
    );
  }
}
