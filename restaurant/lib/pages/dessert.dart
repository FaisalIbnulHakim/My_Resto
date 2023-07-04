import 'package:flutter/material.dart';

class DessertItem {
  final String id;
  final String url;
  final String name;
  final String sub;

  DessertItem({
    required this.id,
    required this.url,
    required this.name,
    required this.sub,
  });
}

List<DessertItem> desserts = [
  DessertItem(
    id: "1",
    url:
        'https://images.unsplash.com/photo-1606143704849-eb181ba1543a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=415&q=80',
    name: "Rendang",
    sub: "Makanan khas dari olahan daging sapi yang dimasak lama",
  ),
  DessertItem(
    id: "2",
    url:
        'https://images.unsplash.com/photo-1680674774705-90b4904b3a7f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
    name: "Nasi Goreng",
    sub: "Makanan berupa nasi yang digoreng dan dicampur dalam minyak goreng",
  ),
  DessertItem(
    id: "3",
    url:
        'https://images.unsplash.com/photo-1647102398925-e23f6486ca04?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
    name: "Ayam Goreng",
    sub: "Daging ayam yang dibaluri tepung terigu dan di goreng dalam minyak",
  ),
  DessertItem(
    id: "4",
    url:
        'https://images.unsplash.com/photo-1645696329525-8ec3bee460a9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1029&q=80',
    name: "Mie Goreng",
    sub: "Hidangan mie yang dimasak dengan digoreng tumis yang nikmat",
  ),
  DessertItem(
    id: "5",
    url:
        'https://images.unsplash.com/photo-1645696301019-35adcc18fc21?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1029&q=80',
    name: "Sate",
    sub:
        "Makanan yang terbuat dari daging yang dipotong kecil-kecil dan ditusuk",
  )
];

class Dessert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drink"),
        centerTitle: true,
        // leading: Container(),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20),
        child: GridView.builder(
          itemCount: desserts.length,
          itemBuilder: (context, index) => buildDessert(item: desserts[index]),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 9 / 13,
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
        ),
      ),
    );
  }

  Widget buildDessert({
    required DessertItem item,
  }) =>
      Padding(
        padding: EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            decoration: BoxDecoration(
              color: Colors
                  .grey.shade300, // Ubah warna latar belakang ke grey.shade300
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      item.url,
                      height: 120,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            item.name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: "Signika"),
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                          thickness: 1.0,
                        ),
                        Text(
                          item.sub,
                          textAlign: TextAlign.left,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontFamily: "Signika"),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
}
