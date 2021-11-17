import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_web_app/components/top_menu.dart';

class LandingPage extends StatelessWidget {
  List titleText = ['Home', 'About', 'Contact'];
  LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/Union.png'),
                ),
              ),
            ),
            TopMenu(
              size: size,
              titleText: titleText,
              press: () {},
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'India',
                  style: GoogleFonts.mulish(
                    color: Colors.white,
                    fontSize: size.width * 0.15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Delhi India gate'.toUpperCase(),
                  style: GoogleFonts.mulish(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: size.width * 0.03,
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                    )
                  ),
                  child: Text(
                    'Explore',
                    style: GoogleFonts.mulish(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
