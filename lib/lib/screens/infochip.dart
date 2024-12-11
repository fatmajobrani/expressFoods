import 'package:flutter/material.dart';

class InfoChip extends StatelessWidget {
  final IconData icon;
  final String label;

  const InfoChip({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: Icon(icon, color: Colors.orange, size: 18),
      label: Text(label, style: const TextStyle(fontSize: 12)),
      backgroundColor: Colors.grey[200],
    );
  }
}
