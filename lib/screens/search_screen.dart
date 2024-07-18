import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class CustomListTile {
  final IconData icon;
  final String title;
  CustomListTile({
    required this.icon,
    required this.title,
  });
}

List<CustomListTile> customListTiles = [
  CustomListTile(
    icon: Iconsax.search_normal,
    title: "Hiking in Nasugbu",
  ),
  CustomListTile(
    icon: Iconsax.search_normal,
    title: "Camping in Laiya",
  ),
  CustomListTile(
    icon: Iconsax.search_normal,
    title: "Beach in Calatagan",
  ),
];

class _SearchScreenState extends State<SearchScreen> {
  var height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
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
              height: height * 0.063,
              width: width * 0.9,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.2),
                borderRadius: BorderRadius.circular(13),
              ),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(left: width * 0.03),
                  child: TextFormField(
                    cursorColor: Colors.white,
                    style: TextStyle(
                      fontSize: width * 0.045,
                      color: Colors.black,
                    ),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search here...",
                      hintStyle: GoogleFonts.lexend(
                        color: Colors.white,
                        fontSize: width * 0.045,
                      ),
                      prefixIcon: Icon(
                        Iconsax.search_normal,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.015,
            ),
            SizedBox(
              height: height * 0.63,
              width: width * 0.9,
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                      padding: const EdgeInsets.all(20),
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 5),
                              child: Text(
                                "Recent searches",
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        ...List.generate(
                          customListTiles.length,
                          (index) {
                            final tile = customListTiles[index];
                            return Card(
                              color: Colors.black54.withOpacity(0.2),
                              child: ListTile(
                                leading: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const SizedBox(width: 5),
                                    Icon(
                                      tile.icon,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                title: Text(
                                  tile.title,
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
