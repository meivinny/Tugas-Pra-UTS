import 'package:flutter/material.dart';
import './ContentPage.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState(); // ambil kelas homestate untuk  grid view
}

class HomeState extends State <Home> {
  List<String> names = [
    'berita-1','berita-2','berita-3','berita-4','berita-5',
    'berita-6','berita-7','berita-8','berita-9','berita-10'
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Covid-19'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(names.length, (index){
          return GridTile(
            child: GestureDetector(
              child: Container(
                margin: const EdgeInsets.all(5.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('images/'+ names[index]+'.jpeg'),

                    )
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context){
                      return ContentPage(value: names[index]); // kirim data
                    }
                ));
              },
            ),
          );
        }),
      ),

    );
  }
}