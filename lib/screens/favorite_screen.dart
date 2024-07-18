import 'package:explorify/screens/sites_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  var height, width;

  List<String> iconImages = [
    "assets/images/hiking.png",
    "assets/images/staycation.png",
    "assets/images/resorts.png",
  ];

  final List<String> images = [
    "hiking_gulugod.jpg",
    "staycation_calatagan.jpg",
    "resort_fuego.jpg",
  ];

  final List<Map<String, dynamic>> placeDetails = [
    {
      "name": "Mt. Gulugod Baboy",
      "location": "Mabini, Batangas",
      "rating": 4.4,
      "price": "1200.00",
      "description":
          "Mt. Gulugod Baboy is a minor climb with a 2/9 difficulty level and a Trail class of 1 to 2. It features a panoramic view of the bays, rolling hills covered in green, and several known mountains in the south."
    },
    {
      "name": "Stilts",
      "location": "Calatagan, Batangas",
      "rating": 4.7,
      "price": "2000.00",
      "description":
          "Stilts Calatagan Beach Resort is known for its serene and picturesque floating cottages, white sand beaches, and various recreational activities. It's a great place for relaxation and enjoying the beauty of nature."
    },
    {
      "name": "Club Punta Fuego",
      "location": "Nasugbu, Batangas",
      "rating": 4.9,
      "price": "2000.00",
      "description":
          "Club Punta Fuego is a luxurious resort with stunning ocean views, private beaches, and world-class amenities. It's ideal for a relaxing getaway or a romantic escape."
    }
  ];

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
              height: height * 0.015,
            ),
            Container(
                padding: const EdgeInsets.all(20),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 5),
                      child: Text(
                        "My Favorites",
                        style: TextStyle(color: Colors.black54, fontSize: 16),
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: height * 0.44,
              width: width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: placeDetails.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: width * 0.05,
                      vertical: height * 0.01,
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SitesScreen(
                              image: images[index],
                              name: placeDetails[index]["name"],
                              location: placeDetails[index]["location"],
                              rating: placeDetails[index]["rating"],
                              description: placeDetails[index]["description"],
                            ),
                          ),
                        );
                      },
                      child: Container(
                        width: width * 0.6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                        ),
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    "assets/images/${images[index]}",
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: SizedBox(
                                height: height * 0.14,
                                width: width * 0.47,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      placeDetails[index]['name']!,
                                      style: GoogleFonts.lexend(
                                        fontSize: width * 0.043,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      placeDetails[index]['location']!,
                                      style: GoogleFonts.lexend(
                                        fontSize: width * 0.033,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                    RatingBar.builder(
                                      initialRating: placeDetails[index]
                                          ['rating']!,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemSize: 18,
                                      unratedColor: Colors.white,
                                      itemPadding:
                                          EdgeInsets.symmetric(horizontal: 4.0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: width * 0.05,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
