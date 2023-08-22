import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class MyPdfViewer extends StatefulWidget {
  final String path;
  MyPdfViewer({required this.path});
  @override
  _MyPdfViewerState createState() => _MyPdfViewerState();
}

class _MyPdfViewerState extends State<MyPdfViewer> {
  PdfViewerController pdfViewController = PdfViewerController();
  bool isReady = false;

  @override
  void dispose() {
    pdfViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("PDF Document"),
        ),
        body: SfPdfViewer.asset(widget.path));
  }
}
