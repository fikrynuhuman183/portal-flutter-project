import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String mainRoute = '/';
  static const String teacherLoginRoute = '/teacher-login';
  static const String studentLoginRoute = '/student-login';
  static const String teacherDashboardRoute = '/teacher-dashboard';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: mainRoute,
      routes: {
        mainRoute: (context) => MainScreen(),
        teacherLoginRoute: (context) => TeacherLoginScreen(),
        studentLoginRoute: (context) => StudentLoginScreen(),
        teacherDashboardRoute: (context) => TeacherDashboard(),
      },
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, MyApp.teacherLoginRoute);
              },
              child: Text('Teacher Login'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, MyApp.studentLoginRoute);
              },
              child: Text('Student Login'),
            ),
          ],
        ),
      ),
    );
  }
}
