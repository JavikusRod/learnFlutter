import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final options = [
    'Testing list',
    'Good Observations',
    'Nice Saves',
    'Collapse God'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components Temp'),
      ),
      body: ListView(children: _createItems()),
    );
  }

  List<Widget> _createItems() => options
      .map((element) => Column(
            children: [
              ListTile(
                title: Text(element + '!'),
                subtitle: Text('Something to say'),
                leading: Icon(Icons.picture_in_picture),
                trailing: Icon(Icons.add_box_outlined),
                onTap: () {},
              ),
              const Divider(),
            ],
          ))
      .toList();
}
