import 'package:flutter/material.dart';

var serviceList = [
  {'title': 'Corte masculino', 'duration': 45, 'price': 30},
  {'title': 'Corte feminino', 'duration': 60, 'price': 50},
  {'title': 'Platinado', 'duration': 120, 'price': 100},
  {'title': 'Tratamento Completo', 'duration': 100, 'price': 90},
];

class DetailScreen extends StatelessWidget {
  final stylist;

  const DetailScreen(this.stylist);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: <Widget>[
              // ignore: sized_box_for_whitespace
              Container(
                height: MediaQuery.of(context).size.height / 3 + 20,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Image.asset(
                      'assets/detail_bg.png',
                      fit: BoxFit.fill,
                    ),
                    // ignore: sized_box_for_whitespace
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      color: Colors.purple.withOpacity(0.1),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 50,
                left: 20,
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 4 + 7,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(
                          height: 107,
                        ),
                        const Text(
                          'Tipos de serviços',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ServiceTile(serviceList[0]),
                        ServiceTile(serviceList[1]),
                        ServiceTile(serviceList[2]),
                        ServiceTile(serviceList[3]),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height / 5,
                            color: const Color(0xff4E295B),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: const <Widget>[
                                    Text(
                                      'Thomas',
                                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      ' Mar 9, 2020',
                                      style: TextStyle(fontWeight: FontWeight.w300, color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Color(0xff4E295B),
                                      size: 16,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Color(0xff4E295B),
                                      size: 16,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Color(0xff4E295B),
                                      size: 16,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Color(0xff4E295B),
                                      size: 16,
                                    ),
                                  ],
                                ),
                                // ignore: prefer_const_constructors
                                SizedBox(
                                  height: 10,
                                ),
                                // ignore: prefer_const_constructors
                                Text(
                                  'Otimo corte de cabelo, bem atencioso, recomendo!',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 3 - 120,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width / 3 - 20,
                        height: MediaQuery.of(context).size.height / 6 + 20,
                        decoration: BoxDecoration(
                          color: stylist['bgColor'],
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Stack(
                          fit: StackFit.expand,
                          children: <Widget>[
                            Positioned(
                              top: 10,
                              right: -25,
                              child: Image.asset(
                                stylist['imgUrl'],
                                scale: 1.65,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            stylist['stylistName'],
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            stylist['salonName'],
                            style: const TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: <Widget>[
                              const Icon(
                                Icons.star,
                                size: 10,
                                color: Color(0xffFF8573),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                stylist['rating'],
                                style: const TextStyle(color: Color(0xffFF8573)),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                '(${stylist['rateAmount']})',
                                style: const TextStyle(color: Colors.grey),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 10,
                top: MediaQuery.of(context).size.height / 3 - 55,
                child: MaterialButton(
                  onPressed: () {},
                  padding: const EdgeInsets.all(10),
                  shape: const CircleBorder(),
                  color: Colors.white,
                  child: const Icon(Icons.favorite_border),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ServiceTile extends StatelessWidget {
  final service;
  const ServiceTile(this.service);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width / 2 - 40,
                child: Text(
                  service['title'],
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                '${service['duration']} Min',
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Text(
            '\$${service['price']}',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          MaterialButton(
            onPressed: () {},
            color: const Color.fromARGB(255, 149, 114, 163),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              'Agendar',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
