part of 'search_imports.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final SearchController searchController = SearchController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BuildCustomAppBar(),
      body: Column(
        children: [
          BuildSearchField(searchController: searchController),
          Flexible(
            child: ListView(
              children: [
                ...List.generate(
                  2,
                  (index) => const BuildSuggestItem(),
                ),
                ...List.generate(
                  2,
                  (index) => const BuildCustomSuggestItem(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
