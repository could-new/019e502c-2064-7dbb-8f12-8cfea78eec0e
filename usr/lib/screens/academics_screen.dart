import 'package:flutter/material.dart';
import '../widgets/navigation_helper.dart';

class AcademicsScreen extends StatelessWidget {
  const AcademicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width >= 800;

    return Scaffold(
      appBar: NavigationHelper.buildAppBar(context),
      drawer: NavigationHelper.buildDrawer(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: isDesktop ? 100 : 24,
            vertical: 40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Academic Departments',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Color(0xFF0D47A1)),
              ),
              const SizedBox(height: 24),
              const Text(
                'JNNCE offers a wide range of undergraduate (BE), postgraduate (M.Tech, MBA, MCA), and Ph.D. programs across various disciplines.',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 40),
              LayoutBuilder(
                builder: (context, constraints) {
                  final double width = constraints.maxWidth;
                  final int crossAxisCount = width > 1000 ? 3 : (width > 600 ? 2 : 1);
                  
                  return GridView.count(
                    crossAxisCount: crossAxisCount,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 24,
                    childAspectRatio: 2.5,
                    children: [
                      _buildDeptCard('Computer Science & Engineering', Icons.computer),
                      _buildDeptCard('Information Science & Engineering', Icons.data_object),
                      _buildDeptCard('Electronics & Communication', Icons.memory),
                      _buildDeptCard('Electrical & Electronics', Icons.electrical_services),
                      _buildDeptCard('Civil Engineering', Icons.architecture),
                      _buildDeptCard('Mechanical Engineering', Icons.settings),
                      _buildDeptCard('Master of Business Administration', Icons.business),
                      _buildDeptCard('Master of Computer Applications', Icons.laptop_chromebook),
                    ],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDeptCard(String title, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.blue.shade50,
            radius: 28,
            child: Icon(icon, color: const Color(0xFF0D47A1), size: 28),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
