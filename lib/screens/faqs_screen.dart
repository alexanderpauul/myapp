
import 'package:flutter/material.dart';

class FaqsScreen extends StatelessWidget {
  const FaqsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FAQs'),
      ),
      body: ListView(
        children: const [
          ExpansionTile(
            title: Text('What is the first step?'),
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                    'The first step is to determine your eligibility for the various immigration programs. You can use the official government website to find the best program for you.'),
              ),
            ],
          ),
          ExpansionTile(
            title: Text('How long does the process take?'),
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                    'The processing time varies depending on the program and your individual circumstances. It can take anywhere from a few months to several years.'),
              ),
            ],
          ),
          ExpansionTile(
            title: Text('Can I work while my application is in process?'),
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                    'This depends on the type of application you have submitted. Some programs allow you to apply for a work permit while your application is being processed.'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
