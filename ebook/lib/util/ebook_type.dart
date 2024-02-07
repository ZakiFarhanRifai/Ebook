// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class EbookType extends StatelessWidget {
  final String ebookType;
  final bool isSelected;
  final VoidCallback onTap;

  EbookType({
    required this.ebookType,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Text(
          ebookType,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.orange : Colors.white,
          ),
        ),
      ),
    );
  }
}
