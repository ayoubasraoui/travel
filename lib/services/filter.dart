// import 'package:flutter/material.dart';

// class FilterScreen extends StatefulWidget {
//   @override
//   _FilterScreenState createState() => _FilterScreenState();
// }

// class _FilterScreenState extends State<FilterScreen> {
//   // Width of the filter bar and sliding bar
//   late double _filterBarWidth;
//   late double _slidingBarWidth;

//   // This will track the position of the sliding bar
//   double _sliderPosition = 0.0;

//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     // Use MediaQuery to adapt to different screen sizes
//     double screenWidth = MediaQuery.of(context).size.width;
//     _filterBarWidth = screenWidth * 0.9; // 90% of screen width
//     _slidingBarWidth = _filterBarWidth / 3; // 1/3 of the filter bar width
//   }

//   void _updateSliderPosition(int index) {
//     setState(() {
//       _sliderPosition = index * (_filterBarWidth / 3); // Adjusted for new sliding bar width
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFF084C61),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(height: 35), // Space from the top
//             Row(
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.pop(context);
//                   },
//                   child: Icon(
//                     Icons.close,
//                     color: Colors.white,
//                     size: 30,
//                   ),
//                 ),
//                 SizedBox(width: MediaQuery.of(context).size.width * 0.25), // Responsive spacing
//                 Text(
//                   'Filter',
//                   style: TextStyle(
//                     fontFamily: 'PlusJakartaSans',
//                     fontSize: 30,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 31), // Space between Filter text and "I'm interested in ..."
//             Text(
//               "I'm interested in...",
//               style: TextStyle(
//                 fontSize: 15,
//                 color: Colors.white,
//                 fontFamily: 'PlusJakartaSans',
//               ),
//             ),
//             SizedBox(height: 14), // Space between "I'm interested in ..." and the filter bar
//             Container(
//               width: _filterBarWidth,
//               height: 42,
//               decoration: BoxDecoration(
//                 color: Color(0xFFFEFEFE),
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               child: Stack(
//                 children: [
//                   AnimatedPositioned(
//                     duration: Duration(milliseconds: 300),
//                     left: _sliderPosition,
//                     child: Container(
//                       width: _slidingBarWidth,
//                       height: 42,
//                       decoration: BoxDecoration(
//                         color: Color(0xFFD9D9D9),
//                         borderRadius: BorderRadius.circular(8), // Rounded corners
//                       ),
//                     ),
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Expanded(
//                         child: GestureDetector(
//                           onTap: () => _updateSliderPosition(0),
//                           child: Center(
//                             child: Text(
//                               'Men',
//                               style: TextStyle(
//                                 fontFamily: 'PlusJakartaSans',
//                                 fontSize: 12,
//                                 color: Colors.black,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         child: GestureDetector(
//                           onTap: () => _updateSliderPosition(1),
//                           child: Center(
//                             child: Text(
//                               'Women',
//                               style: TextStyle(
//                                 fontFamily: 'PlusJakartaSans',
//                                 fontSize: 12,
//                                 color: Colors.black,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         child: GestureDetector(
//                           onTap: () => _updateSliderPosition(2),
//                           child: Center(
//                             child: Text(
//                               'Everyone',
//                               style: TextStyle(
//                                 fontFamily: 'PlusJakartaSans',
//                                 fontSize: 12,
//                                 color: Colors.black,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 14),
//             Text(
//               'Age range',
//               style: TextStyle(
//                 fontSize: 15,
//                 color: Colors.white,
//                 fontFamily: 'PlusJakartaSans',
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// #####################################################################






// import 'package:flutter/material.dart';

// class FilterScreen extends StatefulWidget {
//   @override
//   _FilterScreenState createState() => _FilterScreenState();
// }

// class _FilterScreenState extends State<FilterScreen> {
//   // Width of the filter bar and sliding bar
//   late double _filterBarWidth;
//   late double _slidingBarWidth;

//   // This will track the position of the sliding bar
//   double _sliderPosition = 0.0;

//   // Range values for the age range slider
//   RangeValues _currentRangeValues = RangeValues(18, 60);

//   String? _selectedDestination;

//   final List<String> _destinations = [
//     'Casablanca',
//     'Tangier',
//     'Agadir',
//     'Rabat',
//     'Akchour',
//     'Laayoune',
//     'Toubqal',
//     'Essaouira',
//     'Laayoune',
//     'Toubqal',
//     'Essaouira',
//     'Laayoune',
//     'Toubqal',
//     'Essaouira',
//     'Laayoune',
//     'Toubqal',
//     'Essaouira',

//   ];

//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     // Use MediaQuery to adapt to different screen sizes
//     double screenWidth = MediaQuery.of(context).size.width;
//     _filterBarWidth = screenWidth * 0.9; // 90% of screen width
//     _slidingBarWidth = _filterBarWidth / 3; // 1/3 of the filter bar width
//   }

//   void _updateSliderPosition(int index) {
//     setState(() {
//       _sliderPosition = index * (_filterBarWidth / 3); // Adjusted for new sliding bar width
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFF084C61),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(height: 35), // Space from the top
//             Row(
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.pop(context);
//                   },
//                   child: Icon(
//                     Icons.close,
//                     color: Colors.white,
//                     size: 30,
//                   ),
//                 ),
//                 SizedBox(width: MediaQuery.of(context).size.width * 0.25), // Responsive spacing
//                 Text(
//                   'Filter',
//                   style: TextStyle(
//                     fontFamily: 'PlusJakartaSans',
//                     fontSize: 30,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 31), // Space between Filter text and "I'm interested in ..."
//             Text(
//               "I'm interested in...",
//               style: TextStyle(
//                 fontSize: 15,
//                 color: Colors.white,
//                 fontFamily: 'PlusJakartaSans',
//               ),
//             ),
//             SizedBox(height: 14), // Space between "I'm interested in ..." and the filter bar
//             Container(
//               width: _filterBarWidth,
//               height: 42,
//               decoration: BoxDecoration(
//                 color: Color(0xFFFEFEFE),
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               child: Stack(
//                 children: [
//                   AnimatedPositioned(
//                     duration: Duration(milliseconds: 300),
//                     left: _sliderPosition,
//                     child: Container(
//                       width: _slidingBarWidth,
//                       height: 42,
//                       decoration: BoxDecoration(
//                         color: Color(0xFFD9D9D9),
//                         borderRadius: BorderRadius.circular(8), // Rounded corners
//                       ),
//                     ),
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Expanded(
//                         child: GestureDetector(
//                           onTap: () => _updateSliderPosition(0),
//                           child: Center(
//                             child: Text(
//                               'Men',
//                               style: TextStyle(
//                                 fontFamily: 'PlusJakartaSans',
//                                 fontSize: 12,
//                                 color: Colors.black,
//                                 //fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         child: GestureDetector(
//                           onTap: () => _updateSliderPosition(1),
//                           child: Center(
//                             child: Text(
//                               'Women',
//                               style: TextStyle(
//                                 fontFamily: 'PlusJakartaSans',
//                                 fontSize: 12,
//                                 color: Colors.black,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         child: GestureDetector(
//                           onTap: () => _updateSliderPosition(2),
//                           child: Center(
//                             child: Text(
//                               'Everyone',
//                               style: TextStyle(
//                                 fontFamily: 'PlusJakartaSans',
//                                 fontSize: 12,
//                                 color: Colors.black,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 14),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   'Age range',
//                   style: TextStyle(
//                     fontSize: 15,
//                     color: Colors.white,
//                     fontFamily: 'PlusJakartaSans',
//                   ),
//                 ),
//                 Text(
//                   '${_currentRangeValues.start.round()} - ${_currentRangeValues.end.round()}',
//                   style: TextStyle(
//                     fontSize: 15,
//                     color: Colors.white,
//                     fontFamily: 'PlusJakartaSans',
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 14),
//             SliderTheme(
//               data: SliderTheme.of(context).copyWith(
//                 trackHeight: 3,
//                 thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5),
//               ),
//               child: RangeSlider(
//               values: _currentRangeValues,
//               min: 18,
//               max: 100,
//               divisions: 82,
//               onChanged: (RangeValues values) {
//                 setState(() {
//                   _currentRangeValues = values;
//                 });
//               },
//               activeColor: Colors.white,
//               inactiveColor: Colors.grey,
//             ),
//             ),
//             SizedBox(height: 14),
//             Text(
//               'Prefered destinations',
//               style: TextStyle(
//                 fontFamily: 'PlusJakartaSans',
//                 fontSize: 15,
//                 color: Colors.white,
//               ),
//             ),
//             SizedBox(height: 14),
//             Container(
//               padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               child: DropdownButton<String>(
//                 value: _selectedDestination,
//                 hint: Text('Select a destination'),
//                 isExpanded: true,
//                 icon: Icon(Icons.arrow_drop_down),
//                 iconSize: 24,
//                 underline: SizedBox(),
//                 onChanged: (String? newValue) {
//                   setState(() {
//                     _selectedDestination = newValue;
//                   });
//                 },
//                 items: _destinations.map<DropdownMenuItem<String>>((String value) {
//                   return DropdownMenuItem<String>(
//                     value: value,
//                     child: Text(value),
//                   );
//                 }).toList(),
//               ),
//             ),    
//           ],
//         ),
//       ),
//     );
//   }
// }










// import 'package:flutter/material.dart';

// class FilterScreen extends StatefulWidget {
//   @override
//   _FilterScreenState createState() => _FilterScreenState();
// }

// class _FilterScreenState extends State<FilterScreen> {
//   // Width of the filter bar and sliding bar
//   late double _filterBarWidth;
//   late double _slidingBarWidth;

//   // This will track the position of the sliding bar
//   double _sliderPosition = 0.0;

//   // Range values for the age range slider
//   RangeValues _currentRangeValues = RangeValues(18, 60);

//   String? _selectedDestination;

//   final List<String> _destinations = [
//     'Casablanca',
//     'Tangier',
//     'Agadir',
//     'Rabat',
//     'Akchour',
//     'Laayoune',
//     'Toubqal',
//     'Essaouira',
//     'xxxxxx',
//     'ééééééééé',
//     'rrrrrrrrrr',
//     'tttttttt',
//     'tggggggg',
//     'hhhhhhhhh',
//     'uuuuuuuuu',
//     'uyhhgf',
//     'pppppp',
//     'lllll',
//     'nnnnnnn',
//     'jjjjjj',
//     'aaaaaa',
//     'ssssssss',
//     'qqqqqq',
//     'wwwwwww',
//   ];

//    @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     // Use MediaQuery to adapt to different screen sizes
//     double screenWidth = MediaQuery.of(context).size.width;
//     _filterBarWidth = screenWidth * 0.9; // 90% of screen width
//     _slidingBarWidth = _filterBarWidth / 3; // 1/3 of the filter bar width
//   }

//   void _updateSliderPosition(int index) {
//     setState(() {
//       _sliderPosition = index * (_filterBarWidth / 3); // Adjusted for new sliding bar width
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFF084C61),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(height: 35), // Space from the top
//             Row(
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.pop(context);
//                   },
//                   child: Icon(
//                     Icons.close,
//                     color: Colors.white,
//                     size: 30,
//                   ),
//                 ),
//                 SizedBox(width: MediaQuery.of(context).size.width * 0.25), // Responsive spacing
//                 Text(
//                   'Filter',
//                   style: TextStyle(
//                     fontFamily: 'PlusJakartaSans',
//                     fontSize: 30,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 31), // Space between Filter text and "I'm interested in ..."
//             Text(
//               "I'm interested in...",
//               style: TextStyle(
//                 fontSize: 15,
//                 color: Colors.white70,
//                 fontFamily: 'PlusJakartaSans',
//               ),
//             ),
//             SizedBox(height: 14), // Space between "I'm interested in ..." and the filter bar
//             Container(
//               width: _filterBarWidth,
//               height: 42,
//               decoration: BoxDecoration(
//                 color: Color(0xFFFEFEFE),
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               child: Stack(
//                 children: [
//                   AnimatedPositioned(
//                     duration: Duration(milliseconds: 300),
//                     left: _sliderPosition,
//                     child: Container(
//                       width: _slidingBarWidth,
//                       height: 42,
//                       decoration: BoxDecoration(
//                         color: Color(0xFFD9D9D9),
//                         borderRadius: BorderRadius.circular(8), // Rounded corners
//                       ),
//                     ),
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Expanded(
//                         child: GestureDetector(
//                           onTap: () => _updateSliderPosition(0),
//                           child: Center(
//                             child: Text(
//                               'Men',
//                               style: TextStyle(
//                                 fontFamily: 'PlusJakartaSans',
//                                 fontSize: 12,
//                                 color: Colors.black,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         child: GestureDetector(
//                           onTap: () => _updateSliderPosition(1),
//                           child: Center(
//                             child: Text(
//                               'Women',
//                               style: TextStyle(
//                                 fontFamily: 'PlusJakartaSans',
//                                 fontSize: 12,
//                                 color: Colors.black,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         child: GestureDetector(
//                           onTap: () => _updateSliderPosition(2),
//                           child: Center(
//                             child: Text(
//                               'Everyone',
//                               style: TextStyle(
//                                 fontFamily: 'PlusJakartaSans',
//                                 fontSize: 12,
//                                 color: Colors.black,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 14),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   'Age range',
//                   style: TextStyle(
//                     fontSize: 15,
//                     color: Colors.white70,
//                     fontFamily: 'PlusJakartaSans',
//                   ),
//                 ),
//                 Text(
//                   '${_currentRangeValues.start.round()} - ${_currentRangeValues.end.round()}',
//                   style: TextStyle(
//                     fontSize: 15,
//                     color: Colors.white,
//                     fontFamily: 'PlusJakartaSans',
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 14),
//             SliderTheme(
//               data: SliderTheme.of(context).copyWith(
//                 trackHeight: 3,
//                 thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5),
//               ),
//               child: RangeSlider(
//                 values: _currentRangeValues,
//                 min: 18,
//                 max: 100,
//                 divisions: 82,
//                 onChanged: (RangeValues values) {
//                   setState(() {
//                     _currentRangeValues = values;
//                   });
//                 },
//                 activeColor: Colors.white,
//                 inactiveColor: Colors.grey,
//               ),
//             ),
//             SizedBox(height: 14),
//             Text(
//               'Preferred destinations',
//               style: TextStyle(
//                 fontFamily: 'PlusJakartaSans',
//                 fontSize: 15,
//                 color: Colors.white70,
//               ),
//             ),
//             SizedBox(height: 14),
//             Container(
//               padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               child: DropdownButtonFormField<String>(
//                 value: _selectedDestination,
//                 hint: Text('Select a destination'),
//                 isExpanded: true,
//                 icon: Icon(Icons.arrow_drop_down),
//                 iconSize: 24,
//                 onChanged: (String? newValue) {
//                   setState(() {
//                     _selectedDestination = newValue;
//                   });
//                 },
//                 items: _destinations.map<DropdownMenuItem<String>>((String value) {
//                   return DropdownMenuItem<String>(
//                     value: value,
//                     child: Text(value),
//                   );
//                 }).toList(),
//                 decoration: InputDecoration(
//                   border: InputBorder.none,
//                 ),
//               ),
//             ),
//             SizedBox(height: 5),
//             if (_selectedDestination != null)
//               Row(
//                 children: [
//                   Icon(
//                     Icons.delete, // You can change this to a basket or bin icon
//                     color: Colors.red,
//                     size: 19,
//                   ),
//                   SizedBox(width: 1),
//                   TextButton(
//                     onPressed: () {
//                       setState(() {
//                         _selectedDestination = null;
//                       });
//                     },
//                     child: Text(
//                       'Clear destination filter',
//                       style: TextStyle(
//                         color: Colors.red,
//                         fontFamily: 'PlusJakartaSans',
//                         fontSize: 12,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             SizedBox(height: 14),
//             Text(
//               'Advanced Filter',
//               style: TextStyle(
//                 fontFamily: 'PlusJakartaSans',
//                 fontSize: 21,
//                 color: Colors.white
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }






import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FilterScreen extends StatefulWidget {
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  // Width of the filter bar and sliding bar
  late double _filterBarWidth;
  late double _slidingBarWidth;

  // This will track the position of the sliding bar
  double _sliderPosition = 0.0;

  // Range values for the age range slider
  RangeValues _currentRangeValues = RangeValues(18, 60);

  String? _selectedDestination;
  DateTime? _startTravelDate;
  DateTime? _endTravelDate;
  RangeValues _budgetRangeValues = RangeValues(100, 1000);
  String? _selectedTransport;

  final List<String> _destinations = [
    'Casablanca',
    'Tangier',
    'Agadir',
    'Rabat',
    'Akchour',
    'Laayoune',
    'Toubqal',
    'Essaouira',
  ];

  final List<String> _transportModes = [
    'Car',
    'Motorcycle',
    'Bicycle',
    'Bus',
    'Train',
    'Plane',
  ];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Use MediaQuery to adapt to different screen sizes
    double screenWidth = MediaQuery.of(context).size.width;
    _filterBarWidth = screenWidth * 0.9; // 90% of screen width
    _slidingBarWidth = _filterBarWidth / 3; // 1/3 of the filter bar width
  }

  void _updateSliderPosition(int index) {
    setState(() {
      _sliderPosition = index * (_filterBarWidth / 3); // Adjusted for new sliding bar width
    });
  }

  Future<void> _selectStartDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _startTravelDate) {
      setState(() {
        _startTravelDate = picked;
      });
    }
  }

  Future<void> _selectEndDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _endTravelDate) {
      setState(() {
        _endTravelDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF084C61),
      appBar: AppBar(
        backgroundColor: Color(0xFF084C61),
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.close,
            color: Colors.white,
            size: 30,
          ),
        ),
        centerTitle: true,
        title: Text(
          'Filter',
          style: TextStyle(
            fontFamily: 'PlusJakartaSans',
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "I'm interested in...",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white70,
                  fontFamily: 'PlusJakartaSans',
                ),
              ),
              SizedBox(height: 14), // Space between "I'm interested in ..." and the filter bar
              Container(
                width: _filterBarWidth,
                height: 42,
                decoration: BoxDecoration(
                  color: Color(0xFFFEFEFE),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Stack(
                  children: [
                    AnimatedPositioned(
                      duration: Duration(milliseconds: 300),
                      left: _sliderPosition,
                      child: Container(
                        width: _slidingBarWidth,
                        height: 42,
                        decoration: BoxDecoration(
                          color: Color(0xFFD9D9D9),
                          borderRadius: BorderRadius.circular(8), // Rounded corners
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () => _updateSliderPosition(0),
                            child: Center(
                              child: Text(
                                'Men',
                                style: TextStyle(
                                  fontFamily: 'PlusJakartaSans',
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () => _updateSliderPosition(1),
                            child: Center(
                              child: Text(
                                'Women',
                                style: TextStyle(
                                  fontFamily: 'PlusJakartaSans',
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () => _updateSliderPosition(2),
                            child: Center(
                              child: Text(
                                'Everyone',
                                style: TextStyle(
                                  fontFamily: 'PlusJakartaSans',
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 14),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Age range',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white70,
                      fontFamily: 'PlusJakartaSans',
                    ),
                  ),
                  Text(
                    '${_currentRangeValues.start.round()} - ${_currentRangeValues.end.round()}',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontFamily: 'PlusJakartaSans',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 14),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  trackHeight: 3,
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5),
                ),
                child: RangeSlider(
                  values: _currentRangeValues,
                  min: 18,
                  max: 100,
                  divisions: 82,
                  onChanged: (RangeValues values) {
                    setState(() {
                      _currentRangeValues = values;
                    });
                  },
                  activeColor: Colors.white,
                  inactiveColor: Colors.grey,
                ),
              ),
              SizedBox(height: 14),
              Text(
                'Preferred destinations',
                style: TextStyle(
                  fontFamily: 'PlusJakartaSans',
                  fontSize: 15,
                  color: Colors.white70,
                ),
              ),
              SizedBox(height: 14),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: DropdownButtonFormField<String>(
                  value: _selectedDestination,
                  hint: Text('Select a destination'),
                  isExpanded: true,
                  icon: Icon(Icons.arrow_drop_down),
                  iconSize: 24,
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedDestination = newValue;
                    });
                  },
                  items: _destinations.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 5),
              if (_selectedDestination != null)
                Row(
                  children: [
                    Icon(
                      Icons.delete, // You can change this to a basket or bin icon
                      color: Colors.red,
                      size: 19,
                    ),
                    SizedBox(width: 1),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _selectedDestination = null;
                        });
                      },
                      child: Text(
                        'Clear destination filter',
                        style: TextStyle(
                          color: Colors.red,
                          fontFamily: 'PlusJakartaSans',
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              SizedBox(height: 14),
              Text(
                'Advanced Filter',
                style: TextStyle(
                  fontFamily: 'PlusJakartaSans',
                  fontSize: 21,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 14),
              Text(
                'Travel start date',
                style: TextStyle(
                  fontFamily: 'PlusJakartaSans',
                  fontSize: 15,
                  color: Colors.white70,
                ),
              ),
              SizedBox(height: 14),
              GestureDetector(
                onTap: () => _selectStartDate(context),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        _startTravelDate != null
                            ? DateFormat.yMMMd().format(_startTravelDate!)
                            : 'Select start date',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      Icon(
                        Icons.calendar_today,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
              if (_startTravelDate != null)
                Row(
                  children: [
                    Icon(
                      Icons.delete, // You can change this to a basket or bin icon
                      color: Colors.red,
                      size: 19,
                    ),
                    SizedBox(width: 1),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _startTravelDate = null;
                        });
                      },
                      child: Text(
                        'Clear start date',
                        style: TextStyle(
                          color: Colors.red,
                          fontFamily: 'PlusJakartaSans',
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              SizedBox(height: 14),
              Text(
                'Travel end date',
                style: TextStyle(
                  fontFamily: 'PlusJakartaSans',
                  fontSize: 15,
                  color: Colors.white70,
                ),
              ),
              SizedBox(height: 14),
              GestureDetector(
                onTap: () => _selectEndDate(context),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        _endTravelDate != null
                            ? DateFormat.yMMMd().format(_endTravelDate!)
                            : 'Select end date',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      Icon(
                        Icons.calendar_today,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
              if (_endTravelDate != null)
                Row(
                  children: [
                    Icon(
                      Icons.delete, // You can change this to a basket or bin icon
                      color: Colors.red,
                      size: 19,
                    ),
                    SizedBox(width: 1),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _endTravelDate = null;
                        });
                      },
                      child: Text(
                        'Clear end date',
                        style: TextStyle(
                          color: Colors.red,
                          fontFamily: 'PlusJakartaSans',
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              SizedBox(height: 14),
              Text(
                'Budget range',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white70,
                  fontFamily: 'PlusJakartaSans',
                ),
              ),
              SizedBox(height: 14),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${_budgetRangeValues.start.round()} - ${_budgetRangeValues.end.round()}',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontFamily: 'PlusJakartaSans',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 14),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  trackHeight: 3,
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5),
                ),
                child: RangeSlider(
                  values: _budgetRangeValues,
                  min: 0,
                  max: 10000,
                  divisions: 100,
                  onChanged: (RangeValues values) {
                    setState(() {
                      _budgetRangeValues = values;
                    });
                  },
                  activeColor: Colors.white,
                  inactiveColor: Colors.grey,
                ),
              ),
              SizedBox(height: 14),
              Text(
                'Mode of transport',
                style: TextStyle(
                  fontFamily: 'PlusJakartaSans',
                  fontSize: 15,
                  color: Colors.white70,
                ),
              ),
              SizedBox(height: 14),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: DropdownButtonFormField<String>(
                  value: _selectedTransport,
                  hint: Text('Select mode of transport'),
                  isExpanded: true,
                  icon: Icon(Icons.arrow_drop_down),
                  iconSize: 24,
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedTransport = newValue;
                    });
                  },
                  items: _transportModes.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 5),
              if (_selectedTransport != null)
                Row(
                  children: [
                    Icon(
                      Icons.delete, // You can change this to a basket or bin icon
                      color: Colors.red,
                      size: 19,
                    ),
                    SizedBox(width: 1),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _selectedTransport = null;
                        });
                      },
                      child: Text(
                        'Clear transport filter',
                        style: TextStyle(
                          color: Colors.red,
                          fontFamily: 'PlusJakartaSans',
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}


