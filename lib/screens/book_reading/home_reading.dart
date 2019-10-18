import 'package:flutter/material.dart';
import 'package:my_flutter_challenges/screens/book_reading/detail_reading.dart';

class HomeReading extends StatefulWidget {
  @override
  _HomeReadingState createState() => _HomeReadingState();
}

class _HomeReadingState extends State<HomeReading> {
  final categories = [
    'Flutter',
    'React',
    'React Native',
    'Dart',
    'Javascript',
    'Java',
  ];

  final String urlImage =
      'https://images.unsplash.com/photo-1535498730771-e735b998cd64?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80';

  int _categoryIndex = 0;

  _onCategorySelect(int index) {
    setState(() {
      _categoryIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 24, top: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(bottom: 32),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'Browse',
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 24, bottom: 3),
                      child: Text(
                        'Recommanded',
                        style: TextStyle(color: Colors.grey[600], fontSize: 16),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 15),
                margin: EdgeInsets.only(bottom: 42),
                width: MediaQuery.of(context).size.width,
                height: 25,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        _onCategorySelect(index);
                      },
                      child: _listCategory(index),
                    );
                  },
                ),
              ),
              Expanded(
                child: Container(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: categories.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {},
                        child: bookWidget(),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget bookWidget() {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => DetailReading()));
      },
      child: Container(
        width: 200,
        height: 250,
        margin: EdgeInsets.only(bottom: 50, right: 20),
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 190,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.black12, blurRadius: 15),
                  ],
                  image: DecorationImage(
                      image: NetworkImage(urlImage), fit: BoxFit.cover),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 180,
                height: 220,
                padding: EdgeInsets.all(24),
                margin: EdgeInsets.only(left: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.black12, blurRadius: 10),
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      'Under water Photograpy',
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'By Juliano Ben',
                      style: TextStyle(fontSize: 10, color: Colors.grey[500]),
                    ),
                    Row(
                      children: <Widget>[
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                            5,
                            (index) => Icon(
                              index < 4 ? Icons.star : Icons.star_border,
                              color: Colors.amberAccent,
                              size: 16,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 6),
                          child: Text(
                            '4,5',
                            style: TextStyle(
                                color: Colors.amber[800],
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                              Text(
                                '2500',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 4),
                                child: Text(
                                  'views',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios, color: Colors.grey),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _listCategory(int index) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 25),
      margin: EdgeInsets.only(right: 15),
      child: Text(
        categories[index],
        style: TextStyle(
            color: _categoryIndex == index ? Colors.white : Colors.grey[600],
            fontSize: 12),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: _categoryIndex == index ? Colors.blue[800] : Colors.grey[200],
      ),
    );
  }
}
