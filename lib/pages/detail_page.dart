import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final Map<String, dynamic> song;

  DetailPage({required this.song});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  double rating = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.song['title'])),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Judul: ${widget.song['title']}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text("Artis: ${widget.song['artist']}", style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            Text("Beri Penilaian:", style: TextStyle(fontSize: 18)),
            Slider(
              value: rating,
              onChanged: (newRating) {
                setState(() {
                  rating = newRating;
                });
              },
              min: 0,
              max: 5,
              divisions: 5,
              label: rating.toString(),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, rating);
              },
              child: Text("Simpan & Kembali"),
            ),
          ],
        ),
      ),
    );
  }
}
