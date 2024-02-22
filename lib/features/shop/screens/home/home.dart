import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:flutter_ecommerce/features/shop/screens/home/widgets/primary_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimartyHeaderContainer(
              child: Column(
                children: [
                  // Appbar
                  THomeAppBar(),

                  // Search bar

                  // Categories
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
