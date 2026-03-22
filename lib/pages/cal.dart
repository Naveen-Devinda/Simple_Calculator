import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final TextEditingController n1 = TextEditingController();
  final TextEditingController n2 = TextEditingController();
  int result = 0;

  void add() {
    setState(() {
      int num1 = int.tryParse(n1.text) ?? 0;
      int num2 = int.tryParse(n2.text) ?? 0;

      result = num1 + num2;
    });
  }

  void sub() {
    setState(() {
      int num1 = int.tryParse(n1.text) ?? 0;
      int num2 = int.tryParse(n2.text) ?? 0;

      result = num1 - num2;
    });
  }

  void div() {
    setState(() {
      int num1 = int.tryParse(n1.text) ?? 0;
      int num2 = int.tryParse(n2.text) ?? 0;

      double resultt = num1 / num2;
      result = resultt.ceil();
    });
  }

  void mul() {
    setState(() {
      int num1 = int.tryParse(n1.text) ?? 0;
      int num2 = int.tryParse(n2.text) ?? 0;

      result = num1 * num2;
    });
  }

  @override
  void dispose() {
    n1.dispose();
    n2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Calculator"),
        backgroundColor: Color(0xf01010C9),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: n1,
              decoration: InputDecoration(
                hintText: "Enter number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 20,
                ),
              ),
            ),
            SizedBox(height: 10),

            TextField(
              controller: n2,
              decoration: InputDecoration(
                hintText: "Enter number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 20,
                ),
              ),
            ),

            Center(
              child: Text(result.toString(), style: TextStyle(fontSize: 40)),
            ),
          ],
        ),
      ),

      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(onPressed: add, child: Text("+")),
            FloatingActionButton(onPressed: sub, child: Text("-")),
            FloatingActionButton(onPressed: div, child: Text("/")),
            FloatingActionButton(onPressed: mul, child: Text("*")),
          ],
        ),
      ),
    );
  }
}
