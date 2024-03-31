import 'package:coding_app/screens/submission_screen.dart';
import 'package:flutter/material.dart';

import 'home_screens.dart';

class ProblemStatementPage extends StatelessWidget {
  final Problem problem; // Define the problem parameter

  const ProblemStatementPage(
      {required this.problem}); // Constructor to initialize the problem

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Problem Statement',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 3, 75, 80),
        elevation: 4.0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                problem.title, // Use problem.title for the problem title
                style: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16.0),
              Text(
                problem
                    .problemStatement, // Use problem.problemStatement for the problem statement
                style: const TextStyle(fontSize: 18.0),
              ),
              const SizedBox(height: 24.0),
              const Text(
                'Your Code',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16.0),
              SizedBox(
                height: 200.0, // Specify the height of the TextField
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const TextField(
                    cursorColor: Color.fromARGB(255, 3, 75, 80),
                    maxLines: null,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      hintText: 'Write your code here...',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
                  backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 3, 75, 80),
                  ),
                ),
                onPressed: () {
                  _showPlagiarismWarningDialog(
                      context); // Show plagiarism warning dialog
                },
                child: const Text(
                  'Submit',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Function to show plagiarism warning dialog
  void _showPlagiarismWarningDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Plagiarism Warning"),
          content: const Text(
              "Submitting plagiarized code may result in consequences. Are you sure you want to proceed?"),
          actions: <Widget>[
            TextButton(
              child: const Text("Cancel"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text("Submit"),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SubmissionScreen()),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
