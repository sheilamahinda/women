import 'package:flutter/material.dart';
import 'package:women/screens/healthscreen.dart';
import 'package:women/screens/jobscreen.dart';
import 'package:women/screens/maps.dart';
import 'package:women/screens/mentalscreen.dart';
import 'package:women/screens/safetytipscreen.dart';
import 'package:women/screens/savingscreen.dart';
import 'package:women/screens/skillscreen.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

// Home Screen with top navigation and main sections
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Emergency Assistance",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF9B27E0),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Navigate to notifications screen
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NotificationsScreen(),
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.person), // Profile icon
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileSettingsScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Button to navigate to the MapsScreen
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MapsScreen(),
                  ),
                );
              },
              child: Text("View Safety Map"),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16),
                backgroundColor: Colors.blue, // Button color
              ),
            ),
            SizedBox(height: 20),
            // Quick Action Buttons
            Text(
              "Quick Actions",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReportIncidentScreen(),
                      ),
                    );
                  },
                  icon: Icon(Icons.report),
                  label: Text("Report Incident"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red, // Button color
                    padding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EducationalResourcesScreen(),
                      ),
                    );
                  },
                  icon: Icon(Icons.school),
                  label: Text("Educational Resources"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Button color
                    padding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Emergency SOS Activated"),
                content: Text("Alerting authorities or your emergency contact."),
                actions: [
                  TextButton(
                    child: Text("OK"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.warning, size: 30),
        backgroundColor: Colors.red,
        tooltip: 'Emergency SOS',
      ),
    );
  }
}


// New Screen for Notifications
class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Notifications"),
        backgroundColor: Color(0xFF9B27E0),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            ListTile(
              title: Text("High-Risk Zones"),
              subtitle: Text("Alerts based on predictive AI model."),
              leading: Icon(Icons.warning, color: Colors.red),
              onTap: () {
                // Handle tap on high-risk zones notification
              },
            ),
            Divider(),
            ListTile(
              title: Text("Community Reports"),
              subtitle: Text("Recent reports relevant to your locations."),
              leading: Icon(Icons.report, color: Colors.blue),
              onTap: () {
                // Handle tap on community reports notification
              },
            ),
            Divider(),
            ListTile(
              title: Text("Educational Resources"),
              subtitle: Text("New resources and safety updates."),
              leading: Icon(Icons.school, color: Colors.green),
              onTap: () {
                // Handle tap on educational resources notification
              },
            ),
          ],
        ),
      ),
    );
  }
}

// New Screen for Educational Resources
// New Screen for Educational Resources
class EducationalResourcesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Educational Resources"),
        backgroundColor: Color(0xFF9B27E0),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            // EducationalResourcesScreen
            ListTile(
              leading: Icon(Icons.health_and_safety),
              title: Text("Health Tips"),
              subtitle: Text("Access articles and videos on health and wellness."),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HealthArticleScreen()),
                );
              },
            ),

            ListTile(
              leading: Icon(Icons.security),
              title: Text("Safety Tips"),
              subtitle: Text("Learn about personal safety practices."),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SafetyTipsScreen()),
                );
              },
            ),


            // Mental Health Resources
            ListTile(
              leading: Icon(Icons.accessibility),
              title: Text("Mental Health Resources"),
              subtitle: Text("Links for support groups and mental health help."),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MentalHealthScreen()),
                );
                // Link to mental health resources
              },
            ),
            Divider(),

            // Basic Digital Skills
            ListTile(
              leading: Icon(Icons.computer),
              title: Text("Basic Digital Skills"),
              subtitle: Text("Access tutorials and resources."),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DigitalSkillsScreen()),
                );
                // Link to digital skills resources
              },
            ),
            Divider(),

            // Job Application Resources
            ListTile(
              leading: Icon(Icons.work),
              title: Text("Job Application Resources"),
              subtitle: Text("Find ways to apply for jobs and connect with mentors."),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => JobApplicationResourcesScreen()),
                );
                // Link to job application resources
              },
            ),
            Divider(),

            // Saving and Investment Opportunities
            ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text("Saving & Investment Opportunities"),
              subtitle: Text("Insights on savings and investment."),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SavingAndInvestmentOpportunitiesScreen()),
                );
                // Link to savings and investment resources
              },
            ),
          ],
        ),
      ),
    );
  }
}


// New Screen for Reporting an Incident
class ReportIncidentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Report Incident"),
        backgroundColor: Color(0xFF9B27E0),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Report Suspicious Activity or Harassment",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: "Describe the incident",
                border: OutlineInputBorder(),
              ),
              maxLines: 4,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Incident reported successfully."),
                  ),
                );
                Navigator.pop(context);
              },
              child: Text("Submit Report"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Button color
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ProfileSettingsScreen with Navigation to Editable Screens
class ProfileSettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Profile and Settings"),
        backgroundColor: Color(0xFF9B27E0),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "User Settings",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            // Edit Personal Details
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Edit Personal Details"),
              subtitle: Text("Update your personal information."),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EditPersonalDetailsScreen()),
                );
              },
            ),
            Divider(),

            // Manage Emergency Contacts
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text("Emergency Contacts"),
              subtitle: Text("Add or edit emergency contacts."),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ManageEmergencyContactsScreen()),
                );
              },
            ),
            Divider(),

            // Notification Preferences
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text("Notification Preferences"),
              subtitle: Text("Customize notifications."),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationPreferencesScreen()),
                );
              },
            ),
            Divider(),

            // Privacy Settings
            ListTile(
              leading: Icon(Icons.privacy_tip),
              title: Text("Privacy Settings"),
              subtitle: Text("Manage data usage and storage preferences."),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PrivacySettingsScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

// Editable Screen for Personal Details
class EditPersonalDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Edit Personal Details")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: "Full Name"),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(labelText: "Email"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Personal details updated")),
                );
                Navigator.pop(context);
              },
              child: Text("Save"),
            ),
          ],
        ),
      ),
    );
  }
}

// Editable Screen for Emergency Contacts
class ManageEmergencyContactsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Manage Emergency Contacts")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: "Contact Name"),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(labelText: "Phone Number"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Emergency contacts updated")),
                );
                Navigator.pop(context);
              },
              child: Text("Save"),
            ),
          ],
        ),
      ),
    );
  }
}

// Editable Screen for Notification Preferences
class NotificationPreferencesScreen extends StatelessWidget {
  bool notificationsEnabled = true; // Example toggle state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Notification Preferences")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            SwitchListTile(
              title: Text("Enable Notifications"),
              value: notificationsEnabled,
              onChanged: (value) {
                notificationsEnabled = value;
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Notification preferences updated")),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

// Editable Screen for Privacy Settings
class PrivacySettingsScreen extends StatelessWidget {
  bool dataSharingEnabled = true; // Example toggle state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Privacy Settings")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            SwitchListTile(
              title: Text("Enable Data Sharing"),
              value: dataSharingEnabled,
              onChanged: (value) {
                dataSharingEnabled = value;
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Privacy settings updated")),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}