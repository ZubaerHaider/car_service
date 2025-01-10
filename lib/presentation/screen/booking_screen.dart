import 'package:car_service/presentation/widget/custom_field.dart';
import 'package:flutter/material.dart';


class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  String dropdownValue =  'Item 1';

  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final makeController = TextEditingController();
  final modelController = TextEditingController();
  final yearController = TextEditingController();
  final plateController = TextEditingController();
  final titleController = TextEditingController();
  final startController = TextEditingController();
  final endController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25
          ),),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Form(
            key: _formKey,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const Text('Customer Details',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 10,),
                CustomField(label: 'Full Name', controller: nameController),
                const SizedBox(height: 10,),
                CustomField(label: 'Phone', controller: phoneController),

                const SizedBox(height: 10,),
                CustomField(label: 'Email', controller: emailController),
                const SizedBox(height: 10,),

                const Text('Car Details',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 10,),
                CustomField(label: 'Make', controller: makeController),
                const SizedBox(height: 10,),
                CustomField(label: 'Model', controller: modelController),
                const SizedBox(height: 10,),
                CustomField(label: 'Year', controller: yearController),
                const SizedBox(height: 10,),
                CustomField(label: 'Registration Plate', controller: plateController),
                const SizedBox(height: 10,),
                const Text('Booking Details',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 10,),
                CustomField(label: 'Title', controller: titleController),
                const SizedBox(height: 10,),
                CustomField(label: 'Start Date', controller: startController),
                const SizedBox(height: 10,),
                CustomField(label: 'End Date', controller: endController),
                const SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child:  DropdownButton(

                  // Initial Value
                  value: dropdownValue,

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                ),
              ),

                Center(
                  child: ElevatedButton(onPressed: () {
                    if(_formKey.currentState!.validate()){
                      nameController.text;
                      phoneController.text;
                    }
                  },
                      style:   ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange
                      ),

                      child: const Text('Book Now',style: TextStyle(color: Colors.white),)),
                )



              ],
            ),
          ),
        ),
      ),
    );
  }
}


