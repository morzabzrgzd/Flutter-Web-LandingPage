import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class TopMenu extends StatelessWidget {
  const TopMenu({
    Key? key,
    required this.size,
    required this.titleText,
    required this.press,
  }) : super(key: key);

  final Size size;
  final List titleText;
  final press;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(16),
            color: Colors.transparent,
            alignment: Alignment.topLeft,
            child: Text(
              'Travel',
              style: GoogleFonts.quicksand(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: size.width * 0.04,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 30,
            ),
            alignment: Alignment.topRight,
            color: Colors.black.withOpacity(.5),
            child: Row(
              children: [
                const Spacer(
                  flex: 2,
                ),
                Row(
                  children: List.generate(
                    titleText.length,
                    (index) => InkWell(
                      onTap: press,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Text(
                          titleText[index],
                          style: GoogleFonts.mulish(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 26,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
