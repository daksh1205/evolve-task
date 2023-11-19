import 'package:evolve_task/models/child_data.dart';
import 'package:evolve_task/widgets/mostbought.dart';
import 'package:evolve_task/widgets/stocks.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<ChildData> stocksData = [
      ChildData(
        icon: 'assets/reliance.png',
        companyName: 'NIFTY 50',
        current: '19,425.35',
        prevClose: '+30.05(0.15%)',
      ),
      ChildData(
        icon: 'assets/zomato.png',
        companyName: 'NASDAQ',
        current: '14,500.51',
        prevClose: '+25.25(0.18%)',
      ),
      // Add more ChildData instances as per your requirements for Stocks
    ];
    List<ChildData> mostBoughtData = [
      ChildData(
        icon: 'assets/reliance.png',
        companyName: 'Reliance Power',
        current: '\$20.50',
        prevClose: '-0.70(3.30%)',
      ),
      ChildData(
        icon: 'assets/jayprakash.png',
        companyName: 'Jaiprakash Power',
        current: '\$14.20',
        prevClose: '-0.20(1.39%)',
      ),
      ChildData(
        icon: 'assets/zomato.png',
        companyName: 'Zomato',
        current: '\$12.50',
        prevClose: '-0.10(0.80%)',
      ),
      ChildData(
        icon: 'assets/suzlon.png',
        companyName: 'Suzlon Energy',
        current: '\$12.50',
        prevClose: '-0.10(0.80%)',
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Search Stocks',
                hintStyle: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                prefixIcon: const Icon(Icons.search_outlined),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5.0, bottom: 7.5),
              child: Text(
                'Stocks',
                style: GoogleFonts.poppins(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: stocksData
                    .map((data) => Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Stocks1Widget(childData: data),
                        ))
                    .toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: Text(
                'Most bought',
                style: GoogleFonts.poppins(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: mostBoughtData.length,
                itemBuilder: (context, index) {
                  return MostBought(childData: mostBoughtData[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
