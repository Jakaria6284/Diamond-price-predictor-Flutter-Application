import 'package:flutter/material.dart';

class prdictPage extends StatelessWidget {
   prdictPage({super.key});

  final textcontrollerCarat=TextEditingController();
   final textcontrollerDepth=TextEditingController();
   final textcontrollerTable=TextEditingController();
   String dropdownValue = 'Ideal'; // Default value
   String dropdownValue1 = 'E'; // Default value
   String dropdownValue2 = 'S12'; // Default value

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xFF01180D), // Background color
      body: Center(
        child: SizedBox(
          height: 500,
          width: 600,
          child: Card(
            elevation: 8, // Shadow effect
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // Rounded corners
            ),
            color: Colors.white, // Card color
            child: Padding(
              padding: const EdgeInsets.all(20), // Inner padding
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisSize: MainAxisSize.min, // Shrinks vertically to fit content
                  children: [
                    // Title
                    const Text(
                      'Give Information About Diamond',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20), // Spacing
                    SizedBox(
                      height: 40,
                      width: 350,
                      child: TextFormField(
                        controller: textcontrollerCarat,
                        decoration: InputDecoration(
                          labelText: 'Enter Carat Value',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12), // Rounded corners
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12), // Rounded corners for enabled state
                            borderSide: BorderSide(color: Colors.grey), // Border color
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12), // Rounded corners for focused state
                            borderSide: BorderSide(color: Colors.blue, width: 2), // Highlighted border
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 10), // Padding inside the text field
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),




              SizedBox(
              height: 40,
                width: 350,
                child: DropdownButtonFormField<String>(
                  value: dropdownValue,
                  decoration: InputDecoration(
                    labelText: 'Select an Cut',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12), // Rounded corners
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.grey), // Border color
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.blue, width: 2), // Highlighted border
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  ),
                  items: <String>['Ideal', 'Premium','Good' ]
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    dropdownValue = newValue!; // Update selected value
                  },
                ),
              ),

                    const SizedBox(height: 20),




                    SizedBox(
                      height: 40,
                      width: 350,
                      child: DropdownButtonFormField<String>(
                        value: dropdownValue1,
                        decoration: InputDecoration(
                          labelText: 'Select an Color',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12), // Rounded corners
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(color: Colors.grey), // Border color
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(color: Colors.blue, width: 2), // Highlighted border
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                        ),
                        items: <String>['E', 'I','J' ]
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          dropdownValue1 = newValue!; // Update selected value
                        },
                      ),
                    ),

                    const SizedBox(height: 20),




                    SizedBox(
                      height: 40,
                      width: 350,
                      child: DropdownButtonFormField<String>(
                        value: dropdownValue2,
                        decoration: InputDecoration(
                          labelText: 'Select an Clarity',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12), // Rounded corners
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(color: Colors.grey), // Border color
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(color: Colors.blue, width: 2), // Highlighted border
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                        ),
                        items: <String>['S12', 'S11','S13' ]
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          dropdownValue2 = newValue!; // Update selected value
                        },
                      ),
                    ),

                    const SizedBox(height: 20), // Spacing
                    SizedBox(
                      height: 40,
                      width: 350,
                      child: TextFormField(
                        controller: textcontrollerDepth,
                        decoration: InputDecoration(
                          labelText: 'Enter Depth Value',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12), // Rounded corners
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12), // Rounded corners for enabled state
                            borderSide: BorderSide(color: Colors.grey), // Border color
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12), // Rounded corners for focused state
                            borderSide: BorderSide(color: Colors.blue, width: 2), // Highlighted border
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 10), // Padding inside the text field
                        ),
                      ),
                    ),

                    const SizedBox(height: 20), // Spacing
                    SizedBox(
                      height: 40,
                      width: 350,
                      child: TextFormField(
                        controller: textcontrollerTable,
                        decoration: InputDecoration(
                          labelText: 'Enter Table Value',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12), // Rounded corners
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12), // Rounded corners for enabled state
                            borderSide: BorderSide(color: Colors.grey), // Border color
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12), // Rounded corners for focused state
                            borderSide: BorderSide(color: Colors.blue, width: 2), // Highlighted border
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 10), // Padding inside the text field
                        ),
                      ),
                    ),





                const SizedBox(height: 20),




                    // Submit Button
                    SizedBox(
                      width: 300, // Full width button
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF153A26), // Button background color
                          foregroundColor: Colors.white, // Text color
                          padding: const EdgeInsets.symmetric(vertical: 12), // Button padding
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12), // Rounded corners
                          ),
                        ),
                        onPressed: () {
                          String carat=textcontrollerCarat.text;
                          String depth=textcontrollerDepth.text;
                          String table=textcontrollerTable.text;
                          print('${carat},${depth},${table},${dropdownValue},${dropdownValue1},${dropdownValue2}');

                        },
                        child: const Text('Submit',style: TextStyle(fontSize: 20),),
                      ),
                    )

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
