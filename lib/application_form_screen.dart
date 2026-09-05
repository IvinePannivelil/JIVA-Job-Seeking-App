import 'package:flutter/material.dart';
import 'package:flutter_job_seeking/themes/app_color.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ApplicationFormScreen
class ApplicationFormScreen extends StatefulWidget {
  final String jobTitle;

  const ApplicationFormScreen({Key? key, required this.jobTitle})
      : super(key: key);

  @override
  _ApplicationFormScreenState createState() => _ApplicationFormScreenState();
}

class _ApplicationFormScreenState extends State<ApplicationFormScreen> {
  final _formKey = GlobalKey<FormState>();
  String? _name;
  String? _dob;
  String? _experience;
  String? _qualification;

  @override
  void initState() {
    super.initState();
    _loadSavedData();
  }

  Future<void> _loadSavedData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _name = prefs.getString('${widget.jobTitle}_name') ?? '';
      _dob = prefs.getString('${widget.jobTitle}_dob') ?? '';
      _experience = prefs.getString('${widget.jobTitle}_experience') ?? '';
      _qualification =
          prefs.getString('${widget.jobTitle}_qualification') ?? '';
    });
  }

  Future<void> _saveData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('${widget.jobTitle}_name', _name ?? '');
    await prefs.setString('${widget.jobTitle}_dob', _dob ?? '');
    await prefs.setString('${widget.jobTitle}_experience', _experience ?? '');
    await prefs.setString(
        '${widget.jobTitle}_qualification', _qualification ?? '');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Apply for Job"),
        backgroundColor: AppColor.primaryColor,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.6,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColor.primaryColor.withOpacity(0.5),
              Colors.white,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  initialValue: _name,
                  decoration: const InputDecoration(labelText: "Name"),
                  onSaved: (value) {
                    _name = value;
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  initialValue: _dob,
                  decoration: const InputDecoration(labelText: "Date of Birth"),
                  onSaved: (value) {
                    _dob = value;
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your date of birth';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  initialValue: _qualification,
                  decoration: const InputDecoration(labelText: "Qualification"),
                  onSaved: (value) {
                    _qualification = value;
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your Qualification';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  initialValue: _experience,
                  decoration:
                      const InputDecoration(labelText: "Previous Experience"),
                  onSaved: (value) {
                    _experience = value;
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your previous experience';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      await _saveData(); // Save data to SharedPreferences

                      // Show a confirmation message
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Application Submitted')),
                      );
                      Navigator.pop(context);
                    }
                  },
                  child: const Text("Submit"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
