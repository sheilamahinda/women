import 'package:flutter/material.dart';
import 'Videoscreen.dart'; // Ensure your VideoScreen file is correctly imported

class SavingAndInvestmentOpportunitiesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Saving and Investment Opportunities"),
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
                "Essential Tips for Saving and Investing Wisely",
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
                        videoUrl: 'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4', // Replace with actual video URL for saving and investment opportunities
                      ),
                    ),
                  );
                },
                child: Text("Watch Video on Saving and Investment Opportunities"),
              ),
              SizedBox(height: 20),

              // Article Content
              Text(
                "Understanding how to save and invest is crucial for financial security and growth. Here are key strategies to help you manage your finances effectively.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),

              // Further Article Content
              Text(
                "1. Setting Financial Goals\nEstablishing clear financial goals is the first step:\n\n"
                    "Short-term Goals: Identify immediate financial objectives, such as building an emergency fund.\n"
                    "Long-term Goals: Plan for future needs, like retirement or buying a home.\n\n"
                    "2. Creating a Budget\nA budget helps you track your income and expenses:\n"
                    "List Your Income: Include all sources of income, such as salaries and side hustles.\n"
                    "Track Expenses: Monitor daily, weekly, and monthly expenses to identify spending patterns.\n\n"
                    "3. Building an Emergency Fund\nAn emergency fund is essential for unexpected expenses:\n"
                    "Aim for 3-6 Months of Living Expenses: This fund should cover essential expenses in case of emergencies.\n"
                    "Keep It Accessible: Store your emergency fund in a high-yield savings account for easy access.\n\n"
                    "4. Exploring Investment Options\nInvesting helps grow your wealth over time:\n"
                    "Stocks: Invest in individual stocks or exchange-traded funds (ETFs) for potential high returns.\n"
                    "Bonds: Consider bonds for more stable, lower-risk investments.\n"
                    "Mutual Funds: These funds pool money from many investors to buy a diversified portfolio of stocks and bonds.\n\n"
                    "5. Understanding Risk Tolerance\nYour risk tolerance influences your investment strategy:\n"
                    "Assess Your Comfort Level: Determine how much risk you can handle based on your financial situation and goals.\n"
                    "Diversification: Spread your investments across different asset classes to reduce risk.\n\n"
                    "6. Seeking Professional Advice\nConsider consulting a financial advisor:\n"
                    "Financial Planning: An advisor can help create a personalized financial plan based on your goals.\n"
                    "Investment Strategies: They can guide you on investment options and strategies that align with your risk tolerance.\n\n"
                    "Conclusion\nBy setting financial goals, budgeting effectively, building an emergency fund, and exploring investment options, you can achieve financial stability and growth. Remember, making informed decisions today can lead to a more secure financial future.",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
