import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components Temp'),
      ),
      body: ListView(
        children: const [
          ListTile(
            title: Text('Testing list Tile'),
            subtitle: Text('Cool Subtilte'),
          ),
          Divider(),
          ListTile(
            title: Text('Testing list Tile 1 '),
            dense: true,
          ),
          Divider(),
          ListTile(
            title: Text('Testing list Tile 2'),
            enabled: false,
          ),
          Divider(),
          ListTile(
            title: Text('Testing list Tile 3'),
            selected: true,
            selectedTileColor: Colors.deepPurpleAccent,
          )
        ],
      ),
    );
  }
}
