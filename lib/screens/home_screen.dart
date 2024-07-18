import 'package:explorify/screens/sites_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var height, width;

  List<String> iconImages = [
    "assets/images/hiking.png",
    "assets/images/camping.png",
    "assets/images/staycation.png",
    "assets/images/beach.png",
    "assets/images/resorts.png",
  ];

  final List<String> images = [
    "hiking_gulugod.jpg",
    "camping_nasugbu.jpg",
    "staycation_calatagan.jpg",
    "beach_laiya.jpg",
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
      "name": "Kahilom",
      "location": "Nasugbu, Batangas",
      "rating": 4,
      "price": "300.00",
      "description":
          "Kahilom Campsite is a peaceful haven whether you’re traveling solo or as a group. This beach resort is the perfect place to set up camp and unwind at prices that won’t break the bank."
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
      "name": "Cocoons",
      "location": "Laiya, Batangas",
      "rating": 4,
      "price": "2000.00",
      "description":
          "Cocoons at Laiya Beach is a unique glamping experience that offers cozy and well-designed cocoon-like accommodations. It's perfect for those who want to experience nature without giving up comfort."
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

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
                height: height * 0.035,
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
                height: height * 0.035,
              ),
              SizedBox(
                height: height * 0.08,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: iconImages.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          height: height * 0.068,
                          width: width * 0.14,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black54,
                          ),
                          child: Center(
                            child: Image(
                              height: height * 0.04,
                              image: AssetImage(
                                iconImages[index],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: height * 0.035,
              ),
              SizedBox(
                height: width * 0.05,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "All",
                          style: GoogleFonts.lexend(
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "Hiking",
                          style: GoogleFonts.lexend(
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "Camp Sites",
                          style: GoogleFonts.lexend(
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "Staycation",
                          style: GoogleFonts.lexend(
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "Beach",
                          style: GoogleFonts.lexend(
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "Resorts",
                          style: GoogleFonts.lexend(
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.035,
              ),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                        initialRating: placeDetails[index]['rating']!,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemSize: 18,
                                        unratedColor: Colors.white,
                                        itemPadding: EdgeInsets.symmetric(
                                            horizontal: 4.0),
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
      ),
    );
  }
}
