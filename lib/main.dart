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
                builder: (context) => AlertDialog(
                  alignment: Alignment.bottomCenter,
                  insetPadding: const EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
                  contentPadding: const EdgeInsets.fromLTRB(2.0, 2.0, 2.0, 2.0),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40.0))),
                  title: const Text(
                    "My Coins",
                    style: TextStyle(
                      color: Color(0xFF2DAD9D),
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                    ),
                    textAlign: TextAlign.center,
                  ),
                  actions: [
                    IconButton(
                        icon: const Icon(Icons.close),
                        //splashColor: Colors.amber,
                        onPressed: () {
                          Navigator.of(context).pop();
                        }),
                  ],
                  content: Container(
                    padding: const EdgeInsets.fromLTRB(30, 0.0, 30, 0.0),
                    child: Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/group_70577.png",
                                    width: 50,
                                    height: 50,
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  const Text(
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
                                padding: EdgeInsets.only(left: 60.0),
                                child: Text(
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
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/group_70577.png",
                                    width: 50,
                                    height: 50,
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  const Text(
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
                                padding: EdgeInsets.only(left: 60.0),
                                child: Text(
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
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 10.0),
                            margin: const EdgeInsets.fromLTRB(
                                10.0, 30.0, 10.0, 0.0),
                            decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Color(0xFFFFDC00),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
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
                  ),
                ),
              );
            },
            child: const Text('Coin Pop up'),
          ),
        ],
      ),
    );
  }
}
