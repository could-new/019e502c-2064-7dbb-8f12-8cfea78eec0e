import 'package:flutter/material.dart';
import '../widgets/navigation_helper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavigationHelper.buildAppBar(context),
      drawer: NavigationHelper.buildDrawer(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeroSection(context),
            _buildAnnouncementsSection(context),
          ],
        ),
      ),
    );
  }

  Widget _buildHeroSection(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width >= 800;
    return Container(
      width: double.infinity,
      color: Colors.blue.shade50,
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? 100 : 24,
        vertical: 60,
      ),
      child: Column(
        children: [
          const Icon(Icons.school_outlined, size: 80, color: Color(0xFF0D47A1)),
          const SizedBox(height: 24),
          Text(
            'Jawaharlal Nehru New College of Engineering',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: isDesktop ? 40 : 28,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF0D47A1),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Approved by AICTE, New Delhi | Affiliated to VTU, Belagavi\nRecognized by Govt. of Karnataka',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: isDesktop ? 20 : 16,
              color: Colors.grey[800],
            ),
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/about'),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF0D47A1),
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            ),
            child: const Text('Discover JNNCE', style: TextStyle(fontSize: 18)),
          ),
        ],
      ),
    );
  }

  Widget _buildAnnouncementsSection(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width >= 800;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? 100 : 24,
        vertical: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Latest Announcements',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 24),
          Wrap(
            spacing: 24,
            runSpacing: 24,
            children: [
              _buildAnnouncementCard('Admissions Open 2026', 'Applications are now open for all BE, M.Tech, and MBA programs for the upcoming academic year.'),
              _buildAnnouncementCard('NAAC Accreditation', "JNNCE has been re-accredited with an 'A' grade by the National Assessment and Accreditation Council."),
              _buildAnnouncementCard('Placement Drive', 'Upcoming mega placement drive involving over 50 top IT and core engineering companies.'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAnnouncementCard(String title, String desc) {
    return Container(
      width: 320,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          )
        ],
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.campaign, color: Colors.amber.shade700, size: 32),
          const SizedBox(height: 16),
          Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Text(desc, style: TextStyle(color: Colors.grey.shade700)),
        ],
      ),
    );
  }
}
