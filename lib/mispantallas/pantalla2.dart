import 'package:flutter/material.dart';

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("COURSE"),
        centerTitle: true,
        actions: const [Icon(Icons.favorite_border), SizedBox(width: 15), Icon(Icons.share), SizedBox(width: 10)],
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          // Imagen con burbuja estilo Wireframe 2
          Stack(
            children: [
              Image.network("https://raw.githubusercontent.com/RoldanOrtega/UI_Exam1_0679/refs/heads/main/super.JPG", height: 200, width: double.infinity, fit: BoxFit.cover),
              Positioned(
                top: 20, left: 20,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
                  child: const Text("HELLO!", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(20),
              children: [
                const Text("Hasta Volver a Encontrarte | LEE", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
                const Text("Andrea Roldan", style: TextStyle(color: Colors.orange, fontSize: 18)),
                const SizedBox(height: 10),
                // Estadísticas (Vistas, Votos, Partes)
                const Row(
                  children: [
                    Icon(Icons.remove_red_eye, size: 16, color: Colors.grey), Text(" 225M  "),
                    Icon(Icons.star, size: 16, color: Colors.grey), Text(" 15M  "),
                    Icon(Icons.list, size: 16, color: Colors.grey), Text(" 2 Partes"),
                  ],
                ),
                const SizedBox(height: 15),
                // Etiquetas de la historia
                Wrap(
                  spacing: 8,
                  children: ["ao3", "comandante", "consuelo", "dolor"].map((tag) => 
                    Chip(label: Text(tag, style: const TextStyle(fontSize: 10)), backgroundColor: Colors.white10)
                  ).toList(),
                ),
                const SizedBox(height: 15),
                const Text(
                  "No es lo mismo un cuerpo hecho para la guerra que un alma hecha para ella. No es lo mismo una mano que mata que un corazón que es cruel.",
                  style: TextStyle(color: Colors.white70, height: 1.4),
                ),
                const Divider(height: 40),
                _capitulo(context, "01: Introduction", true, 0.8),
                _capitulo(context, "02: Cap 1", false, 0.0),
                _capitulo(context, "03: Cap 2", false, 0.0),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _capitulo(BuildContext context, String t, bool active, double prog) {
    return ListTile(
      onTap: () => Navigator.pushNamed(context, '/pantalla3'),
      leading: Icon(Icons.play_circle_fill, size: 40, color: active ? Colors.orange : Colors.grey),
      title: Text(t, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
          if (active) LinearProgressIndicator(value: prog, color: Colors.orange, backgroundColor: Colors.white10),
        ],
      ),
    );
  }
}