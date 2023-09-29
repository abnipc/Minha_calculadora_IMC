import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String peso = "";
  String altura = "";
  String ImcString = "0";
  double imc = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "CONTROLE DE IMC",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment
                .spaceBetween, // Align children at the top and bottom
            children: [
              Row(
                children: [
                  const Expanded(
                      child: SizedBox(
                    height: 1,
                  )),
                  Expanded(
                    flex: 10,
                    child: Image.asset(
                      'assets/logo.png',
                      width: 20,
                    ),
                  ),
                  const Expanded(child: SizedBox(height: 5)),
                ],
              ),
              const Text(
                "PESO:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: const InputDecoration(
                        labelText: "Seu peso em kilos (kg)",
                      ),
                      onChanged: (value) {
                        peso = value;
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "ALTURA:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: const InputDecoration(
                        labelText: "Sua altura em metros(m)",
                      ),
                      onChanged: (value) {
                        altura = value;
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "SEU IMC HOJE É DE:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                ImcString,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  //###########################################################################
                  ElevatedButton.icon(
                      onPressed: () {
                        imc = double.parse(peso) /
                            (double.parse(altura) * double.parse(altura));

                        setState(() {
                          ImcString = imc.toStringAsFixed(2);
                        });
                        print("teste");
                      },
                      icon: const Icon(Icons.numbers),
                      label: const Text("CALCULAR IMC")),
                  //###########################################################################
                  ElevatedButton.icon(
                      onPressed: () {
                        //imc = double.parse(peso) /
                        //(double.parse(altura) * double.parse(altura));
                        //imc_string = imc.toString();
                        print("teste");
                      },
                      icon: const Icon(Icons.save),
                      label: const Text("SALVAR")),
                  //###########################################################################
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
