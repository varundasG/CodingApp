// screens/home_screen.dart
import 'package:flutter/material.dart';
import 'problem_statement_screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Define a list of problems
    List<Problem> problems = [
      Problem(
        title: 'Problem 1',
        problemStatement:
            'Write a program to print the given number is odd or even.',
        language: 'Python',
        difficulty: 'Easy',
      ),
      Problem(
        title: 'Problem 2',
        problemStatement:
            'Write a program to find the largest number in an array in Java.',
        language: 'Java',
        difficulty: 'Medium',
      ),
      Problem(
        title: 'Problem 3',
        problemStatement:
            'Write a Program to convert the binary number into a decimal number.',
        language: 'C',
        difficulty: 'Easy',
      ),
      Problem(
        title: 'Problem 4',
        problemStatement:
            'Write a C++ Program to Check Whether a Number is a Positive or Negative Number.',
        language: 'C++',
        difficulty: 'Medium',
      ),
      Problem(
        title: 'Problem 5',
        problemStatement:
            'Write a program to check if the given number is Armstrong or not.',
        language: 'Python',
        difficulty: 'Easy',
      ),
      Problem(
        title: 'Problem 6',
        problemStatement:
            'Write a program to remove duplicate elements from an array in Java.',
        language: 'Java',
        difficulty: 'Medium',
      ),
      Problem(
        title: 'Problem 7',
        problemStatement: 'Problem statement for problem 1',
        language: 'C++',
        difficulty: 'Easy',
      ),
      Problem(
        title: 'Problem 8',
        problemStatement: 'Write a C program to calculate Compound Interest.',
        language: 'C',
        difficulty: 'Medium',
      ),
      Problem(
        title: 'Problem 9',
        problemStatement: 'Write a program to find GCD of two numbers.',
        language: 'Python',
        difficulty: 'Easy',
      ),
      Problem(
        title: 'Problem 10',
        problemStatement:
            'Write a program to check if two strings are anagrams in Java.',
        language: 'Java',
        difficulty: 'Medium',
      ),
      Problem(
        title: 'Problem 11',
        problemStatement:
            'Write a Python program to check if a string is a palindrome.',
        language: 'Python',
        difficulty: 'Easy',
      ),
      Problem(
        title: 'Problem 12',
        problemStatement:
            'Write a program in C to print the Fibonacci series using iteration.',
        language: 'C',
        difficulty: 'Medium',
      ),
      Problem(
        title: 'Problem 13',
        problemStatement:
            ' Write a Program to Print Check Whether a Character is an Alphabet or Not',
        language: 'C++',
        difficulty: 'Easy',
      ),
      Problem(
        title: 'Problem 14',
        problemStatement:
            'Write a program to find the first non-repeating character in a string in Java.',
        language: 'Java',
        difficulty: 'Medium',
      ),
      Problem(
        title: 'Problem 15',
        problemStatement:
            'Write a Python program to find the factorial of a number.',
        language: 'Python',
        difficulty: 'Medium',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Coding Problems',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 3, 75, 80),
        elevation: 4.0,
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Color.fromARGB(255, 3, 75, 80)),
              accountName: Text('John',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              accountEmail: Text('john23@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/profile.jpg'),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              iconColor: Colors.black,
              title: const Text(
                'Profile',
                style: TextStyle(fontSize: 15),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.leaderboard),
              iconColor: Colors.black,
              title: const Text(
                'Leaderboard',
                style: TextStyle(fontSize: 15),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.dashboard),
              iconColor: Colors.black,
              title: const Text(
                'DashBoard',
                style: TextStyle(fontSize: 15),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              iconColor: Colors.black,
              title: const Text(
                'Settings',
                style: TextStyle(fontSize: 15),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              iconColor: Colors.black,
              title: const Text(
                'Signout',
                style: TextStyle(fontSize: 15),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: ListView(
        children: problems.map((problem) {
          return _buildProblemTile(context, problem);
        }).toList(),
      ),
    );
  }

  Widget _buildProblemTile(BuildContext context, Problem problem) {
    return Card(
      color: const Color.fromARGB(255, 186, 232, 235),
      elevation: 4.0,
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: const Icon(Icons.code),
          title: Text(
            problem.title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 5.0),
              Text(
                'Language: ${problem.language}',
                style: const TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 5.0),
              Text(
                'Difficulty: ${problem.difficulty}',
                style: const TextStyle(fontSize: 15.0),
              ),
            ],
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProblemStatementPage(problem: problem)),
            );
          },
        ),
      ),
    );
  }
}

class Problem {
  final String title;
  final String problemStatement;
  final String language;
  final String difficulty;

  Problem({
    required this.title,
    required this.problemStatement,
    required this.language,
    required this.difficulty,
  });
}
