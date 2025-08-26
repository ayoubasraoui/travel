import 'package:flutter/material.dart';
import 'package:flutter2/Plans/Plus.dart';
import 'package:flutter2/Plans/Vip.dart';
import 'package:flutter2/Plans/Black.dart';

class SubscriptionSettingsScreen extends StatefulWidget {
  const SubscriptionSettingsScreen({super.key});

  @override
  State<SubscriptionSettingsScreen> createState() =>
      _SubscriptionSettingsScreenState();
}

class _SubscriptionSettingsScreenState
    extends State<SubscriptionSettingsScreen> {
  // In a real app, fetch these from backend or local storage
  String _currentPlan = 'Free';
  DateTime? _renewalDate; // null for non-subscribed

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
          'Subscription',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontFamily: 'PlusJakartaSans',
            fontWeight: FontWeight.bold,
          ),
        ),
        // actions: [
        //   TextButton(
        //     onPressed: _onSave,
        //     child: const Text(
        //       'Save',
        //       style: TextStyle(color: Colors.white),
        //     ),
        //   ),
        // ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _sectionTitle('Your plan'),
              _card(
                children: [
                  ListTile(
                    leading: const Icon(Icons.workspace_premium,
                        color: Color(0xFF43716C)),
                    title: Text(
                      _currentPlan,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                    subtitle: Text(
                      _renewalText(),
                      style: const TextStyle(color: Colors.white70),
                    ),
                    trailing: _currentPlan == 'Free'
                        ? null
                        : TextButton(
                            onPressed: _manageSubscription,
                            child: const Text('Manage'),
                          ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              _sectionTitle('Upgrade options'),
              _card(
                children: [
                  _planTile(
                    badge: 'Plus',
                    badgeColor: const Color(0xFF275661),
                    title: 'Travel Plus',
                    subtitle: 'Unlimited likes, rewinds and more',
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => PlusPlanScreen()),
                      );
                      _refreshPlanState();
                    },
                  ),
                  _divider(),
                  _planTile(
                    badge: 'VIP',
                    badgeColor: const Color(0xFFB5A35D),
                    title: 'Travel VIP',
                    subtitle: 'Priority likes and pre-match chat',
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => VipPlanScreen()),
                      );
                      _refreshPlanState();
                    },
                  ),
                  _divider(),
                  _planTile(
                    badge: 'Black',
                    badgeColor: Colors.black,
                    title: 'Travel Black',
                    subtitle: 'See who likes you and match instantly',
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => BlackPlanScreen()),
                      );
                      _refreshPlanState();
                    },
                  ),
                ],
              ),
              const SizedBox(height: 24),
              _sectionTitle('Restore / Help'),
              _card(
                children: [
                  ListTile(
                    leading:
                        const Icon(Icons.restore, color: Color(0xFF43716C)),
                    title: const Text('Restore purchases',
                        style: TextStyle(color: Colors.white)),
                    subtitle: const Text(
                        'If you already purchased on this account',
                        style: TextStyle(color: Colors.white70)),
                    onTap: _restorePurchases,
                    trailing:
                        const Icon(Icons.chevron_right, color: Colors.white54),
                  ),
                  _divider(),
                  ListTile(
                    leading: const Icon(Icons.help_outline,
                        color: Color(0xFF43716C)),
                    title: const Text('Subscription help',
                        style: TextStyle(color: Colors.white)),
                    subtitle: const Text('FAQs, billing, and troubleshooting',
                        style: TextStyle(color: Colors.white70)),
                    onTap: _openHelp,
                    trailing:
                        const Icon(Icons.chevron_right, color: Colors.white54),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onSave() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Subscription settings saved')),
    );
    Navigator.pop(context);
  }

  void _manageSubscription() {
    // TODO: Link to native store subscription management if applicable
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Open store subscription management')),
    );
  }

  void _restorePurchases() {
    // TODO: Implement restore purchases via billing SDK
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Attempting to restore purchases...')),
    );
  }

  void _openHelp() {
    // TODO: Navigate to in-app help or open a URL
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Open subscription help')),
    );
  }

  String _renewalText() {
    if (_currentPlan == 'Free') return 'Upgrade to unlock premium features';
    if (_renewalDate == null) return 'Active subscription';
    return 'Renews on ${_renewalDate!.day}/${_renewalDate!.month}/${_renewalDate!.year}';
  }

  void _refreshPlanState() {
    // TODO: After returning from a plan screen, refresh current plan from backend
    setState(() {});
  }

  Widget _planTile({
    required String badge,
    required Color badgeColor,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        decoration: BoxDecoration(
          color: badgeColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          badge,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.bold,
            fontFamily: 'PlusJakartaSans',
          ),
        ),
      ),
      title: Text(title, style: const TextStyle(color: Colors.white)),
      subtitle: Text(subtitle, style: const TextStyle(color: Colors.white70)),
      trailing: const Icon(Icons.chevron_right, color: Colors.white54),
      onTap: onTap,
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

  Widget _divider() {
    return const Divider(height: 1, color: Colors.white12);
  }
}
