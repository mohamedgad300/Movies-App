import 'package:flutter/material.dart';

class SearchTab extends StatelessWidget {
  const SearchTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("hello search screen ", style: Theme.of(context).textTheme.bodyLarge,),
      ),
    );
  }
}