// ignore: file_names
import 'package:flutter/material.dart';
//import 'package:job_list/joblist.dart';
import 'package:sdg_gdsc/Confirmation/confimation.dart';
import '../JobList/joblist.dart';

class JobPage extends StatelessWidget {
  final Job job;

  const JobPage({
    Key? key,
    required this.job,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          job.jobName,
        ),
      ),
      body: Center(
        child: Column(children: <Widget>[
          Image.network(
            job.jobImage,
            height: 400,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 16),
          Text(
            job.jobName,
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text('the description of the job'),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Confirmation(),
                  ),
                );
              },
              child: const Text("Apply"))
        ]),
      ),
    );
  }
}
