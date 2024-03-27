import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  // タブごとのページ内容
  static const List<Widget> _widgetOptions = <Widget>[
    const RecentBooksPage(), // 直近登録した本の一覧
    const SearchBooksPage(), // タイトル検索
    const BarcodeScanPage(), // バーコード読み取り
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'トップ'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: '検索'),
          BottomNavigationBarItem(icon: Icon(Icons.camera_alt), label: 'バーコード読み取り'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
class RecentBooksPage extends StatelessWidget {
  const RecentBooksPage({Key? key}) : super(key: key); // const コンストラクタを追加

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('直近登録した本の一覧'),
    );
  }
}

class SearchBooksPage extends StatelessWidget {
  const SearchBooksPage({Key? key}) : super(key: key); // const コンストラクタを追加

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('タイトル検索'),
    );
  }
}

class BarcodeScanPage extends StatelessWidget {
  const BarcodeScanPage({Key? key}) : super(key: key); // const コンストラクタを追加

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('バーコード読み取り'),
    );
  }
}

