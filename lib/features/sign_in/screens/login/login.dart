import 'package:flutter/material.dart';

import '../../../../commun/widgets/back_ground.dart';
import 'components/google_signin.dart';
import '../../widgets/logo.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BackGround(
        child: Column(
          children: [
            Spacer(flex: 4,),
            Hero(tag: 'logo',child: Logo()),
            Spacer(flex: 3,),
            GoogleSignIn(),
            Spacer(flex: 6)
          ],
        ),
      )
    );
  }
}