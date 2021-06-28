import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/widgets.dart';

class ECommerce extends StatefulWidget {
  @override
  _ECommerceState createState() => _ECommerceState();
}

class _ECommerceState extends State<ECommerce> {
  // int selectedIndex = 0;
  // final widgetOptions = [
  //   Text(''),
  //   Text(''),
  //   Text(''),
  //   Text(''),
  // ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    var items = [
      {
        'name': 'Iphone 12',
        'img': 'iphone',
        'ratings': 5.0,
        'reviews': 23,
        'price': 90,
        'pieces': 20,
        'quantity': 1,
        'width': width,
      },
      {
        'name': 'Note 20 Ultra',
        'img': 'note20ultra',
        'ratings': 5.0,
        'reviews': 23,
        'price': 90,
        'pieces': 20,
        'quantity': 1,
        'width': width,
      },
      {
        'name': 'Macbook Air',
        'img': 'macbookAir',
        'ratings': 5.0,
        'reviews': 23,
        'price': 90,
        'pieces': 20,
        'quantity': 1,
        'width': width,
      },
      {
        'name': 'Macbook Pro',
        'img': 'macbookPro',
        'ratings': 5.0,
        'reviews': 23,
        'price': 90,
        'pieces': 20,
        'quantity': 1,
        'width': width,
      },
      {
        'name': 'Gaming PC',
        'img': 'gamingPC',
        'ratings': 5.0,
        'reviews': 23,
        'price': 90,
        'pieces': 20,
        'quantity': 1,
        'width': width,
      },
      {
        'name': 'Backlit Keyboard',
        'img': 'backlitKeyboard',
        'ratings': 5.0,
        'reviews': 23,
        'price': 90,
        'pieces': 20,
        'quantity': 1,
        'width': width,
      },
      {
        'name': 'Mercedes',
        'img': 'mercedes',
        'ratings': 5.0,
        'reviews': 23,
        'price': 90,
        'pieces': 20,
        'quantity': 1,
        'width': width,
      },
      {
        'name': 'Mutton',
        'img': 'mutton',
        'ratings': 5.0,
        'reviews': 23,
        'price': 90,
        'pieces': 20,
        'quantity': 1,
        'width': width,
      },
    ];

    var itemCategories = [
      {
        'name': 'Clothes',
        'quantity': '5',
        'icon': Icons.local_drink_rounded,
      },
      {
        'name': 'Electronic',
        'quantity': '20',
        'icon': Icons.bolt,
      },
      {
        'name': 'Households',
        'quantity': '9',
        'icon': Icons.event_seat,
      },
      {
        'name': 'Appliances',
        'quantity': '5',
        'icon': Icons.bolt,
      },
      {
        'name': 'Others',
        'quantity': '15',
        'icon': Icons.double_arrow,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        title: Center(
            child: Text("Ecom App UI",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ))),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Items",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "View More",
                      style: TextStyle(fontSize: 16, color: Colors.purple),
                    ),
                  ],
                ),
              ),
              CarouselSlider(
                  items: items.map((item) {
                    return Builder(
                      builder: (BuildContext context) {
                        return product(item);
                      },
                    );
                  }).toList(),
                  options: CarouselOptions(
                    height: 400,
                    aspectRatio: 16 / 9,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: false,
                    reverse: false,
                    autoPlay: false,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "More Categories",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              CarouselSlider(
                  items: itemCategories.map((itemCategory) {
                    return Builder(
                      builder: (BuildContext context) {
                        return categories(itemCategory);
                      },
                    );
                  }).toList(),
                  options: CarouselOptions(
                    height: 100,
                    aspectRatio: 2 / 1,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: false,
                    reverse: false,
                    autoPlay: false,
                    enlargeCenterPage: false,
                    scrollDirection: Axis.horizontal,
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Items",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "View More",
                      style: TextStyle(fontSize: 16, color: Colors.purple),
                    ),
                  ],
                ),
              ),
              GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  // Create a grid with 2 columns. If you change the scrollDirection to
                  // horizontal, this produces 2 rows.
                  crossAxisCount: 2,
                  // Generate 100 widgets that display their index in the List.
                  children: List.generate(
                    items.length,
                    (index) {
                      return popularProduct(items[index]);
                    },
                  )),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.search,
            size: 35,
          ),
          backgroundColor: Colors.purple,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 15),
              child: Icon(Icons.home),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 15, right: 30),
              child: Icon(Icons.favorite),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 15, left: 30),
              child: Icon(Icons.add_shopping_cart_sharp),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 15),
              child: Icon(Icons.person),
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurple,
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        onTap: _onItemTapped,
        unselectedItemColor: Color(0xff888888),
      ),
    );
  }
}

Widget product(data) {
  return Center(
    child: Container(
      width: data['width'],
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: data['width'],
                maxHeight: 300,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  width: double.infinity,
                  height: 300,
                  image: AssetImage('assets/${data["img"]}.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Flexible(
              child: ListTile(
                title: Text(
                  data['name'],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
                subtitle: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow[600],
                          size: 14,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow[600],
                          size: 14,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow[600],
                          size: 14,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow[600],
                          size: 14,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow[600],
                          size: 14,
                        ),
                        Text(" ${data['ratings']} (${data['reviews']} Review)"),
                      ]),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}

Widget categories(data) {
  return Card(
    elevation: 2,
    shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.grey, width: 0.5),
        borderRadius: BorderRadius.circular(5)),
    child: Center(
      child: ListTile(
        leading: Icon(
          data['icon'],
          color: Colors.purple,
          size: 40,
        ),
        title: Text(data['name'],
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        subtitle: Text("${data['quantity']} items"),
      ),
    ),
  );
}

Widget popularProduct(data) {
  return Container(
    width: data['width'],
    height: 600,
    margin: EdgeInsets.symmetric(
      vertical: 10,
    ),
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              width: 150,
              height: 150,
              image: AssetImage('assets/${data["img"]}.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          Flexible(
            child: ListTile(
              title: Text(
                data['name'],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow[600],
                        size: 14,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow[600],
                        size: 14,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow[600],
                        size: 14,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow[600],
                        size: 14,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow[600],
                        size: 14,
                      ),
                      Text(" ${data['ratings']} (${data['reviews']} Review)"),
                    ]),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}
