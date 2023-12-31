import 'package:flutter/material.dart';

class CryptoCoinScreen extends StatefulWidget {
  const CryptoCoinScreen({super.key});

  @override
  State<CryptoCoinScreen> createState() => _CryptoCoinScreenState();
}

class _CryptoCoinScreenState extends State<CryptoCoinScreen> {
  String? coinNname;
  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;
    // if (args == null) {
    //   log('You must provide args as String');
    //   return;
    // }

    // if (args is! String) {
    //   log('You must provide args as String');
    //   return;
    // }
    assert(args != null && args is String, 'You must provide String args');
    coinNname = args as String;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(coinNname ?? '...'),
      ),
    );
  }
}
