import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

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
          'Privacy Policy',
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
              _section(
                'Last updated',
                'August 26, 2025. Your privacy matters to us. This Privacy Policy explains how Travel Match collects, uses, and shares information when you use our app.',
              ),
              const SizedBox(height: 16),
              _section(
                '1. Information We Collect',
                'We may collect information you provide (e.g., profile details, photos, messages) and information automatically collected through your use (e.g., device info, usage data, approximate location).',
              ),
              const SizedBox(height: 16),
              _section(
                '2. How We Use Information',
                'We use your information to provide and improve the Service, personalize your experience, enable matching and messaging, process payments, ensure safety, and communicate with you.',
              ),
              const SizedBox(height: 16),
              _section(
                '3. Sharing of Information',
                'We may share information with service providers (e.g., cloud hosting, analytics, payments), with other users per your privacy settings, or when required by law. We do not sell personal data.',
              ),
              const SizedBox(height: 16),
              _section(
                '4. Cookies & Tracking',
                'We use cookies, device identifiers, and similar technologies to operate the Service, remember preferences, and measure performance.',
              ),
              const SizedBox(height: 16),
              _section(
                '5. Data Retention',
                'We retain information as long as needed to provide the Service and for legitimate business or legal purposes. You may request deletion where applicable.',
              ),
              const SizedBox(height: 16),
              _section(
                '6. Your Choices & Rights',
                'You may access, update, or delete certain information via the app. Depending on your region, you may have rights to data access, portability, objection, or restriction.',
              ),
              const SizedBox(height: 16),
              _section(
                '7. Children’s Privacy',
                'Our Service is not intended for individuals under 18. We do not knowingly collect data from children.',
              ),
              const SizedBox(height: 16),
              _section(
                '8. Security',
                'We implement reasonable measures to protect your information. No method of transmission or storage is 100% secure.',
              ),
              const SizedBox(height: 16),
              _section(
                '9. International Transfers',
                'Your information may be transferred to and processed in countries other than your own, which may have different data protection laws.',
              ),
              const SizedBox(height: 16),
              _section(
                '10. Changes to This Policy',
                'We may update this Privacy Policy from time to time. We will notify you of material changes as required.',
              ),
              const SizedBox(height: 16),
              _section(
                '11. Contact Us',
                'Questions? Contact support within the app or via the email provided in the store listing.',
              ),
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
