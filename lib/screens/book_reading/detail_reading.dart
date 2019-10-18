import 'package:flutter/material.dart';

class DetailReading extends StatelessWidget {
  final String urlImage =
      'https://images.unsplash.com/photo-1535498730771-e735b998cd64?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black87),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.bookmark_border,
                color: Colors.black87,
              ),
            )
          ],
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(16, 8, 16, 0),
          child: Column(
            children: <Widget>[
              Container(
                height: 250,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          width: 180,
                          height: 240,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.black12, blurRadius: 15),
                            ],
                            image: DecorationImage(
                                image: NetworkImage(urlImage),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 27),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Under water Photograpy ',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 14, bottom: 14),
                                  child: Text(
                                    'By Juliano Ben',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.grey[500]),
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: List.generate(
                                        5,
                                        (index) => Icon(
                                          index < 4
                                              ? Icons.star
                                              : Icons.star_border,
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
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        FlatButton.icon(
                          icon: Icon(
                            Icons.message,
                            color: Colors.grey[600],
                          ),
                          label: Text(
                            'See Reviews',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 10,
                            ),
                          ),
                          padding: EdgeInsets.only(left: 0),
                          onPressed: () {},
                        ),
                        FlatButton.icon(
                          icon: Icon(
                            Icons.favorite,
                            color: Colors.blue[800],
                          ),
                          label: Text(
                            'Like',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 10,
                            ),
                          ),
                          onPressed: () {},
                        ),
                        FlatButton.icon(
                          icon: Icon(
                            Icons.share,
                            color: Colors.grey[600],
                          ),
                          label: Text(
                            'Share',
                            style: TextStyle(
                                color: Colors.grey[600], fontSize: 10),
                          ),
                          onPressed: () {},
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, bottom: 25),
                      child: Text(
                        'About the Book',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800]),
                      ),
                    ),
                    Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting. Lorem Ipsum is simply dummy text of the printing and typesetting. Lorem Ipsum is simply dummy text of the printing and typesetting',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
