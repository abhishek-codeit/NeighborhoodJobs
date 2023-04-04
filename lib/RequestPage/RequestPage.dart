// ignore: file_names

import 'package:flutter/material.dart';
//import 'package:request_page/Requestlist.dart';
import 'package:sdg_gdsc/Confirmation/confimation.dart';
import '../RequestList/Requestlist.dart';

class RequestPage extends StatelessWidget {
  final Reques Request;

  const RequestPage({
    Key? key,
    // ignore: non_constant_identifier_names
    required this.Request,
    required Reques request,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Request.requestName,
        ),
      ),
      body: Center(
        child: Column(children: <Widget>[
          const SizedBox(height: 16),
          const Text(
            'The documents retrived from the database',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            Request.requestName,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.4,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.lightGreenAccent,
            ),
            child: MaterialButton(
              onPressed: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Confirmation(),
                  ),
                );
              },
              child: const Text("Accept", textAlign: TextAlign.center),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.4,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.lightGreenAccent,
            ),
            child: MaterialButton(
              onPressed: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RequestList(),
                  ),
                );
              },
              child: const Text("Decline", textAlign: TextAlign.center),
            ),
          ),
        ]),
      ),
    );
  }
}
