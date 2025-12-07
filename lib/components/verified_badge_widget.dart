import 'package:flutter/material.dart';

class VerifiedBadgeWidget extends StatelessWidget {
  final bool isVerified;
  VerifiedBadgeWidget({required this.isVerified});

  @override
  Widget build(BuildContext context) {
    return isVerified
        ? Icon(Icons.check_circle, color: Colors.green)
        : SizedBox.shrink();
  }
}
