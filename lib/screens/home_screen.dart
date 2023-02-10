import 'package:barber_app/screens/detail_screen.dart';
import 'package:flutter/material.dart';

const stylistData = [
  {
    'stylistName': 'Pedro Gabriel',
    'salonName': 'Beleza&Cia',
    'rating': '4.8',
    'rateAmount': '56',
    'imgUrl': 'assets/stylist1.png',
    'bgColor': Color(0xffFFF0EB),
  },
  {
    'stylistName': 'Leonardo Silva',
    'salonName': 'Beauty Studio',
    'rating': '4.7',
    'rateAmount': '80',
    'imgUrl': 'assets/stylist2.png',
    'bgColor': Color(0xffEBF6FF),
  },
  {
    'stylistName': 'Luiz Santos',
    'salonName': 'Studio Santos',
    'rating': '4.4',
    'rateAmount': '70',
    'imgUrl': 'assets/stylist3.png',
    'bgColor': Color(0xffFFF3EB),
  }
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4E295B),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const SizedBox(
                        height: 50,
                      ),
                      const Text(
                        'Cabeleireiros disponíveis',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      StylistCard(stylistData[0]),
                      StylistCard(stylistData[1]),
                      StylistCard(stylistData[2]),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StylistCard extends StatelessWidget {
  final stylist;
  const StylistCard(this.stylist);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 4 - 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(255, 232, 204, 238),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 20,
            right: -58,
            child: Image.asset(
              stylist['imgUrl'],
              width: MediaQuery.of(context).size.width * 0.52,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  stylist['stylistName'],
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  stylist['salonName'],
                  style: const TextStyle(fontWeight: FontWeight.w300),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    const Icon(
                      Icons.star,
                      size: 16,
                      color: Color(0xff4E295B),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      stylist['rating'],
                      style: const TextStyle(
                        color: Color(0xff4E295B),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(stylist)));
                  },
                  color: const Color(0xff4E295B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    'Ver perfil',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
