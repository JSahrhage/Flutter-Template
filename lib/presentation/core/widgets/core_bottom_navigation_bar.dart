import 'package:flutter/material.dart';

class CoreBottomNavigationBar extends StatelessWidget {
  const CoreBottomNavigationBar({
    required this.callback,
    required this.items,
    required this.selectedIndex,
    super.key,
  });

  final void Function(int) callback;
  final List<Icon> items;
  final int selectedIndex;

  List<BottomNavigationBarItem> _createBottomNavigationBarItems(
    BuildContext context,
  ) {
    final bottomNavigationBarItems = <BottomNavigationBarItem>[];
    for (final item in items) {
      final bottomNavigationBarItem = BottomNavigationBarItem(
        icon: item,
        label: '',
      );
      bottomNavigationBarItems.add(bottomNavigationBarItem);
    }
    return bottomNavigationBarItems;
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(color: Color.fromARGB(128, 255, 255, 255), blurRadius: 10),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          backgroundColor: Theme.of(context).colorScheme.secondary,
          unselectedItemColor: Theme.of(context).colorScheme.onSecondary,
          items: _createBottomNavigationBarItems(context),
          currentIndex: selectedIndex,
          onTap: callback,
          selectedItemColor: Theme.of(context).colorScheme.primary,
          showSelectedLabels: false,
          showUnselectedLabels: false,
        ),
      ),
    );
  }
}
