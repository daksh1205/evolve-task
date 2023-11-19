import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:evolve_task/models/child_data.dart';

class Stocks1Widget extends StatelessWidget {
  final ChildData childData;

  const Stocks1Widget({
    Key? key,
    required this.childData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final stockChangeDouble = double.tryParse(childData.prevClose) ?? 0;
    final stockChangeColor = stockChangeDouble < 0 ? Colors.red : Colors.green;

    return Container(
      height: 50,
      width: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: const Color.fromARGB(221, 154, 140, 140),
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 4, bottom: 4, left: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              childData.companyName,
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Row(
              children: [
                Text(
                  childData.current,
                  style: GoogleFonts.poppins(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  childData.prevClose,
                  style: GoogleFonts.poppins(
                    color: stockChangeColor,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
