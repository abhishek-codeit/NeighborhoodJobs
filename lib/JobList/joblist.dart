import 'package:flutter/material.dart';
import 'package:sdg_gdsc/JobPage/JobPage.dart';
//import 'package:job_list/JobPage.dart';

// import 'dart:ui' as ui;

class Job {
  final String jobName;
  final String jobDesc;
  final String jobNumber;
  final String jobImage;

  const Job(
      {required this.jobName,
      required this.jobDesc,
      required this.jobNumber,
      required this.jobImage});
}

// ignore: must_be_immutable
class JobList extends StatelessWidget {
  JobList({super.key});
  final List<String> jobNames = [
    "This is a List1",
    "This is a List2",
    "This is a List3",
    "This is a List2",
    "This is a List3",
    "This is a List2",
    "This is a List3"
  ];

  List<Job> jobs = [
    const Job(
        jobDesc: "this is description or job 1",
        jobName: "job name 1",
        jobNumber: '1',
        jobImage:
            'https://www.woolha.com/media/2020/03/flutter-circleavatar-minradius-maxradius.jpg'),
    const Job(
        jobDesc: "this is description or job 2",
        jobName: "job name 2",
        jobNumber: '2',
        jobImage:
            'https://i0.wp.com/www.flutterbeads.com/wp-content/uploads/2021/11/o-creating-circular-image-in-flutter.png?w=950&ssl=1'),
    const Job(
        jobDesc: "this is description or job 3",
        jobName: "job name 3",
        jobNumber: '3',
        jobImage:
            'https://i0.wp.com/www.flutterbeads.com/wp-content/uploads/2022/02/o-circle-icon-button-1.webp?w=950&ssl=1'),
    const Job(
        jobDesc: "this is description or job 4",
        jobName: "job name 4",
        jobNumber: '4',
        jobImage:
            'https://i0.wp.com/www.flutterbeads.com/wp-content/uploads/2021/11/o-creating-circular-image-in-flutter.png?w=950&ssl=1'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Job List"),
        ),
        body: Center(
            child: ListView.builder(
                itemCount: jobs.length,
                itemBuilder: (context, index) {
                  final job = jobs[index];
                  return Card(
                      child: ListTile(
                    leading: CircleAvatar(
                      radius: 28,
                      backgroundImage: NetworkImage(
                          // 'https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'
                          job.jobImage),
                    ),
                    title: Text(job.jobName),
                    subtitle: Text(job.jobDesc),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => JobPage(job: job),
                      ));
                    },
                  ));
                })));
  }
}
