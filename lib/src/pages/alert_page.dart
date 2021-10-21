import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showAlert(context),
          child: Text('Alert Button'),
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)))),
        ),
      ),
    );
  }

  _showAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Text('This is an Alert'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Content of the Dialog'),
            FlutterLogo(
              size: 100,
            )
          ],
        ),
        actions: [
          ElevatedButton(
              onPressed: () => Navigator.of(context).pop(), child: Text('OK')),
          ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Cancel'))
        ],
      ),
    );
  }
}
