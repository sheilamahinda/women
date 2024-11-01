import 'package:flutter/material.dart';
import 'Videoscreen.dart'; // Ensure your VideoScreen file is correctly imported

class DigitalSkillsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Digital Skills Tips"),
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
                "Essential Digital Skills for the Modern World",
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
                        videoUrl: 'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4', // Replace with actual video URL for digital skills
                      ),
                    ),
                  );
                },
                child: Text("Watch Video on Digital Skills Tips"),
              ),
              SizedBox(height: 20),

              // Article Content
              Text(
                "In today's digital age, acquiring essential digital skills is vital for personal and professional development. Here are some key skills to enhance your digital literacy.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),

              // Further Article Content
              Text(
                "1. Basic Computer Skills\nUnderstanding the fundamentals of using a computer is crucial:\n\n"
                    "Operating Systems: Familiarize yourself with Windows, macOS, or Linux.\n"
                    "File Management: Learn how to organize and manage files and folders efficiently.\n\n"
                    "2. Internet Navigation\nBeing able to navigate the web effectively is essential:\n"
                    "Search Engines: Use search engines like Google effectively to find information.\n"
                    "Web Safety: Understand the importance of online safety and recognizing secure websites.\n\n"
                    "3. Communication Tools\nDigital communication tools have become essential in today's world:\n"
                    "Email: Learn how to write professional emails and manage your inbox.\n"
                    "Messaging Platforms: Familiarize yourself with tools like Slack, Microsoft Teams, or Zoom.\n\n"
                    "4. Social Media Literacy\nSocial media can be a powerful tool for personal branding and networking:\n"
                    "Profile Management: Know how to create and manage profiles on various platforms.\n"
                    "Privacy Settings: Understand how to protect your personal information online.\n\n"
                    "5. Basic Data Skills\nData literacy is increasingly important in many fields:\n"
                    "Spreadsheets: Learn how to use tools like Microsoft Excel or Google Sheets to organize data.\n"
                    "Data Visualization: Understand basic concepts of presenting data visually.\n\n"
                    "6. Cybersecurity Awareness\nProtecting yourself and your information online is critical:\n"
                    "Strong Passwords: Learn the importance of creating and managing strong passwords.\n"
                    "Recognizing Scams: Be aware of common online scams and phishing attempts.\n\n"
                    "Conclusion\nAcquiring these digital skills can significantly enhance your ability to navigate the modern world. Whether for personal growth or career advancement, investing time in learning these skills is invaluable.",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
