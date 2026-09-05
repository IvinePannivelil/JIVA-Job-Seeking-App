import 'package:flutter/material.dart';
import 'package:flutter_job_seeking/job.dart'; // Import Job model

class AddJobScreen extends StatefulWidget {
  @override
  _AddJobScreenState createState() => _AddJobScreenState();
}

class _AddJobScreenState extends State<AddJobScreen> {
  TextEditingController _companyNameController = TextEditingController();
  TextEditingController _companyImageController = TextEditingController();
  TextEditingController _jobTitleController = TextEditingController();
  TextEditingController _locationController = TextEditingController();
  TextEditingController _locationShortController = TextEditingController();
  TextEditingController _salaryController = TextEditingController();
  TextEditingController _jobTypeController = TextEditingController();
  TextEditingController _requirementsController = TextEditingController();
  TextEditingController _aboutController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Job"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _companyNameController,
              decoration: InputDecoration(labelText: 'Company Name'),
            ),
            TextField(
              controller: _companyImageController,
              decoration: InputDecoration(labelText: 'Company Image URL'),
            ),
            TextField(
              controller: _jobTitleController,
              decoration: InputDecoration(labelText: 'Job Title'),
            ),
            TextField(
              controller: _locationController,
              decoration: InputDecoration(labelText: 'Location'),
            ),
            TextField(
              controller: _locationShortController,
              decoration: InputDecoration(labelText: 'Location Short'),
            ),
            TextField(
              controller: _salaryController,
              decoration: InputDecoration(labelText: 'Salary'),
            ),
            TextField(
              controller: _jobTypeController,
              decoration: InputDecoration(labelText: 'Job Type'),
            ),
            TextField(
              controller: _requirementsController,
              decoration: InputDecoration(labelText: 'Requirements'),
            ),
            TextField(
              controller: _aboutController,
              decoration: InputDecoration(labelText: 'About'),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // Create a new Job object based on user input
                Job newJob = Job(
                  companyName: _companyNameController.text,
                  companyImage: _companyImageController.text,
                  jobTitle: _jobTitleController.text,
                  location: _locationController.text,
                  locationShort: _locationShortController.text,
                  salary: _salaryController.text,
                  jobType: _jobTypeController.text,
                  requirements: _requirementsController.text.split(','),
                  about: _aboutController.text,
                  timeStamp: DateTime.now().toString(),
                );

                // Add the new job to the recentJobs list
                recentJobs.add(newJob);

                // Navigate back to the previous screen (HomeScreen)
                Navigator.pop(context);
              },
              child: Text('Add Job'),
            ),
          ],
        ),
      ),
    );
  }
}
