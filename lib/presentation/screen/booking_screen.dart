import 'package:car_service/presentation/widget/user_input.dart';
import 'package:flutter/material.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});




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
              const UserInput(text: 'Full name'),
              const SizedBox(height: 10,),
              const UserInput(text: 'Phone'),
              const SizedBox(height: 10,),
              const UserInput(text: 'Email'),
              const SizedBox(height: 10,),
        
              const Text('Car Details',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
        
              const SizedBox(height: 10,),
              const UserInput(text: 'Make'),
              const SizedBox(height: 10,),
              const UserInput(text: 'Model'),
              const SizedBox(height: 10,),
              const UserInput(text: 'Year'),
              const SizedBox(height: 10,),
              const UserInput(text: 'Registration Plate'),
              const SizedBox(height: 10,),
        
              const Text('Booking Details',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
        
              const SizedBox(height: 10,),
              const UserInput(text: 'Title'),
              const SizedBox(height: 10,),
              const UserInput(text: 'Start Date'),
              const SizedBox(height: 10,),
              const UserInput(text: 'End Date'),
              const SizedBox(height: 20,),
              
              Center(
                child: ElevatedButton(onPressed: () {},
                    style:   ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange
                    ),
        
                    child: const Text('Book Now',style: TextStyle(color: Colors.white),)),
              )
        
        
        
            ],
          ),
        ),
      ),
    );
  }
}
