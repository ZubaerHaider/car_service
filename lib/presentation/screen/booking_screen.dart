import 'package:car_service/presentation/widget/custom_field.dart';
import 'package:flutter/material.dart';

const List<String> list = <String>['Chose', 'Two', 'Three', 'Four'];

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  String dropdownValue = list.first;

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
                child: DropdownButton<String>(
                  value: dropdownValue,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String? value) {
                    // This is called when the user selects an item.
                    setState(() {
                      dropdownValue = value!;
                    });
                  },
                  items: list.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
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


