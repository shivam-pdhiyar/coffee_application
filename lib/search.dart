import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<dynamic> _photos = [];

  Future<void> fetchPhotos(String query) async {
    final apiKey = 'YOUR_PEXELS_API_KEY';
    final url = 'https://api.pexels.com/v1/search?query=$query&per_page=15&page=1';
    final response = await http.get(Uri.parse(url), headers: {'Authorization': apiKey});

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        _photos = data['photos'];
      });
    } else {
      print('Failed to load photos: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Pexels Search'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Search',
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    fetchPhotos(_controller.text);
                  },
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0,
                ),
                itemCount: _photos.length,
                itemBuilder: (context, index) {
                  final photo = _photos[index];
                  return Image.network(
                    photo['src']['medium'],
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}