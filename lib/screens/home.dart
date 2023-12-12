import 'package:dmc_prototype/widgets/branch_section.dart';
import 'package:dmc_prototype/widgets/file_section.dart';
import 'package:dmc_prototype/widgets/province_section.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Row(children: [
        ProvinceSection(
          width: screenSize.width * 0.2,
          height: screenSize.height,
        ),
        BranchSection(
          width: screenSize.width * 0.3,
          height: screenSize.height,
        ),
        FilesSection(
          width: screenSize.width * 0.5,
          height: screenSize.height,
          controller: _searchController,
        ),
      ]),
    );
  }
}
