import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Center(
              child: Text(
                'Dashboard',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ),
          DrawerListTile(
            title: 'Dashboard',
            icon: Icons.dashboard_rounded,
            onPress: () {},
          ),
          DrawerListTile(
            title: 'Transactions',
            icon: Icons.attach_money_rounded,
            onPress: () {},
          ),
          DrawerListTile(
            title: 'Task',
            icon: Icons.task_rounded,
            onPress: () {},
          ),
          DrawerListTile(
            title: 'Notifications',
            icon: Icons.notifications_rounded,
            onPress: () {},
          ),
          DrawerListTile(
            title: 'Groups',
            icon: Icons.supervisor_account_rounded,
            onPress: () {},
          ),
          DrawerListTile(
            title: 'Settings',
            icon: Icons.settings_rounded,
            onPress: () {},
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onPress;

  const DrawerListTile({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      horizontalTitleGap: 0.0,
      leading: Icon(
        icon,
        color: Colors.white54,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}
