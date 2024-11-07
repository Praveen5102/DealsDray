import 'package:flutter/material.dart';

class EnterNumberScreen extends StatefulWidget {
  @override
  _EnterNumberScreenState createState() => _EnterNumberScreenState();
}

class _EnterNumberScreenState extends State<EnterNumberScreen> {
  bool isPhoneSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              child: Image.asset("assets/images/logo.jpg"),
            ),
            SizedBox(height: 30),
            Container(
              width: 210,  // Reduced width to prevent overflow
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20),
              ),
              child: ToggleButtons(
                borderRadius: BorderRadius.circular(20),
                fillColor: Colors.red,
                selectedColor: Colors.white,
                color: Colors.black,
                constraints: BoxConstraints.expand(width: 100, height: 40), // Reduced width and height
                isSelected: [isPhoneSelected, !isPhoneSelected],
                onPressed: (index) {
                  setState(() {
                    isPhoneSelected = index == 0;
                  });
                },
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0), // Reduced padding inside text
                    child: Text('Phone'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text('Email'),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),
            const Text(
              'Glad to see you!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              isPhoneSelected ? 'Please provide your phone number' : 'Please provide your email address',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: isPhoneSelected ? 'Phone' : 'Email',
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/verify_otp');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[200],
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: Text(
                  'SEND CODE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
