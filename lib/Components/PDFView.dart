import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class MyPdfViewer extends StatefulWidget {
  final String pdfPath;
  MyPdfViewer({required this.pdfPath});
  @override
  _MyPdfViewerState createState() => _MyPdfViewerState();
}

class _MyPdfViewerState extends State<MyPdfViewer> {
  late PDFViewController pdfViewController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PDF Document"),
      ),
      body: PDFView(
        filePath: widget.pdfPath,
        autoSpacing: true,
        enableSwipe: true,
        pageSnap: true,
        swipeHorizontal: true,
        onError: (error) {
          print(error);
        },
        onPageError: (page, error) {
          print('$page: ${error.toString()}');
        },
        onViewCreated: (PDFViewController vc) {
          pdfViewController = vc;
        },
        // onPageChanged: (int page, int total) {
        //   print('page change: $page/$total');
        // },
      ),
    );
  }
}
