import 'package:alemeno/data/packages_dummy_data.dart';
import 'package:alemeno/data/tests_dummy_data.dart';
import 'package:alemeno/models/tests.dart';
import 'package:alemeno/screens/my_cart.dart';
import 'package:alemeno/widgets/grid_item.dart';
import 'package:alemeno/widgets/popular_package.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List cartItems = [];

  void addToCart(Test item) {
    setState(() {
      cartItems.add(item);
      print(cartItems);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildPopularTestsSection(),
            buildPopularPackagesSection(),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      shadowColor: Colors.transparent,
      title: const Text(
        "Logo",
        style: TextStyle(
          color: Colors.black,
        ),
        textAlign: TextAlign.center,
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MyCart(cartItems: cartItems),
              ),
            );
          },
          icon: const Icon(Icons.shopping_cart, color: Colors.black),
        ),
      ],
    );
  }

  Widget buildPopularTestsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Popular Lab Tests",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(16, 33, 125, 1),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "View More",
                  style: TextStyle(
                    color: Color.fromRGBO(16, 33, 125, 1),
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
        buildPopularTestsGrid(),
      ],
    );
  }

  Widget buildPopularTestsGrid() {
    return GridView(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: popularTests.map((test) {
        return GridItem(
          item: test,
          addToCart: addToCart,
        );
      }).toList(),
    );
  }

  Widget buildPopularPackagesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          child: Text(
            "Popular Packages",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(16, 33, 125, 1),
            ),
          ),
        ),
        buildPopularPackages(),
      ],
    );
  }

  Widget buildPopularPackages() {
    return Column(
      children: popularPackages.map((package) {
        return Center(
          child: PopularPackage(
            title: package.title,
            noTests: package.noTests,
            expense: package.expense,
          ),
        );
      }).toList(),
    );
  }
}
