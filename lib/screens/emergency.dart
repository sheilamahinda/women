import 'package:flutter/material.dart';
import 'package:women/screens/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EmergencyContactScreen(),
    );
  }
}

// Screen for requesting emergency contacts and preferred contact method
class EmergencyContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Emergency Contact"),
        backgroundColor: Color(0xFF9B27E0),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Circular image holder
            Center(
              child: Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFEDE7F6),
                  image: DecorationImage(
                    image: AssetImage('assets/wba1.jpg'), // Placeholder image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Add Emergency Contacts",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            _buildTextField("Emergency Contact Name"),
            SizedBox(height: 20),
            _buildTextField("Phone Number", keyboardType: TextInputType.phone),
            SizedBox(height: 20),
            _buildDropdownField(),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LocationPermissionScreen(),
                  ),
                );
              },
              child: Text("Next"),
            ),
          ],
        ),
      ),
    );
  }

  // Widget for text fields
  Widget _buildTextField(String label, {TextInputType keyboardType = TextInputType.text}) {
    return TextField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
        filled: true,
        fillColor: Color(0xFFF3E5F5),
      ),
    );
  }

  // Widget for dropdown field
  Widget _buildDropdownField() {
    return DropdownButtonFormField<String>(
      items: ["Call", "SMS"].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? newValue) {},
      decoration: InputDecoration(
        labelText: "Preferred Contact Method",
        border: OutlineInputBorder(),
        filled: true,
        fillColor: Color(0xFFF3E5F5),
      ),
    );
  }
}

// Screen for requesting location permissions
class LocationPermissionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Location Permissions"),
        backgroundColor: Color(0xFF9B27E0),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFEDE7F6),
                  image: DecorationImage(
                    image: AssetImage('assets/wba1.jpg'), // Placeholder image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Enable Location Permissions",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              "Allow the app to access your location to provide location-based alerts.",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HighRiskAreaScreen(),
                  ),
                );
              },
              child: Text("Enable Location Permissions"),
            ),
          ],
        ),
      ),
    );
  }
}

// Screen for allowing users to input high-risk areas they frequent
class HighRiskAreaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("High-Risk Areas"),
        backgroundColor: Color(0xFF9B27E0),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFEDE7F6),
                  image: DecorationImage(
                    image: AssetImage('assets/wba1.jpg'), // Placeholder image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Frequent High-Risk Areas",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              "Provide information on areas you frequent that might be high-risk (e.g., commute routes).",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            _buildTextField("High-Risk Area (Optional)"),
            SizedBox(height: 20),
            _buildTextField("Safe Word", hintText: "Enter your safe word"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
              child: Text("Finish Setup"),
            ),
          ],
        ),
      ),
    );
  }

  // Reuse the text field widget with an optional hint
  Widget _buildTextField(String label, {String? hintText}) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        hintText: hintText,
        border: OutlineInputBorder(),
        filled: true,
        fillColor: Color(0xFFF3E5F5),
      ),
    );
  }
}

