import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          height: 180,
          width: double.maxFinite,
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(
                height: 115,
                width: 115,
                child: Stack(
                fit: StackFit.expand,
                clipBehavior: Clip.none,
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage("assets/images/Profile Image.png"),
                  ),
                  Positioned(
                    right: -16,
                    bottom: 0,
                    child: SizedBox(
                      height: 46,
                      width: 46,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white, shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                            side: const BorderSide(color: Colors.white),
                          ),
                          backgroundColor: const Color(0xFFF5F6F9),
                        ),
                        onPressed: () {},
                        child: SvgPicture.asset("assets/icons/Camera Icon.svg"),
                      ),
                    ),
                  ),
                ],
              ),
            ),      
            const SizedBox(height: 16),    
            Text(
            'Sulaiman Saleh',
            style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                'Leuwigajah, Cimahi',
                style: const TextStyle(fontSize: 12.0, color: Colors.grey),
                ),
          ],
         )
      );   
    }
}

