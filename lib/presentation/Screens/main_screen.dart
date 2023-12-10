import 'package:cis_task/presentation/widgets/custom_app_bar.dart';
import 'package:cis_task/presentation/widgets/custom_horizintal_list_view.dart';
import 'package:cis_task/presentation/widgets/custom_list_view.dart';
import 'package:cis_task/presentation/widgets/custom_nav_bar.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CustomAppBar(),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIconColor: Colors.grey[500],
                  prefixIcon: const Icon(Icons.search),
                  hintStyle: TextStyle(color: Colors.grey[500]),
                  contentPadding: EdgeInsets.zero,
                  fillColor: Colors.grey[300],
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
              child: CustomHorizintalListView(),
            ),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: CustomListView(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blueAccent,
        child: const Icon(Icons.messenger),
      ),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}
