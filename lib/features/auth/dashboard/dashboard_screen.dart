import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:krypt/features/auth/dashboard/market_place.dart';
import 'package:krypt/util/app_icons.dart';
import 'package:krypt/util/theme/colors.dart';

@RoutePage(name: "DashboardScreenRoute")
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _currentIndex = 0;

  void setCurrentIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grey100,
      bottomNavigationBar: SizedBox(
        height: 70,
        child: Material(
          elevation: 14,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _renderBottomNavIcon(
                  _currentIndex,
                  positionIndex: 0,
                  selectedIcon: AppIcons.icHomeSelected,
                  unSelectedIcon: AppIcons.icHomeUnSelected,
                  onTap: () => setCurrentIndex(0),
                ),
                _renderBottomNavIcon(
                  _currentIndex,
                  positionIndex: 1,
                  selectedIcon: AppIcons.icMarketSelected,
                  unSelectedIcon: AppIcons.icMarketUnSelected,
                  onTap: () => setCurrentIndex(1),
                ),
                GestureDetector(
                  onTap: () => setCurrentIndex(-1),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(shape: BoxShape.circle, color: Color(0xFFD8A200)),
                    child: Center(child: AppIcons.icQrCodeScanner),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: _renderBottomNavIcon(
                    _currentIndex,
                    positionIndex: 2,
                    selectedIcon: AppIcons.icHistorySelected,
                    unSelectedIcon: AppIcons.icHistoryUnSelected,
                    onTap: () => setCurrentIndex(2),
                  ),
                ),
                _renderBottomNavIcon(
                  _currentIndex,
                  positionIndex: 3,
                  selectedIcon: AppIcons.icUserUnSelected,
                  unSelectedIcon: AppIcons.icUserUnSelected,
                  onTap: () => setCurrentIndex(3),
                )
              ],
            ),
          ),
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    switch (_currentIndex) {
      case 0:
        return Center(child: Text('Home Screen'));
      case 1:
        return const MarketScreen();
      case 2:
        return Center(child: Text('History Screen'));
      case 3:
        return Center(child: Text('User Screen'));
      default:
        return Container(color: Colors.red,); // Handle other cases if necessary
    }}

  Widget _renderBottomNavIcon(
    int index, {
    required VoidCallback onTap,
    required int positionIndex,
    required Widget selectedIcon,
    required Widget unSelectedIcon,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: index.isNegative || index != positionIndex ? unSelectedIcon : selectedIcon,
    );
  }
}
