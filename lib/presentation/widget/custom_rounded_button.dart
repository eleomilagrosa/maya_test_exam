import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CustomRoundedButton extends StatelessWidget {

  const CustomRoundedButton({
    required this.icon,
    required this.buttonName,
    this.onTap,
    this.isLoading = false,
    super.key,
  });

  final Function()? onTap;
  final IconData icon;
  final String buttonName;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isLoading ? null : onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.all(8),
        child: isLoading ?
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SpinKitThreeBounce(
              size: 15,
              color: Colors.white,
            ),
            const SizedBox(width: 12),
            Text(
              'Loading',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ) :
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            const SizedBox(width: 4,),
            Text(buttonName)
          ],
        ),
      ),
    );
  }
}
