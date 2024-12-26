import 'package:flutter/material.dart';

void showSearchInputDialog({
  required BuildContext context,
  required TextEditingController searchController,
  required VoidCallback onPressed
}) async {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Search Location"),
          content: TextField(
            controller: searchController,
            decoration: const InputDecoration(
                hintText: "Search by city, zip"
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              child: const Text("Cancel"),
              onPressed: () => Navigator.pop(context),
            ),
            ElevatedButton(
                onPressed: onPressed,
                child: const Text("OK"),
            )
          ],
        );
      });
}