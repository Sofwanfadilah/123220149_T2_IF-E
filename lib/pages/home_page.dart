import 'package:flutter/material.dart';
import 'detail_page.dart';
import 'profile_page.dart';
class HomePage extends StatelessWidget {
  final String username;
  HomePage({required this.username});

  final List<Map<String, dynamic>> songs = [
    {'title': 'Lagu A', 'artist': 'Artis 1'},
    {'title': 'Lagu B', 'artist': 'Artis 2'},
    {'title': 'Lagu C', 'artist': 'Artis 3'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Daftar Lagu')),
      body: ListView.builder(
        itemCount: songs.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(songs[index]['title']),
            subtitle: Text(songs[index]['artist']),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(song: songs[index]),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.person),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProfilePage(username: username)),
          );
        },
      ),
    );
  }
}
