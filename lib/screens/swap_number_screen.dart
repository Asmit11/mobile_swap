import 'package:flutter/material.dart';

class SwapNumberScreen extends StatefulWidget {
  const SwapNumberScreen({super.key});

  @override
  State<SwapNumberScreen> createState() => _SwapNumberScreenState();
}

class _SwapNumberScreenState extends State<SwapNumberScreen> {
  int? first;

  int? second;

  int? result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Swap Two Numbers',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          centerTitle: true,
          elevation: 8,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'First Number',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  first = int.parse(value);
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your first number'),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Second Number',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  second = int.parse(value);
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your second number'),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      first = first! + second!;
                      second = first! - second!;
                      first = first! - second!;
                    });
                  },
                  child: const Text('Swap'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text('Numbers After Swap',
                    style:
                        TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'First number: $first, Second number: $second ',
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
