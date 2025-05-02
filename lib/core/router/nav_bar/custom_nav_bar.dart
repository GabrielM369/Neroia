import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:neroia_app/core/localizations/translations_extension.dart';

class CustomNavBar extends ConsumerStatefulWidget {
  final StatefulNavigationShell navigationShell;
  final List<Widget> children;

  const CustomNavBar({required this.navigationShell, required this.children, super.key});

  @override
  CustomNavBarState createState() => CustomNavBarState();
}

class CustomNavBarState extends ConsumerState<CustomNavBar> with SingleTickerProviderStateMixin {
  final GlobalKey key = GlobalKey();
  double _bottomOffset = 0;

  void setBottomOffset() {
    final RenderBox? renderBox = key.currentContext?.findRenderObject() as RenderBox?;
    final Size? size = renderBox?.size;
    _bottomOffset = size?.height ?? 0.0;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => setBottomOffset());
  }

  @override
  Widget build(BuildContext context) {
    final EdgeInsets viewInsets = MediaQuery.viewInsetsOf(context);

    return Material(
      child: Column(
        children: <Widget>[
          Expanded(
            child: MediaQuery(
              data: MediaQuery.of(
                context,
              ).copyWith(viewInsets: viewInsets.copyWith(bottom: viewInsets.bottom - _bottomOffset)),
              child: Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: widget.children[widget.navigationShell.currentIndex],
              ),
            ),
          ),
          MediaQuery.removeViewPadding(
            context: context,
            removeTop: true,
            child: NavigationBar(
              selectedIndex: widget.navigationShell.currentIndex,
              onDestinationSelected: (int index) {
                widget.navigationShell.goBranch(index);
              },
              destinations: <Widget>[
                NavigationDestination(
                  label: context.i18n.navBar.home,
                  icon: const Icon(HugeIcons.strokeRoundedHome09),
                  selectedIcon: const Icon(HugeIcons.strokeRoundedHome09),
                  tooltip: '',
                ),
                NavigationDestination(
                  label: context.i18n.navBar.messages,
                  icon: const Icon(HugeIcons.strokeRoundedBubbleChat),
                  selectedIcon: const Icon(HugeIcons.strokeRoundedBubbleChat),
                  tooltip: '',
                ),
                NavigationDestination(
                  label: context.i18n.navBar.saved,
                  icon: const Icon(HugeIcons.strokeRoundedFavourite),
                  selectedIcon: const Icon(HugeIcons.strokeRoundedFavourite),
                  tooltip: '',
                ),
                NavigationDestination(
                  label: context.i18n.navBar.aiAssistant,
                  icon: const Icon(HugeIcons.strokeRoundedDashboardCircle),
                  selectedIcon: const Icon(HugeIcons.strokeRoundedDashboardCircle),
                  tooltip: '',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}