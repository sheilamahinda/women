import 'package:flutter/material.dart';
import 'Videoscreen.dart'; // Ensure your VideoScreen file is correctly imported

class MentalHealthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mental Health Tips"),
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
                "Essential Mental Health Tips",
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
                        videoUrl: 'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4', // Replace with actual video URL for mental health tips
                      ),
                    ),
                  );
                },
                child: Text("Watch Video on Mental Health Tips"),
              ),
              SizedBox(height: 20),

              // Article Content
              Text(
                "Maintaining mental health is as crucial as physical health. Here are some essential tips to help you manage stress, emotions, and well-being.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),

              // Further Article Content
              Text(
                "1. Practice Mindfulness\nBeing mindful helps in reducing stress by staying present and focused. Try:\n\n"
                    "Meditation: Spend a few minutes each day meditating to relax and calm your mind.\n"
                    "Deep Breathing Exercises: Take deep breaths to relieve stress instantly.\n\n"
                    "2. Stay Connected\nStrong social support is key to mental well-being:\n"
                    "Talk to Friends or Family: Regularly connect with loved ones and discuss your feelings.\n"
                    "Join Support Groups: Engaging in groups with similar experiences can be comforting.\n\n"
                    "3. Physical Activity\nExercise has been shown to boost mental health:\n"
                    "Walking or Running: Physical activities release endorphins, improving mood.\n"
                    "Yoga: Yoga combines physical movement and mindfulness to reduce anxiety.\n\n"
                    "4. Limit Screen Time\nReducing digital consumption can positively impact mental health:\n"
                    "Set Screen Time Limits: Avoid excessive use of social media and other digital devices.\n"
                    "Take Breaks: Step away from screens frequently, especially before bed.\n\n"
                    "5. Seek Professional Help\nIf you’re feeling overwhelmed, reaching out for help is a sign of strength:\n"
                    "Consult a Therapist: A licensed therapist can provide support tailored to your needs.\n"
                    "Use Mental Health Resources: Many organizations offer helplines and online counseling.\n\n"
                    "Conclusion\nMental health is an ongoing journey. By practicing these tips, you can foster a healthier and more balanced lifestyle. Remember, it's okay to seek help when needed, and taking care of your mental health is a powerful step toward overall well-being.",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
