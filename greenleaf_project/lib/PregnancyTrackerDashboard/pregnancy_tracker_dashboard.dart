import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:greenleaf_project/G-Chat/G-Chat.dart';
import 'package:greenleaf_project/PregnancyTrackerDashboard/pregnancystaggered.dart';
import 'package:greenleaf_project/components/CardStaggeredWidget.dart';
import 'package:greenleaf_project/components/optionWidget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:greenleaf_project/main_pages/period_tracker_dashboard.dart';
import 'package:greenleaf_project/wallet/walletpage1.dart';

class PregnancyTrackerDashboard extends StatefulWidget {
  const PregnancyTrackerDashboard({super.key});

  @override
  State<PregnancyTrackerDashboard> createState() =>
      _PregnancyTrackerDashboardState();
}

int _currentIndex = 0;

final tabs = [const PeriodTrackerDashboard(), const G_Chat(), const WalletPage1()];

class _PregnancyTrackerDashboardState extends State<PregnancyTrackerDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        selectedIconTheme: const IconThemeData(color: Colors.purple),
        unselectedIconTheme: const IconThemeData(color: Colors.grey),
        items: const [
          BottomNavigationBarItem(
              label: 'Dashboard', icon: Icon(Icons.dashboard_customize)),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_rounded), label: 'G-chat'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.wallet), label: 'Wallet'),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
