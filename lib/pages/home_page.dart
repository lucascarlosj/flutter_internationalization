import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Flutter Internationalization',
          style: TextStyle(color: Colors.black54),
        ),
      ),
      body: Center(
        child: Text(AppLocalizations.of(context)!.message),
      ),
    );
  }
}
