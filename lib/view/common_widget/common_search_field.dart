import 'package:flutter/material.dart';

class CommonSearchField extends StatelessWidget {
  const CommonSearchField({
    super.key,
    // required this.searchController,
    // required this.onTap,
    required this.onChanged,
  });

  // final TextEditingController searchController;
  // final VoidCallback onTap;
  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      //controller: searchController,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        labelText: "Search",
        // suffixIcon: const InkWell(
        //   // onTap: onTap,
        //   child: Icon(Icons.search),
        // ),
      ),
    );
  }
}
