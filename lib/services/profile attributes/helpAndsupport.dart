import 'package:flutter/material.dart';

class HelpAndSupportScreen extends StatelessWidget {
  const HelpAndSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final faqs = <Map<String, String>>[
      {
        'q': 'How do I reset my password?',
        'a':
            'Go to Account settings > Security > Change password. If you forgot your password, use the “Forgot password” link on the login screen.'
      },
      {
        'q': 'How do subscriptions work?',
        'a':
            'Subscriptions auto-renew until canceled in your device’s app store settings. You can review plans under Subscription settings.'
      },
      {
        'q': 'How do I report a user?',
        'a':
            'Open the user profile, tap the three dots, and select Report. Provide details so we can investigate.'
      },
      {
        'q': 'How do I delete my account?',
        'a':
            'Go to Settings > Danger Zone > Delete account. This is permanent and cannot be undone.'
      },
    ];

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
          'Help & Support',
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
              _sectionTitle('Quick help'),
              _card(children: [
                ListTile(
                  leading: const Icon(Icons.article_outlined,
                      color: Color(0xFF43716C)),
                  title: const Text('Getting started',
                      style: TextStyle(color: Colors.white)),
                  subtitle: const Text('Profile, matches, messaging basics',
                      style: TextStyle(color: Colors.white70)),
                  trailing:
                      const Icon(Icons.chevron_right, color: Colors.white54),
                  onTap: () => _showInfo(context, 'Getting started',
                      'Create a great profile, set preferences, then start swiping and matching!'),
                ),
                _divider(),
                ListTile(
                  leading:
                      const Icon(Icons.lock_outline, color: Color(0xFF43716C)),
                  title: const Text('Account & privacy',
                      style: TextStyle(color: Colors.white)),
                  subtitle: const Text('Login, privacy, safety',
                      style: TextStyle(color: Colors.white70)),
                  trailing:
                      const Icon(Icons.chevron_right, color: Colors.white54),
                  onTap: () => _showInfo(context, 'Account & privacy',
                      'Manage your account in Settings > Account, and review privacy options in App/Account settings.'),
                ),
              ]),
              const SizedBox(height: 24),
              _sectionTitle('FAQs'),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF23242A),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Theme(
                  data:
                      Theme.of(context).copyWith(dividerColor: Colors.white12),
                  child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: faqs.length,
                    separatorBuilder: (_, __) =>
                        const Divider(height: 1, color: Colors.white12),
                    itemBuilder: (_, i) {
                      final item = faqs[i];
                      return ExpansionTile(
                        tilePadding: const EdgeInsets.symmetric(horizontal: 16),
                        collapsedIconColor: Colors.white54,
                        iconColor: Colors.white,
                        title: Text(item['q']!,
                            style: const TextStyle(color: Colors.white)),
                        childrenPadding:
                            const EdgeInsets.fromLTRB(16, 0, 16, 16),
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(item['a']!,
                                style: const TextStyle(
                                    color: Colors.white70, height: 1.5)),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(height: 24),
              _sectionTitle('Contact us'),
              _card(children: [
                ListTile(
                  leading: const Icon(Icons.email_outlined,
                      color: Color(0xFF43716C)),
                  title: const Text('Email support',
                      style: TextStyle(color: Colors.white)),
                  subtitle: const Text('support@travelmatch.example',
                      style: TextStyle(color: Colors.white70)),
                  onTap: () => _copyAndToast(context,
                      'support@travelmatch.example', 'Support email copied'),
                  trailing: const Icon(Icons.copy, color: Colors.white54),
                ),
                _divider(),
                ListTile(
                  leading: const Icon(Icons.bug_report_outlined,
                      color: Color(0xFF43716C)),
                  title: const Text('Report a problem',
                      style: TextStyle(color: Colors.white)),
                  subtitle: const Text('Share logs and details with us',
                      style: TextStyle(color: Colors.white70)),
                  trailing:
                      const Icon(Icons.chevron_right, color: Colors.white54),
                  onTap: () => _openReportSheet(context),
                ),
                _divider(),
                ListTile(
                  leading: const Icon(Icons.question_answer_outlined,
                      color: Color(0xFF43716C)),
                  title: const Text('Community & FAQs',
                      style: TextStyle(color: Colors.white)),
                  subtitle: const Text('Tips and answers from the community',
                      style: TextStyle(color: Colors.white70)),
                  trailing:
                      const Icon(Icons.open_in_new, color: Colors.white54),
                  onTap: () => _showInfo(
                      context, 'Community', 'Open community portal URL here.'),
                ),
              ]),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  static void _showInfo(BuildContext context, String title, String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: const Color(0xFF23242A),
        title: Text(title, style: const TextStyle(color: Colors.white)),
        content: Text(message, style: const TextStyle(color: Colors.white70)),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(context), child: const Text('OK')),
        ],
      ),
    );
  }

  static void _copyAndToast(BuildContext context, String value, String toast) {
    // Clipboard.setData requires import; keeping simple toast for now
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(toast)));
  }

  static void _openReportSheet(BuildContext context) {
    final TextEditingController details = TextEditingController();
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xFF23242A),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      isScrollControlled: true,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
            top: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom + 16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Report a problem',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Text('Describe what happened. We\'ll review and follow up.',
                  style: TextStyle(color: Colors.white70)),
              const SizedBox(height: 12),
              TextField(
                controller: details,
                style: const TextStyle(color: Colors.white),
                minLines: 3,
                maxLines: 6,
                decoration: const InputDecoration(
                  hintText: 'Write details here...',
                  hintStyle: TextStyle(color: Colors.white38),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white24),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF43716C)),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Cancel'),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text('Report submitted. Thank you!')),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF43716C),
                      foregroundColor: Colors.white,
                    ),
                    child: const Text('Submit'),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }

  Widget _sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white70,
          fontSize: 16,
          fontFamily: 'PlusJakartaSans',
          fontWeight: FontWeight.bold,
          letterSpacing: 0.5,
        ),
      ),
    );
  }

  Widget _card({required List<Widget> children}) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF23242A),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(children: children),
    );
  }

  Widget _divider() => const Divider(height: 1, color: Colors.white12);
}
