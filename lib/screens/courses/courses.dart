import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loghaty/utils/constants/colors.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('المواد'),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 10),
        itemCount: 4,
        itemBuilder: (_, index) {
          return Card(
              color: FColors.highlightColor,
              shape: CircleBorder(),
              child: Center(
                child: Text(
                  'نحو',
                  style: GoogleFonts.rakkas(
                    fontSize:
                        Theme.of(context).textTheme.displayLarge!.fontSize,
                    color: Colors.white,
                  ),
                ),
              ));
        },
      ),
    );
  }
}
