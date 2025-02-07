/// File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/
library;

import 'package:flutter/material.dart';

class notification extends StatelessWidget {
  const notification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications"),
        backgroundColor: const Color(0xff3a57e8),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            ListTile(
              leading: Icon(Icons.notifications, color: Color(0xff1e295b)),
              title: Text("Order Delivered"),
              subtitle: Text("Your order #12345 has been delivered."),
              trailing: Text("5m ago"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.notifications, color: Color(0xff1e295b)),
              title: Text("New Offer!"),
              subtitle: Text("Get 20% off on your next order."),
              trailing: Text("1h ago"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.notifications, color: Color(0xff1e295b)),
              title: Text("Payment Received"),
              subtitle: Text("Your payment for order #12345 is confirmed."),
              trailing: Text("2d ago"),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
