import 'package:explorify/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  var height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.025,
            ),
            SizedBox(
              height: height * 0.065,
              width: width * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Explorify",
                        style: TextStyle(
                          fontSize: width * 0.059,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "Discover the Wonders of Batangas!",
                        style: TextStyle(
                          fontSize: width * 0.037,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.035,
                  ),
                  Container(
                    height: height * 0.052,
                    width: width * 0.11,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/bg2.jpg"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.025,
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.grey,
                    child: Text(
                      'J',
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "John Doe",
                        style: GoogleFonts.lexend(
                          fontSize: width * 0.053,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'johndoe@gmail.com',
                        style: GoogleFonts.lexend(
                          fontSize: width * 0.033,
                          fontWeight: FontWeight.w600,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text(
                'Explorify History',
                style: GoogleFonts.lexend(
                  fontSize: width * 0.033,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'Language',
                style: GoogleFonts.lexend(
                  fontSize: width * 0.033,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'Notification',
                style: GoogleFonts.lexend(
                  fontSize: width * 0.033,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'Manage Profile',
                style: GoogleFonts.lexend(
                  fontSize: width * 0.033,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'Logout',
                style: GoogleFonts.lexend(
                  fontSize: width * 0.033,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WelcomeScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
