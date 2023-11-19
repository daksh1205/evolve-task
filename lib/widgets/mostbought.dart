import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:evolve_task/models/child_data.dart';

class MostBought extends StatelessWidget {
  final ChildData childData;

  const MostBought({
    Key? key,
    required this.childData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final stockChangeDouble = double.tryParse(childData.prevClose) ?? 0;
    final stockChangeColor = stockChangeDouble < 0 ? Colors.red : Colors.green;

    return Container(
      height: 160,
      width: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color.fromARGB(221, 154, 140, 140),
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child:
                  Image.asset(childData.icon), // Assuming icon is a local asset
            ),
            Text(
              childData.companyName,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              childData.current,
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            Text(
              childData.prevClose,
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: stockChangeColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
