import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:rapido/firebase_options.dart';
import 'package:rapido/screens/welcome_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await Supabase.initialize(
    url: 'https://sjcfpeukolztpwudwzrz.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNqY2ZwZXVrb2x6dHB3dWR3enJ6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzM5Mjc4NDAsImV4cCI6MjA0OTUwMzg0MH0.hs0h04W52KdANyh9H5cp1DU2xJkj2a9ONv7rLfBSlB4', // Remplace par ta clé anonyme
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home: const WelcomeScreen(),
    );
  }
}
