import 'package:flutter/material.dart';

void main() {
  runApp(Rentalapp());
}

class Rentalapp extends StatelessWidget {
  const Rentalapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Homescreen());
  }
}

class Homescreen extends StatelessWidget {
  Homescreen({super.key});
  final List popularlist = [
    {
      "image":
          "https://images.unsplash.com/photo-1612438214708-f428a707dd4e?q=80&w=1074&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "place": "India",
    },
    {
      "image":
          "https://images.unsplash.com/photo-1596484552834-6a58f850e0a1?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "place": "Moscow",
    },
    {
      "image":
          "https://images.unsplash.com/photo-1503572327579-b5c6afe5c5c5?q=80&w=742&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "place": "USA",
    },
  ];
  final List recommendedlist = [
    {
      "image":
          "https://img.magnific.com/free-photo/charming-yellow-house-with-wooden-windows-green-grassy-garden_181624-8074.jpg?semt=ais_hybrid&w=740&q=80",
      "price": "\$120",
      "title": "Carinthia Lake see Breakfast ...",
      "subtitle": "Private room / 4 beds",
      "rating": "4",
    },
    {
      "image":
          "https://img.freepik.com/free-photo/old-house-made-national-romanian-style-green-yard-foreground_1268-18324.jpg?semt=ais_hybrid&w=740&q=80",
      "price": "\$400",
      "title": "Carinthia Lake see Breakfast ...",
      "subtitle": "Private room / 4 beds",
      "rating": "4",
    },
  ];
  final mostviewedlist = [
    {
      "image":
          "https://static.wixstatic.com/media/c3cfda_d2aec4a4f02741bfa305fb9cbb02af34~mv2.jpeg/v1/fill/w_1000,h_801,al_c,q_85,usm_0.66_1.00_0.01/c3cfda_d2aec4a4f02741bfa305fb9cbb02af34~mv2.jpeg",
      "price": "\$90",
      "title": "Carinthia Lake see Breakfast ...",
      "subtitle": "Private room / 4 beds",
      "rating": "4",
    },
    {
      "image":
          "https://photos.zillowstatic.com/fp/657d6af8bb14b06cf022dd7c116a99da-cc_ft_960.jpg",
      "price": "\$300",
      "title": "Carinthia Lake see Breakfast ...",
      "subtitle": "Private room / 4 beds",
      "rating": "4",
    },
    {
      "image":
          "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQXE21X1P4P1ZpAip-WWIUNYMGJV6g9lt6NjMMbK5-35YRmTX7m",
      "price": "\$240",
      "title": "Carinthia Lake see Breakfast ...",
      "subtitle": "Private room / 4 beds",
      "rating": "4",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Explore"),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "saved",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel),
            label: "Trips",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: "Inbox",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: "Profile",
          ),
        ],
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: constraints.maxWidth * 0.45,
                      width: double.infinity,
                      color: Colors.grey[100],
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Explore The World! By Travelling",
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 12,
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(Icons.search, size: 20),
                                        SizedBox(width: 10),
                                        Text(
                                          "Where did you go?",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 16),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                padding: EdgeInsets.all(14),
                                child: Icon(Icons.tune),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Popular locations",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: constraints.maxWidth * 0.45,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: popularlist.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(right: 0),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  width: constraints.maxWidth * 0.33,
                                  height: constraints.maxWidth * 0.40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned.fill(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            16,
                                          ),
                                          child: Image.network(
                                            popularlist[index]["image"],
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),

                                      Positioned(
                                        bottom: 10,
                                        left: 4,
                                        right: 4,
                                        child: Text(
                                          popularlist[index]["place"],
                                          textAlign: TextAlign.center,

                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Recommended",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: constraints.maxWidth * 0.85,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: recommendedlist.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(right: 14),
                            child: Container(
                              width: constraints.maxWidth * 0.66,
                              margin: EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: constraints.maxWidth * 0.46,
                                    width: constraints.maxWidth * 0.65,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          recommendedlist[index]["image"],
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: Padding(
                                        padding: EdgeInsets.all(8),
                                        child: CircleAvatar(
                                          radius: 20,
                                          backgroundColor: Colors.white,
                                          child: Icon(
                                            Icons.favorite,
                                            color: Colors.grey[400],
                                            size: 28,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(10, 10, 10, 4),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          recommendedlist[index]["price"],
                                          style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "/Night⚡",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Spacer(),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.red,
                                              size: 15,
                                            ),
                                            Text(
                                              recommendedlist[index]["rating"],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    child: Text(
                                      recommendedlist[index]["title"],
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                      recommendedlist[index]["subtitle"],
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Container(
                      height: constraints.maxWidth * 0.65,
                      width: double.infinity,
                      margin: EdgeInsets.only(bottom: 15, left: 10, right: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0,
                            right: 0,
                            bottom: 0,
                            left: 0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Transform.flip(
                                flipX: true,
                                child: Image.network(
                                  "https://foodandhospitality.incrediblegoa.org/wp-content/uploads/2024/03/Top-10-Cafes-in-South-of-Goa.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned.fill(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Color.fromRGBO(0, 0, 0, 0.5),
                                    Colors.transparent,
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Hosting Fee for\nas low as 1%",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 15),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 30,
                                    vertical: 7,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(35),
                                  ),
                                  child: Text(
                                    "Become a Host",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "Most Viewed",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Column(
                      children: [
                        for (int i = 0; i < mostviewedlist.length; i++)
                          Mostviewed(
                            data: mostviewedlist[i],
                            imageheight: constraints.maxHeight * 0.25,
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Mostviewed extends StatelessWidget {
  final Map data;
  final double imageheight;

  const Mostviewed({super.key, required this.data, required this.imageheight});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15, right: 15, left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: imageheight,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: NetworkImage(data["image"]),
                fit: BoxFit.cover,
              ),
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.grey[400],
                    size: 28,
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  data["price"],
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text("/Night⚡", style: TextStyle(fontWeight: FontWeight.bold)),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.star, color: Colors.red, size: 15),
                    Text(data["rating"]),
                  ],
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              data["title"],
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Padding(padding: EdgeInsets.all(10), child: Text(data["subtitle"])),
        ],
      ),
    );
  }
}
