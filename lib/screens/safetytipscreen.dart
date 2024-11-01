import 'package:flutter/material.dart';
import 'Videoscreen.dart'; // Import your VideoScreen file

class SafetyTipsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Safety Tips"),
        backgroundColor: Color(0xFF9B27E0),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Article Title
              Text(
                "Essential Safety Tips for Everyday Situations",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),

              // Navigation Button to VideoScreen
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VideoScreen(
                        videoUrl: 'https://youtu.be/eR1HWnqn-Ok?si=7639uCkJPUPutSnz', // Replace with actual video URL for safety tips
                      ),
                    ),
                  );
                },
                child: Text("Watch Video on Safety Tips"),
              ),
              SizedBox(height: 20),

              // Article Content
              Text(
                "Safety is essential in every aspect of life, whether at home, work, or outdoors. Here are some basic tips to stay safe and avoid potential hazards in daily situations.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),

              // Further Article Content
              Text(
                "1. Home Safety\nEnsure your home is secure by:\n\n"
                    "Locking Doors and Windows: Always keep doors and windows locked when you’re not around.\n"
                    "Installing Smoke Detectors: Test smoke detectors monthly to ensure they’re functional.\n"
                    "Emergency Contacts: Keep a list of emergency numbers close to your phone.\n\n"
                    "2. Personal Safety\nPractice these habits to enhance personal security:\n"
                    "Stay Alert: Be aware of your surroundings, especially when in new places.\n"
                    "Avoid Sharing Personal Info: Keep sensitive information private on social media.\n"
                    "Trust Your Instincts: If something feels wrong, it’s better to err on the side of caution.\n\n"
                    "3. Outdoor Safety\nWhen venturing outside, remember:\n"
                    "Stay in Well-Lit Areas: Walk in well-lit and populated areas, especially at night.\n"
                    "Inform Someone of Your Plans: Share your travel plans with friends or family when heading somewhere new.\n"
                    "Carry Essentials: Keep a whistle, flashlight, or other tools handy for emergencies.\n\n"
                    "4. Digital Safety\nProtect your digital identity by:\n"
                    "Using Strong Passwords: Ensure passwords are unique and updated regularly.\n"
                    "Enabling Two-Factor Authentication: This adds an extra layer of security to your accounts.\n"
                    "Being Cautious of Links: Avoid clicking on suspicious links or downloading unknown files.\n\n"
                    "Conclusion\nSafety is an ongoing effort that requires constant awareness and caution. By adopting these practices, you can protect yourself and those around you, making everyday situations safer for everyone.",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

