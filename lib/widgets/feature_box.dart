import 'package:flutter/material.dart';

class FeatureBox extends StatelessWidget {
  final Color color;
  final String title;
  final String desc;

  const FeatureBox({
    Key? key,
    required this.color,
    required this.title,
    required this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20).copyWith(
        top: 10,
        bottom: 1,
      ),
      padding: const EdgeInsets.fromLTRB(17, 10, 8, 15),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
        ),
        borderRadius: BorderRadius.circular(20),
        color: color,
        // Use the provided color for the container's background
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 30,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            desc,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
