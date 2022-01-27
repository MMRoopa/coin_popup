import 'package:flutter/material.dart';

class PromoCard extends StatefulWidget {
  const PromoCard({Key? key}) : super(key: key);

  @override
  _PromoCardState createState() => _PromoCardState();
}

class _PromoCardState extends State<PromoCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Promocard')),
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(color: Color(0xFFFFEDF5)),
        height: MediaQuery.of(context).size.height * 0.35,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset(
                "assets/group_6075.png",
                width: 60.0,
                height: 80.0,
                alignment: Alignment.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
