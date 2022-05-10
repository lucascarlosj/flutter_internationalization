import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Flutter Internationalization',
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              Image.asset(
                'assets/logo.png',
                scale: 1.5,
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                AppLocalizations.of(context)!.message,
                textAlign: TextAlign.justify,
                style: const TextStyle(fontSize: 20, color: Colors.black54),
              ),
              const SizedBox(
                height: 30,
              ),
              Image.network(
                AppLocalizations.of(context)!.language.toString(),
                scale: 3,
              )
            ],
          ),
        ),
      ),
    );
  }
}
