import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Cards'),
        ),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: [_cardType1(), _cardType2()],
        ),
      );

  Card _cardType1() => Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Colors.white,
        elevation: 5.0,
        child: Column(
          children: [
            ListTile(
              title: Text('FirsTile Card'),
              subtitle: Text(
                  'lorem ipsum lorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsum'),
              leading: Icon(
                Icons.photo_album,
                color: Colors.red,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text('Ok'),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Cancel'),
                ),
              ],
            )
          ],
        ),
      );

  Card _cardType2() => Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 5,
        shadowColor: Colors.red,
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            FadeInImage(
              placeholder: AssetImage('assets/jar-loading.gif'),
              image: NetworkImage(
                  //Sometime the url dont work for some urls
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
              height: 400.0,
              fit: BoxFit.cover,
              fadeInDuration: Duration(milliseconds: 200),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text('Some Name to the Image'),
            )
          ],
        ),
      );
}
