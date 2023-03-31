import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:template/helper.dart';

class CoreBottomLabelNavigationBar extends StatelessWidget {
  const CoreBottomLabelNavigationBar({
    required this.callback,
    required this.items,
    required this.selectedIndex,
    super.key,
  });

  final void Function(int) callback;
  final List<Tuple2<Icon, String>> items;
  final int selectedIndex;

  List<BottomNavigationBarItem> _createBottomNavigationBarItems(
    BuildContext context,
  ) {
    final List<BottomNavigationBarItem> bottomNavigationBarItems = [];
    for (final item in items) {
      final BottomNavigationBarItem bottomNavigationBarItem =
          BottomNavigationBarItem(
        icon: item.first,
        label: Helper.translate(context, item.second),
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
        ),
      ),
    );
  }
}
