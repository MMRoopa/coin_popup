import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'main.dart';

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
      body: const PromoWidget(playHome: DialogPopUp()),
    );
  }
}

class PromoWidget extends StatefulWidget {
  final DialogPopUp playHome;

  const PromoWidget({
    Key? key,
    required this.playHome,
  }) : super(key: key);

  @override
  State<PromoWidget> createState() => _PromoWidgetState();
}

class _PromoWidgetState extends State<PromoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(color: Color(0xFFFFEDF5)),
      height: MediaQuery.of(context).size.height * 0.35,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                "assets/group_6075.png",
                width: MediaQuery.of(context).size.width,
                height:
                    ((MediaQuery.of(context).size.width * 720) / 1270) * 0.55,
                alignment: Alignment.center,
              ),
            ),
          ),
          const AutoSizeText.rich(
            TextSpan(
              children: <TextSpan>[
                TextSpan(text: 'Online '),
                TextSpan(
                    text: 'Parent Teachers ',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'Meeting'),
              ],
            ),
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Poppins',
            ),
            maxLines: 1,
            minFontSize: 12,
          ),
          const AutoSizeText(
            'Caption related to the above subject could come here',
            style: TextStyle(
              color: Colors.black,
              fontSize: 12.0,
              fontFamily: 'Poppins',
            ),
            textAlign: TextAlign.left,
            maxLines: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
            child: GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => widget.playHome,
                );
                //  widget.playHome;
              },
              child: Container(
                alignment: Alignment.center,
                height: 36.0,
                width: 100.0,
                child: const AutoSizeText(
                  'EXPLORE',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.white,
                  ),
                  maxLines: 1,
                ),
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(60.0)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
