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
          "https://static.toiimg.com/thumb/68410812/Kedarnath.jpg?width=1200&height=900",
      "place": "India",
    },
    {
      "image":
          "https://thumbs.dreamstime.com/b/st-basil-s-cathedral-red-square-moscow-st-basil-s-cathedral-red-square-moscow-light-morning-autumn-sun-105659837.jpg",
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
      "title": "Carinthia Lake see Breakfast",
      "subtitle": "Private room / 4 beds",
      "rating": "5",
    },
    {
      "image":
          "https://photos.zillowstatic.com/fp/657d6af8bb14b06cf022dd7c116a99da-cc_ft_960.jpg",
      "price": "\$300",
      "title": "Carinthia Lake see Breakfast lorem",
      "subtitle": "Private room / 4 beds",
      "rating": "5",
    },
    {
      "image":
          "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQXE21X1P4P1ZpAip-WWIUNYMGJV6g9lt6NjMMbK5-35YRmTX7m",
      "price": "\$240",
      "title": "Carinthia Lake see Breakfast lorem",
      "subtitle": "Private room / 4 beds",
      "rating": "4",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: constraints.maxWidth * 0.50,
                    width: double.infinity,
                    color: const Color(0xFFF5F4FA),
                    padding: EdgeInsets.only(
                      left: 25,
                      right: 16,
                      top: 25,
                      bottom: 16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Explore the world! By \nTravelling",
                          style: TextStyle(
                            fontSize: 28,
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
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 15,
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.search, size: 23),

                                      SizedBox(width: 15),
                                      Text(
                                        "Where did you go?",
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: const Color.fromARGB(255, 76, 76, 76),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 12),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(17),
                              ),
                              padding: EdgeInsets.all(14),
                              child: Icon(Icons.tune),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 38),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      "Popular locations",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: constraints.maxWidth * 0.52,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      itemCount: popularlist.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(right: 12),
                          child: Column(
                            children: [
                              Container(
                                width: constraints.maxWidth * 0.32,
                                height: constraints.maxWidth * 0.42,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned.fill(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: Image.network(
                                          popularlist[index]["image"],
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      left: 0,
                                      right: 0,
                                      child: Container(
                                        height:
                                            (constraints.maxWidth * 0.42) *
                                            0.41,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(16),
                                            bottomRight: Radius.circular(16),
                                          ),
                                          gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              Colors.transparent,
                                              Colors.black.withValues(alpha: 0.95),
                                            ],
                                          ),
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
                                          fontSize: 17,
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
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      "Recommended",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: 21),
                  SizedBox(
                    height: constraints.maxWidth * 0.79,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      itemCount: recommendedlist.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(right: 14),
                          child: Container(
                            width: constraints.maxWidth * 0.62,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: constraints.maxWidth * 0.45,
                                  width: constraints.maxWidth * 0.62,
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
                                  padding: EdgeInsets.fromLTRB(10, 9, 10, 4),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        recommendedlist[index]["price"],
                                        style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        " / Night⚡",
                                        style: TextStyle(
                                          fontSize: 14,
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
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Text(
                                    recommendedlist[index]["title"],
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10, top: 5),
                                  child: Text(
                                    recommendedlist[index]["subtitle"],
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
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
                    height: constraints.maxWidth * 0.75,
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 15, left: 25, right: 25),
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
                                  Color.fromRGBO(0, 0, 0, 0.6),
                                  Colors.transparent,
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Hosting Fee for\nas low as 1%",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
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
                                    fontSize: 13,
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
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      "Most viewed",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Column(
                    children: [
                      for (int i = 0; i < mostviewedlist.length; i++)
                        Mostviewed(
                          data: mostviewedlist[i],
                          imageheight: constraints.maxHeight * 0.24,
                        ),
                    ],
                  ),
                ],
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
      margin: EdgeInsets.only(bottom: 15, right: 25, left: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: imageheight,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
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
            padding: EdgeInsets.fromLTRB(10, 10, 10, 3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  data["price"],
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  " / Night⚡",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
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
            padding: EdgeInsets.only(left: 10),
            child: Text(
              data["title"],
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left: 10, top: 3,bottom: 16),
            child: Text(
              data["subtitle"],
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
