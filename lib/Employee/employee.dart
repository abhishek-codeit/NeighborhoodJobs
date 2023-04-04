// ignore: file_names
import 'package:flutter/material.dart';
import 'package:sdg_gdsc/JobList/joblist.dart';

class Employee extends StatefulWidget {
  const Employee({Key? key}) : super(key: key);

  @override
  State<Employee> createState() => _EmployerState();
}

class _EmployerState extends State<Employee> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Employee Details")),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextField(
                  decoration: InputDecoration(
                      labelText: "Name:",
                      filled: true,
                      fillColor: const Color.fromARGB(255, 160, 209, 229),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      )),
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: "Qualifications/Skills:",
                      filled: true,
                      fillColor: Color.fromARGB(255, 160, 209, 229),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      )),
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: "Select Domain/Job:",
                      filled: true,
                      fillColor: Color.fromARGB(255, 160, 209, 229),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      )),
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: "Upload documents/proof:",
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
                        builder: (context) => JobList(),
                      ),
                    );}, child: const Text("Apply"))
              ]),
        ),
      ),
    );
  }
}