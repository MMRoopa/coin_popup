import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => const DialogPopUp(),
              );
            },
            child: const Text('Coin Pop up'),
          ),
        ],
      ),
    );
  }
}

class DialogPopUp extends StatelessWidget {
  const DialogPopUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: const Color(0xFFFFFFFF),
      alignment: Alignment.bottomCenter,
      insetPadding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(35.0)),
      ),
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: AutoSizeText(
                "My Coins",
                style: TextStyle(
                  color: Color(0xFF2DAD9D),
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                ),
                textAlign: TextAlign.center,
              ),
            ),
            // const SizedBox(
            //   width: 40.0,
            // ),
            // IconButton(
            //     icon: const Icon(Icons.close),
            //     alignment: Alignment.topRight,
            //     onPressed: () {
            //       Navigator.of(context).pop();
            //     }),
            Container(
              margin: const EdgeInsets.all(2.0),
              padding: const EdgeInsets.fromLTRB(28.0, 30.0, 40.0, 10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Image.asset(
                        "assets/group_70577.png",
                        width: 32.0,
                        height: 32.0,
                      ),
                      const SizedBox(
                        width: 17.0,
                      ),
                      const AutoSizeText(
                        'Flxegem',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                        textAlign: TextAlign.left,
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 45.0),
                    child: AutoSizeText(
                      'This contains all of your green and blue gems',
                      style: TextStyle(
                        color: Color(0xFF707070),
                        fontSize: 16.0,
                        fontFamily: 'Poppins',
                      ),
                      textAlign: TextAlign.left,
                      maxLines: 2,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(23.0, 46.0, 22.0, 48.0),
              padding: const EdgeInsets.fromLTRB(13.0, 25.0, 13.0, 25.0),
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                color: Color(0xFFFFDC00),
                borderRadius: BorderRadius.all(
                  Radius.circular(15.0),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const <Widget>[
                  Text(
                    'The fun way to spend your earnings is coming soon!',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Till then try earn as many as possible',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                      fontFamily: 'Poppins',
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
