// ignore: file_names
import 'package:flutter/material.dart';
import 'package:sdg_gdsc/RequestList/Requestlist.dart';

class Employer extends StatefulWidget {
  const Employer({Key? key}) : super(key: key);

  @override
  State<Employer> createState() => _EmployerState();
}

class _EmployerState extends State<Employer> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Employer Details")),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextField(
                  decoration: InputDecoration(
                      labelText: "Job:",
                      filled: true,
                      fillColor: const Color.fromARGB(255, 160, 209, 229),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      )),
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: "Number of Employees needed:",
                      filled: true,
                      fillColor: Color.fromARGB(255, 160, 209, 229),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      )),
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: "Skills/Qualifications needed:",
                      filled: true,
                      fillColor: Color.fromARGB(255, 160, 209, 229),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      )),
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: "Wages Offered:",
                      filled: true,
                      fillColor: Color.fromARGB(255, 160, 209, 229),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      )),
                ),
                ElevatedButton(onPressed: () {Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RequestList(),
                      ),
                    );}, child: const Text("Post"))
              ]),
        ),
      ),
    );
  }
}