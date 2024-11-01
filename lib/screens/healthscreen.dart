import 'package:flutter/material.dart';
import 'Videoscreen.dart'; // Import your VideoScreen file
import 'package:video_player/video_player.dart'; // Ensure this import is also present in VideoScreen.dart

class HealthArticleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Prioritizing Women's Health"),
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
                "Prioritizing Women's Health: Essential Tips for a Balanced Life",
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
                        videoUrl: 'https://youtu.be/eR1HWnqn-Ok?si=7639uCkJPUPutSnz', // Replace with actual video URL
                      ),
                    ),
                  );
                },
                child: Text("Watch Video on Health Tips"),
              ),
              SizedBox(height: 20),

              // Article Content
              Text(
                "Women’s health encompasses a broad spectrum of physical, mental, and emotional well-being. As women navigate various life stages—from adolescence to menopause and beyond—it’s crucial to prioritize health. Here are some essential tips to help women maintain a balanced and healthy lifestyle.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),

              // Further Article Content
              Text(
                "1. Regular Check-Ups\nRoutine health check-ups are vital for early detection and prevention of health issues. Women should schedule regular visits with their healthcare provider for:\n\n"
                    "Annual Gynecological Exams: These exams include Pap smears and pelvic exams to detect cervical cancer and other reproductive health issues.\n"
                    "Mammograms: Starting at age 40, women should have regular mammograms to screen for breast cancer.\n"
                    "Blood Pressure and Cholesterol Checks: Keeping track of heart health is essential, particularly as women age.\n\n"
                    "2. Balanced Nutrition\nA well-balanced diet plays a significant role in overall health. Focus on:\n"
                    "Whole Foods: Incorporate plenty of fruits, vegetables, whole grains, lean proteins, and healthy fats into your diet.\n"
                    "Calcium and Vitamin D: Essential for bone health, especially as women are at higher risk for osteoporosis.\n"
                    "Hydration: Drink plenty of water throughout the day to maintain energy levels and support bodily functions.\n\n"
                    "3. Physical Activity\nRegular exercise is crucial for maintaining physical and mental health. Aim for at least 150 minutes of moderate aerobic activity each week. Activities can include:\n"
                    "Walking or Jogging: Great for cardiovascular health and can be done alone or with friends.\n"
                    "Strength Training: Building muscle helps boost metabolism and improve bone density.\n"
                    "Yoga or Pilates: These practices enhance flexibility, reduce stress, and improve mental clarity.\n\n"
                    "4. Mental Health Matters\nWomen often juggle multiple roles, leading to stress and anxiety. Prioritize mental well-being by:\n"
                    "Practicing Mindfulness: Techniques such as meditation and deep-breathing exercises can help reduce stress levels.\n"
                    "Seeking Support: Don’t hesitate to talk to a friend or a mental health professional if you’re feeling overwhelmed.\n"
                    "Engaging in Hobbies: Taking time for activities you enjoy can improve mood and provide a sense of fulfillment.\n\n"
                    "5. Stay Informed\nKnowledge is power when it comes to health. Stay updated on:\n"
                    "Health News: Follow reputable sources for the latest research and guidelines related to women’s health.\n"
                    "Health Conditions: Be aware of conditions that may disproportionately affect women, such as autoimmune diseases, depression, and heart disease.\n\n"
                    "6. Building a Support Network\nSurrounding yourself with supportive friends and family can enhance emotional well-being. Consider:\n"
                    "Joining a Women’s Group: Engaging with others who share similar experiences can provide encouragement and strength.\n"
                    "Participating in Community Events: Getting involved in local health fairs or workshops can provide valuable resources and social connections.\n\n"
                    "Conclusion\nWomen's health is multifaceted and deserves attention at every life stage. By prioritizing regular check-ups, balanced nutrition, physical activity, mental well-being, and a supportive network, women can lead healthier and more fulfilling lives. Remember, investing in your health is the most valuable commitment you can make.",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
