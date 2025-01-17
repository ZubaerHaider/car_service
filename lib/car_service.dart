import 'package:car_service/presentation/screen/booking_screen.dart';
import 'package:flutter/material.dart';

class CarService extends StatelessWidget {
  const CarService({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BookingScreen(),
    );
  }
}
