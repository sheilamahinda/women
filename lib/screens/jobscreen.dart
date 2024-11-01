import 'package:flutter/material.dart';
import 'Videoscreen.dart'; // Ensure your VideoScreen file is correctly imported

class JobApplicationResourcesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Job Application Resources"),
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
                "Essential Resources for Job Applications and Mentorship",
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
                        videoUrl: 'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4', // Replace with actual video URL for job application resources
                      ),
                    ),
                  );
                },
                child: Text("Watch Video on Job Application Resources"),
              ),
              SizedBox(height: 20),

              // Article Content
              Text(
                "Applying for jobs can be daunting, but with the right resources and connections, you can enhance your chances of success. Here are some key resources and tips to navigate job applications and connect with mentors.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),

              // Further Article Content
              Text(
                "1. Crafting Your Resume\nA strong resume is essential to make a good impression:\n\n"
                    "Tailor Your Resume: Customize your resume for each job application to highlight relevant skills and experiences.\n"
                    "Use Action Verbs: Begin bullet points with strong action verbs to convey your achievements effectively.\n\n"
                    "2. Writing a Cover Letter\nAn impactful cover letter can set you apart:\n"
                    "Personalize It: Address the letter to the hiring manager and explain why you're a good fit for the role.\n"
                    "Showcase Your Passion: Share your enthusiasm for the position and the company.\n\n"
                    "3. Job Search Platforms\nUtilize various platforms to find job opportunities:\n"
                    "Job Boards: Explore sites like LinkedIn, Indeed, and Glassdoor for job listings.\n"
                    "Company Websites: Check the careers page of companies you’re interested in.\n\n"
                    "4. Networking Strategies\nConnecting with professionals can open doors:\n"
                    "Attend Events: Participate in career fairs, workshops, and networking events to meet potential employers.\n"
                    "Leverage Social Media: Use platforms like LinkedIn to connect with industry professionals and join relevant groups.\n\n"
                    "5. Mentorship Opportunities\nMentors can provide invaluable guidance:\n"
                    "Seek Mentors: Look for mentors in your field through networking events, online platforms, or university programs.\n"
                    "Be Open to Feedback: A good mentor will provide constructive feedback to help you grow.\n\n"
                    "6. Preparing for Interviews\nBeing well-prepared is key to success:\n"
                    "Research the Company: Familiarize yourself with the company’s mission, values, and recent news.\n"
                    "Practice Common Questions: Prepare answers to common interview questions and practice with a friend or mentor.\n\n"
                    "Conclusion\nUtilizing the right resources and building connections can significantly enhance your job application process. By tailoring your resume, leveraging job search platforms, and seeking mentorship, you can navigate your career path more effectively.",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
