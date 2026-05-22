import 'package:flutter/material.dart';
import '../widgets/navigation_helper.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

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
                'About JNNCE',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Color(0xFF0D47A1)),
              ),
              const SizedBox(height: 24),
              const Text(
                'Jawaharlal Nehru New College of Engineering (JNNCE), established in the year 1980 by the National Education Society (NES), Shivamogga, is a premier technical institution in Karnataka. The college is affiliated with Visvesvaraya Technological University (VTU), Belagavi, and is approved by the All India Council for Technical Education (AICTE), New Delhi.',
                style: TextStyle(fontSize: 18, height: 1.6),
              ),
              const SizedBox(height: 24),
              const Text(
                'Spread over a sprawling 40-acre campus, JNNCE offers a serene and conducive environment for learning. It aims to develop technical manpower of quality and standards, with strong ethics, to meet the challenges of the globalized world.',
                style: TextStyle(fontSize: 18, height: 1.6),
              ),
              const SizedBox(height: 40),
              _buildVisionMissionGrid(isDesktop),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildVisionMissionGrid(bool isDesktop) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Wrap(
          spacing: 24,
          runSpacing: 24,
          children: [
            _buildCard('Vision', 'To be a pacesetting institution in technical & management education and research by producing leaders in the fields of Science, Engineering, and Management.'),
            _buildCard('Mission', 'To impart quality education through a holistic learning environment, promote research and innovation, and foster industry-institute interaction.'),
          ],
        );
      },
    );
  }

  Widget _buildCard(String title, String content) {
    return Container(
      width: 400,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.blue.shade100),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF0D47A1))),
          const SizedBox(height: 16),
          Text(content, style: const TextStyle(fontSize: 16, height: 1.5)),
        ],
      ),
    );
  }
}
