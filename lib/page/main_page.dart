import 'package:flutter/material.dart';
import 'title_section.dart';
import 'sections_menu.dart';
import '../widgets/logo_navbar.dart';


class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0E0A22),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                const TitleSection(),
                const SizedBox(height: 24),
                const SizedBox(
                  height: 200,
                  child: SectionsMenu(),
                  ),
                const SizedBox(height: 24),
                ]
              ),
            ),
          ),

          const Positioned(
            top: 20.0,
            left: 20.0,
            child: LogoNavbar(),
          ),
        ],
      ),
    );
  }
}