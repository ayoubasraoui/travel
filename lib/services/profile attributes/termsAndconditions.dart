import 'package:flutter/material.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181A20),
      appBar: AppBar(
        backgroundColor: const Color(0xFF181A20),
        elevation: 0,
        toolbarHeight: 64,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white, size: 28),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Terms & Conditions',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontFamily: 'PlusJakartaSans',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _section('Last updated',
                  'August 26, 2025. Please read these Terms and Conditions ("Terms") carefully before using the app.'),
              const SizedBox(height: 16),
              _section('1. Introduction',
                  'By accessing or using Travel Match (the "Service"), you agree to be bound by these Terms. If you do not agree, do not use the Service.'),
              const SizedBox(height: 16),
              _section('2. Eligibility',
                  'You must be at least 18 years old to use the Service. By using the Service, you represent and warrant that you meet this requirement.'),
              const SizedBox(height: 16),
              _section('3. Account & Security',
                  'You are responsible for safeguarding your account and for any activities or actions under your account. Notify us immediately upon becoming aware of any breach of security.'),
              const SizedBox(height: 16),
              _section('4. Subscriptions & Billing',
                  'Certain features are offered via paid subscriptions. Subscriptions automatically renew unless canceled in accordance with the platform store policies. Prices and packages may change.'),
              const SizedBox(height: 16),
              _section('5. User Content',
                  'You retain ownership of the content you post. By posting, you grant us a worldwide, non-exclusive, royalty-free license to use, reproduce, modify, and display such content for the purpose of operating and improving the Service.'),
              const SizedBox(height: 16),
              _section('6. Prohibited Conduct',
                  'You agree not to misuse the Service, including but not limited to: harassing others, posting illegal or infringing content, spamming, scraping, or attempting to access the Service via unauthorized means.'),
              const SizedBox(height: 16),
              _section('7. Termination',
                  'We may suspend or terminate your access to the Service at any time for conduct that we believe violates these Terms or is harmful to other users or the Service.'),
              const SizedBox(height: 16),
              _section('8. Disclaimers',
                  'The Service is provided on an "AS IS" and "AS AVAILABLE" basis. We disclaim all warranties of any kind, whether express or implied, including but not limited to fitness for a particular purpose and non-infringement.'),
              const SizedBox(height: 16),
              _section('9. Limitation of Liability',
                  'To the maximum extent permitted by law, in no event shall we be liable for any indirect, incidental, special, consequential, or punitive damages arising out of or relating to your use of the Service.'),
              const SizedBox(height: 16),
              _section('10. Governing Law',
                  'These Terms shall be governed by and construed in accordance with the laws of your jurisdiction, without regard to its conflict of law provisions.'),
              const SizedBox(height: 16),
              _section('11. Contact Us',
                  'If you have any questions about these Terms, please contact support within the app or via the email listed in the app store listing.'),
              const SizedBox(height: 20),
              Center(
                child: Text(
                  '© ${DateTime.now().year} Travel Match. All rights reserved.',
                  style: const TextStyle(color: Colors.white54, fontSize: 12),
                ),
              ),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }

  Widget _section(String title, String body) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF23242A),
        borderRadius: BorderRadius.circular(14),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'PlusJakartaSans',
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            body,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 14,
              height: 1.5,
              fontFamily: 'PlusJakartaSans',
            ),
          ),
        ],
      ),
    );
  }
}
