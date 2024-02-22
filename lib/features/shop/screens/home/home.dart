import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/features/shop/screens/home/widgets/primary_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimartyHeaderContainer(
              child: Column(
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
