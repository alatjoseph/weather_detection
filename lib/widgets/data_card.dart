import 'package:flutter/material.dart';

class DataCard extends StatelessWidget {
  const DataCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Colors.indigoAccent,
                Colors.indigo,
              ],
            ),
            borderRadius: BorderRadius.circular(30)),
        height: 500,
        width: double.infinity,
      ),
    );
  }
}
