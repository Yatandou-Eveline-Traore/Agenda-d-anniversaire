import 'package:flutter/material.dart';
import 'dart:async';

class Login extends StatefulWidget {
  final Widget child;
  final int delais;
  const Login({required this.delais, required this.child});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login>
 with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animOffset;
  @override
  void initState(){
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    final curve = CurvedAnimation(
      parent: _controller, 
      curve: Curves.decelerate,
      );
      
      _animOffset = Tween<Offset>(
        begin: Offset(0.0, 0.5),
        end: Offset.zero,
        ).animate(curve);

        Timer(Duration(milliseconds: widget.delais), () {
          _controller.forward();
        });
  }


  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _controller,
      child: SlideTransition(
        position: _animOffset,
        child: widget.child,),);
  }
}