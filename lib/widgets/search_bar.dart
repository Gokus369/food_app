import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  TextEditingController _searchController = TextEditingController();
  List<String> _data = List.generate(50, (index) => 'Item $index');
  List<String> _filteredData = [];

  @override
  void initState() {
    super.initState();
    _filteredData.addAll(_data);
  }

  void _filterSearchResults(String query) {
    List<String> searchResults = _data
        .where((item) => item.toLowerCase().contains(query.toLowerCase()))
        .toList();
    setState(() {
      _filteredData = searchResults;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              hintText: 'Search...',
              prefixIcon: Icon(Icons.search),
              suffixIcon: IconButton(
                icon: Icon(Icons.clear),
                onPressed: () {
                  _searchController.clear();
                  _filterSearchResults('');
                },
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            onChanged: _filterSearchResults,
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: _filteredData.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(_filteredData[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}
