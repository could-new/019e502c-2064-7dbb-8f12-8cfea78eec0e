import 'package:flutter/material.dart';

class NavigationHelper {
  static PreferredSizeWidget buildAppBar(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width >= 800;
    return AppBar(
      backgroundColor: const Color(0xFF0D47A1),
      foregroundColor: Colors.white,
      title: const Text('JNNCE Shivamogga', style: TextStyle(fontWeight: FontWeight.bold)),
      actions: isDesktop
          ? [
              TextButton(
                onPressed: () => Navigator.pushReplacementNamed(context, '/'),
                child: const Text('Home', style: TextStyle(color: Colors.white)),
              ),
              TextButton(
                onPressed: () => Navigator.pushReplacementNamed(context, '/about'),
                child: const Text('About', style: TextStyle(color: Colors.white)),
              ),
              TextButton(
                onPressed: () => Navigator.pushReplacementNamed(context, '/academics'),
                child: const Text('Academics', style: TextStyle(color: Colors.white)),
              ),
              const SizedBox(width: 16),
            ]
          : null,
    );
  }

  static Widget? buildDrawer(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width >= 800;
    if (isDesktop) return null;

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Color(0xFF0D47A1)),
            child: Text(
              'JNNCE\nShivamogga',
              style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () => Navigator.pushReplacementNamed(context, '/'),
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('About'),
            onTap: () => Navigator.pushReplacementNamed(context, '/about'),
          ),
          ListTile(
            leading: const Icon(Icons.school),
            title: const Text('Academics'),
            onTap: () => Navigator.pushReplacementNamed(context, '/academics'),
          ),
        ],
      ),
    );
  }
}
