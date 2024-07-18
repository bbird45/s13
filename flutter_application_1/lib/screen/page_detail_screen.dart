import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/page_service.dart';

class PageDetailScreen extends StatefulWidget {
  final String id;
  const PageDetailScreen({super.key, required this.id});

  @override
  State<PageDetailScreen> createState() => _PageDetailScreenState();
}

class _PageDetailScreenState extends State<PageDetailScreen> {
  dynamic _page = [];

  @override
  void initState() {
    super.initState();
    PageService.fetchPage(widget.id).then((page){
      setState(() {
        _page = page;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_page['title']),
      ),
      body: Container(
        child: Text(_page['content']),
      ),
    );
  }
}