import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 229, 163, 8),
        elevation: 0,
        title: const Text(
          'Flutter Internationalization',
          style: TextStyle(color: Colors.black54),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child: Column(
          children: [
            Image.asset(
              'assets/logo.png',
              height: 230,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(AppLocalizations.of(context)!.message,
                style: const TextStyle(fontSize: 20, color: Colors.black)),
            const SizedBox(
              height: 20,
            ),
            Text(
              AppLocalizations.of(context)!.language,
              style: const TextStyle(fontSize: 25, color: Colors.black),
            )
          ],
        )),
      ),
    );
  }
}
