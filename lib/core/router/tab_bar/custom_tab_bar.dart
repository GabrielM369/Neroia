import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:neroia_app/core/theme/colors.dart';

class CustomTabBar extends ConsumerStatefulWidget {
  final StatefulNavigationShell navigationShell;
  final List<Widget> children;

  const CustomTabBar({super.key, required this.navigationShell, required this.children});

  @override
  CustomTabBarState createState() => CustomTabBarState();
}

class CustomTabBarState extends ConsumerState<CustomTabBar> with SingleTickerProviderStateMixin {
  final GlobalKey key = GlobalKey();
  double _bottomOffset = 0.0;

  void setBottomOffset() {
    final RenderBox? renderBox = key.currentContext?.findRenderObject() as RenderBox?;
    final size = renderBox?.size;
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
    final viewInsets = MediaQuery.viewInsetsOf(context);

    return Material(
      child: Column(
        children: [
          Expanded(
            child: MediaQuery(
              data: MediaQuery.of(
                context,
              ).copyWith(viewInsets: viewInsets.copyWith(bottom: viewInsets.bottom - _bottomOffset)),
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                child: widget.children[widget.navigationShell.currentIndex],
              ),
            ),
          ),
          MediaQuery.removeViewPadding(
            context: context,
            removeTop: true,
            removeBottom: true,
            child: NavigationBar(
              selectedIndex: widget.navigationShell.currentIndex,
              onDestinationSelected: (index) {
                widget.navigationShell.goBranch(index);
              },
              backgroundColor: Colors.white,
              surfaceTintColor: Colors.transparent,
              indicatorColor: Colors.transparent,
              destinations: [
                NavigationDestination(
                  label: '',
                  icon: GradientIcon(
                    icon: HugeIcons.strokeRoundedDashboardCircle,
                    size: 28,
                    gradient: LinearGradient(
                      colors: [ref.colors.darkGrey.withAlpha(100), ref.colors.darkGrey.withAlpha(100)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  selectedIcon: GradientIcon(
                    icon: HugeIcons.strokeRoundedDashboardCircle,
                    size: 28,
                    gradient: LinearGradient(
                      colors: [ref.colors.primary, ref.colors.secondary],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  tooltip: '',
                ),
                NavigationDestination(
                  label: '',
                  icon: GradientIcon(
                    icon: HugeIcons.strokeRoundedUser,
                    size: 28,
                    gradient: LinearGradient(
                      colors: [ref.colors.darkGrey.withAlpha(100), ref.colors.darkGrey.withAlpha(100)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  selectedIcon: GradientIcon(
                    icon: HugeIcons.strokeRoundedUser,
                    size: 28,
                    gradient: LinearGradient(
                      colors: [ref.colors.primary, ref.colors.secondary],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  tooltip: '',
                ),
                NavigationDestination(
                  label: '',
                  icon: GradientIcon(
                    icon: HugeIcons.strokeRoundedUser,
                    size: 28,
                    gradient: LinearGradient(
                      colors: [ref.colors.darkGrey.withAlpha(100), ref.colors.darkGrey.withAlpha(100)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  selectedIcon: GradientIcon(
                    icon: HugeIcons.strokeRoundedUser,
                    size: 28,
                    gradient: LinearGradient(
                      colors: [ref.colors.primary, ref.colors.secondary],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
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

class GradientIcon extends StatelessWidget {
  final IconData icon;
  final double size;
  final Gradient gradient;

  const GradientIcon({super.key, required this.icon, this.size = 24.0, required this.gradient});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) => gradient.createShader(bounds),
      child: HugeIcon(icon: icon, size: size, color: Colors.white),
    );
  }
}
