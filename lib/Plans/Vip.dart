import 'package:flutter/material.dart';
import 'package:flutter2/services/profile.dart';

class VipPlanScreen extends StatefulWidget {
  @override
  _VipPlanScreenState createState() => _VipPlanScreenState();
}

class _VipPlanScreenState extends State<VipPlanScreen> {
  int _selectedPlanIndex = 0;
  final PageController _pageController = PageController(viewportFraction: 0.85);

  final List<Map<String, dynamic>> _plans = [
    {
      'duration': '1 Month',
      'price': 'US\$19.99',
      'pricePerWeek': 'US\$4.99/wk',
      'savings': null,
      'selected': true,
    },
    {
      'duration': '6 Months',
      'price': 'US\$59.99',
      'pricePerWeek': 'US\$2.50/wk',
      'savings': 'Save 35%',
      'selected': false,
    },
    {
      'duration': '12 Months',
      'price': 'US\$99.99',
      'pricePerWeek': 'US\$2.08/wk',
      'savings': 'Save 50%',
      'selected': false,
    },
  ];

  final List<String> _features = [
    'Priority Likes',
    'Pre-Match Chat',
    'See Who Likes You',
    'Unlimited Likes',
    'Unlimited Rewinds',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF181A20),
      body: SafeArea(
        child: Column(
          children: [
            // Top Bar
            _buildTopBar(),

            // Main Content
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),

                      // Main Title
                      _buildMainTitle(),

                      SizedBox(height: 30),

                      // Plan Selection
                      _buildPlanSelection(),

                      SizedBox(height: 30),

                      // Features Section
                      _buildFeaturesSection(),

                      SizedBox(height: 30),

                      // Disclaimer
                      _buildDisclaimer(),

                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),

            // Bottom Button
            _buildContinueButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildTopBar() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 40, // Extra padding for notch
        bottom: 16,
      ),
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.close, color: Colors.white, size: 28),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          Spacer(),
          Text(
            'Travel Match',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'PlusJakartaSans',
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 8),
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              color: Color(0xFFB5A35D), // VIP gold color
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              'VIP',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.bold,
                fontFamily: 'PlusJakartaSans',
              ),
            ),
          ),
          Spacer(),
          SizedBox(width: 48), // Balance the row
        ],
      ),
    );
  }

  Widget _buildMainTitle() {
    return Text(
      'Get priority access and message before matching with Travel VIP™',
      style: TextStyle(
        color: Colors.white,
        fontSize: 28,
        fontWeight: FontWeight.bold,
        fontFamily: 'PlusJakartaSans',
        height: 1.2,
      ),
    );
  }

  Widget _buildPlanSelection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select a plan',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
            fontFamily: 'PlusJakartaSans',
          ),
        ),
        SizedBox(height: 16),
        SizedBox(
          height: 100,
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _selectedPlanIndex = index;
                for (int i = 0; i < _plans.length; i++) {
                  _plans[i]['selected'] = i == index;
                }
              });
            },
            itemCount: _plans.length,
            itemBuilder: (context, index) {
              return _buildPlanCard(_plans[index], index);
            },
          ),
        ),
        SizedBox(height: 16),
        // Page indicator
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            _plans.length,
            (index) => Container(
              margin: EdgeInsets.symmetric(horizontal: 4),
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white
                    .withOpacity(_selectedPlanIndex == index ? 1 : 0.3),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPlanCard(Map<String, dynamic> plan, int index) {
    bool isSelected = plan['selected'] ?? false;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: isSelected
            ? Color(0xFFB5A35D)
            : Colors.white.withOpacity(0.1), // VIP gold for selected
        borderRadius: BorderRadius.circular(16),
        border: isSelected ? Border.all(color: Colors.white, width: 2) : null,
      ),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              plan['duration'],
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'PlusJakartaSans',
              ),
            ),
            SizedBox(height: 2),
            Text(
              plan['pricePerWeek'],
              style: TextStyle(
                color: Colors.white.withOpacity(0.8),
                fontSize: 12,
                fontFamily: 'PlusJakartaSans',
              ),
            ),
            if (plan['savings'] != null) ...[
              SizedBox(height: 4),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  plan['savings'],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'PlusJakartaSans',
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildFeaturesSection() {
    return Column(
      children: [
        Container(
          height: 1,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.transparent,
                Colors.grey.withOpacity(0.3),
                Colors.transparent,
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
        Center(
          child: Text(
            'Included with Travel VIP',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'PlusJakartaSans',
            ),
          ),
        ),
        SizedBox(height: 20),
        ..._features
            .map((feature) => Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    children: [
                      Icon(
                        Icons.check_circle,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(width: 12),
                      Text(
                        feature,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'PlusJakartaSans',
                        ),
                      ),
                    ],
                  ),
                ))
            .toList(),
      ],
    );
  }

  Widget _buildDisclaimer() {
    return Text(
      'By tapping "Continue", you will be charged, your subscription will auto-renew for the same price and package length until you cancel via App Store Settings, and you agree to our Terms.',
      style: TextStyle(
        color: Colors.grey.withOpacity(0.7),
        fontSize: 12,
        fontFamily: 'PlusJakartaSans',
        height: 1.4,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildContinueButton() {
    String selectedPrice = _plans[_selectedPlanIndex]['price'];

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        width: double.infinity,
        height: 56,
        decoration: BoxDecoration(
          color: Color(0xFFB5A35D), // VIP gold color
          borderRadius: BorderRadius.circular(16),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(16),
            onTap: () {
              // Handle payment
              print(
                  'Continue with ${_plans[_selectedPlanIndex]['duration']} plan');
            },
            child: Center(
              child: Text(
                'Continue - $selectedPrice total',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'PlusJakartaSans',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
