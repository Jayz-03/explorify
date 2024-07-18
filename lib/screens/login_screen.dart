import 'package:explorify/screens/classList.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  var height, width;

  LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _header(context),
              _inputField(context),
              _forgotPassword(context),
              _signup(context),
            ],
          ),
        ),
      ),
    );
  }

  _header(context) {
    return Column(
      children: [
        Text(
          "Welcome to Explorify",
          style: GoogleFonts.lexend(
            fontSize: width * 0.068,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Text("Please fill up the necessary credentials."),
      ],
    );
  }

  _inputField(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          cursorColor: Colors.black54,
          decoration: InputDecoration(
              hintStyle: TextStyle(color: Colors.black54),
              hintText: "Email Address",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none),
              fillColor: Colors.black.withOpacity(0.2),
              filled: true,
              prefixIcon: Icon(
                Iconsax.user,
                color: Colors.white,
              )),
        ),
        SizedBox(height: 20),
        TextField(
          cursorColor: Colors.black54,
          decoration: InputDecoration(
            hintStyle: TextStyle(color: Colors.black54),
            hintText: "Password",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none),
            fillColor: Colors.black.withOpacity(0.2),
            filled: true,
            prefixIcon: Icon(
              Iconsax.eye,
              color: Colors.white,
            ),
          ),
          obscureText: true,
        ),
        SizedBox(height: 40),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TabNavigation()),
            );
          },
          child: Text(
            "Login",
            style: GoogleFonts.lexend(
              fontSize: width * 0.048,
              color: Colors.black,
            ),
          ),
          style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            padding: EdgeInsets.symmetric(vertical: 16),
          ),
        )
      ],
    );
  }

  _forgotPassword(context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        "Forgot Password?",
        style: GoogleFonts.lexend(
          fontSize: width * 0.032,
          color: Colors.black54,
        ),
      ),
    );
  }

  _signup(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: GoogleFonts.lexend(
            fontSize: width * 0.032,
            color: Colors.black,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "Sign up here!",
            style: GoogleFonts.lexend(
              fontSize: width * 0.032,
              color: Colors.black54,
            ),
          ),
        )
      ],
    );
  }
}
