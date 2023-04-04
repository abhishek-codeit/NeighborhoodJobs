// import 'package:flutter/material.dart';
// import 'package:request_page/RequestPage.dart';

// import '../RequestPage/RequestPage.dart';

// // import 'dart:ui' as ui;

// class Reques {
//   final String RequestName;
//   final String RequestDesc;
//   final String RequestNumber;

//   const Reques({
//     required this.RequestName,
//     required this.RequestDesc,
//     required this.RequestNumber,
//   });
// }

// class RequestList extends StatelessWidget {
//   RequestList({super.key});

//   List<Reques> Requests = [
//     const Reques(
//         RequestDesc: "this is description or request 1",
//         RequestName: "request 1",
//         RequestNumber: '1'),
//     const Reques(
//       RequestDesc: "this is description or Request 2",
//       RequestName: "request 2",
//       RequestNumber: '2',
//     ),
//     const Reques(
//       RequestDesc: "this is description or Request 3",
//       RequestName: "request 3",
//       RequestNumber: '3',
//     ),
//     const Reques(
//       RequestDesc: "this is description or Request 4",
//       RequestName: "request 4",
//       RequestNumber: '4',
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text("Request List"),
//         ),
//         body: Center(
//             child: ListView.builder(
//                 itemCount: Requests.length,
//                 itemBuilder: (context, index) {
//                   final Request = Requests[index];
//                   return Card(
//                       child: ListTile(
//                     title: Text(Request.RequestName),
//                     subtitle: Text(Request.RequestDesc),
//                     trailing: const Icon(Icons.arrow_forward),
//                     onTap: () {
//                       Navigator.of(context).push(MaterialPageRoute(
//                         builder: (context) => RequestPage(Request: Request, request: null,),
//                       ));
//                     },
//                   ));
//                 })));
//   }
// }
import 'package:flutter/material.dart';

class Reques {
  final String requestName;
  final String requestDesc;
  final String requestNumber;

  const Reques({
    required this.requestName,
    required this.requestDesc,
    required this.requestNumber,
  });
}

class RequestPage extends StatelessWidget {
  final Reques request;

  const RequestPage({Key? key, required this.request}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(request.requestName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              request.requestDesc,
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 16),
            Text(
              'Request number: ${request.requestNumber}',
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class RequestList extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  RequestList({Key? key});

  List<Reques> requests = [
    const Reques(
      requestDesc: "This is description for Request 1",
      requestName: "Request 1",
      requestNumber: '1',
    ),
    const Reques(
      requestDesc: "This is description for Request 2",
      requestName: "Request 2",
      requestNumber: '2',
    ),
    const Reques(
      requestDesc: "This is description for Request 3",
      requestName: "Request 3",
      requestNumber: '3',
    ),
    const Reques(
      requestDesc: "This is description for Request 4",
      requestName: "Request 4",
      requestNumber: '4',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Request List"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: requests.length,
          itemBuilder: (context, index) {
            final request = requests[index];
            return Card(
              child: ListTile(
                title: Text(request.requestName),
                subtitle: Text(request.requestDesc),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => RequestPage(request: request),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
