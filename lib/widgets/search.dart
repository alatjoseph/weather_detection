import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  Search({super.key});
  final TextEditingController textcontoller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.black54, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: TextFormField(
            controller: textcontoller,
            decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.search_rounded,
                  size: 25,
                ),
                prefixIconColor: Colors.white,
                border: InputBorder.none,
                hintText: 'Search your city',
                hintStyle: TextStyle(color: Colors.white)),
            //style:TextStyle(color:Colors.white ),
          ),
        ),
      ),
    );
  }
}
