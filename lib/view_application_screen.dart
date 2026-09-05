import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_job_seeking/themes/app_color.dart';

// ViewApplicationScreen
class ViewApplicationScreen extends StatefulWidget {
  final String jobTitle; // Add this parameter

  const ViewApplicationScreen({Key? key, required this.jobTitle})
      : super(key: key);

  @override
  _ViewApplicationScreenState createState() => _ViewApplicationScreenState();
}

class _ViewApplicationScreenState extends State<ViewApplicationScreen> {
  String? _name;
  String? _dob;
  String? _experience;
  String? _qualification;

  @override
  void initState() {
    super.initState();
    _loadApplicationData();
  }

  Future<void> _loadApplicationData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _name = prefs.getString('${widget.jobTitle}_name');
      _dob = prefs.getString('${widget.jobTitle}_dob');
      _experience = prefs.getString('${widget.jobTitle}_experience');
      _qualification = prefs.getString('${widget.jobTitle}_qualification');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("View Application"),
        backgroundColor: AppColor.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name: ${_name ?? 'N/A'}",
                style: Theme.of(context).textTheme.bodyLarge),
            const SizedBox(height: 8),
            Text("Date of Birth: ${_dob ?? 'N/A'}",
                style: Theme.of(context).textTheme.bodyLarge),
            const SizedBox(height: 8),
            Text("Qualification: ${_qualification ?? 'N/A'}",
                style: Theme.of(context).textTheme.bodyLarge),
            const SizedBox(height: 8),
            Text("Previous Experience: ${_experience ?? 'N/A'}",
                style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
      ),
    );
  }
}
