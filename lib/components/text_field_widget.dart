import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final String label;
  final String text;
  final ValueChanged<String> onChanged;
  final int maxLines;
  const MyTextField(
      {required this.label,
      required this.text,
      required this.onChanged,
      this.maxLines = 1,
      super.key});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  late final TextEditingController controller;
  @override
  void initState() {
    super.initState();
    controller = TextEditingController(text: widget.text);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        const SizedBox(
          height: 6,
        ),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          ),
          controller: controller,
          maxLines: widget.maxLines,
        )
      ],
    );
  }
}
