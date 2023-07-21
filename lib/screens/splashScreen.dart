import 'package:assignment/config/colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat();
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizeTransition(
        sizeFactor: _animation,
        axis: Axis.horizontal,
        axisAlignment: -1,
        child: Center(
            child: Text(
          'Welcome ...',
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              foreground: Paint()
                ..shader = const LinearGradient(
                  colors: <Color>[
                    Color.fromARGB(255, 252, 63, 126),
                    Color.fromARGB(255, 117, 70, 248),
                    Color.fromARGB(255, 248, 66, 53)
                    //add more color here.
                  ],
                ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))),
        )),
      ),
    );
  }
}
