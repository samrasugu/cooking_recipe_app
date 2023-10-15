import 'package:flutter/material.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search_rounded),
        hintText: 'Search for a recipe',
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.w100,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide.none,
        ),
        fillColor: Colors.grey.withOpacity(.1),
        filled: true,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 18.0,
          vertical: 20.0,
        ),
      ),
    );
  }
}
