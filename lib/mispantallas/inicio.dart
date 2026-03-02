import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(Icons.account_circle, size: 30),
        title: const Text("DESCUBRIR", style: TextStyle(fontSize: 14, letterSpacing: 2)),
        actions: const [
          Icon(Icons.cast),
          SizedBox(width: 15),
          Icon(Icons.sort),
          SizedBox(width: 10)
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Hello Andrea!", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const Text("Andrea Roldan • Grupo 6-I", style: TextStyle(color: Colors.orange)),
            const SizedBox(height: 15),
            
            TextField(
              decoration: InputDecoration(
                hintText: "Buscar historias o personas",
                suffixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                filled: true,
                fillColor: const Color(0xFF1E1E1E),
              ),
            ),
            const SizedBox(height: 20),

            // --- SECCIÓN 1: COURSES (Distribución exacta al Wireframe) ---
            const Text("Courses", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 15),
            Row(
              children: [
                _wireframeCard(context, "Hata Volver a Encontrarte", "Andrea Roldan", "70 Hours", "https://raw.githubusercontent.com/RoldanOrtega/UI_Exam1_0679/refs/heads/main/super.JPG", '/pantalla2'),
                const SizedBox(width: 15),
                _wireframeCard(context, "Orgullo y Prejuicio", "Jane Austen", "45 Hours", "https://raw.githubusercontent.com/RoldanOrtega/UI_Exam1_0679/refs/heads/main/orgullo.JPG", '/pantalla2'),
              ],
            ),

            const SizedBox(height: 25),

            // --- SECCIÓN 2: POPULAR CHANNELS (Distribución exacta al Wireframe) ---
            const Text("Popular channels", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 15),
            // Primera fila de canales
            Row(
              children: [
                _wireframeCard(context, "Damian", "Karla P.", "10 Minutes", "https://raw.githubusercontent.com/RoldanOrtega/UI_Exam1_0679/refs/heads/main/damian.JPG", '/pantalla3'),
                const SizedBox(width: 15),
                _wireframeCard(context, "Bajo la Misma Estrella", "John Green", "8 Minutes", "https://raw.githubusercontent.com/RoldanOrtega/UI_Exam1_0679/refs/heads/main/bajo.JPG", '/pantalla3'),
              ],
            ),
            const SizedBox(height: 15),
            // Segunda fila de canales (Los recuadros que agregamos)
            Row(
              children: [
                _wireframeCard(context, "Almendra", "Won-pyung", "15 Minutes", "https://raw.githubusercontent.com/RoldanOrtega/UI_Exam1_0679/refs/heads/main/almendra.JPG", '/pantalla3'),
                const SizedBox(width: 15),
                _wireframeCard(context, "Coraline", "Neil Gaiman", "12 Minutes", "https://raw.githubusercontent.com/RoldanOrtega/UI_Exam1_0679/refs/heads/main/coraline1.JPG", '/pantalla3'),
              ],
            ),
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }

  // WIDGET UNIFICADO CON LA ESTÉTICA DEL WIREFRAME
  Widget _wireframeCard(BuildContext context, String t, String a, String info, String img, String ruta) {
    return Expanded(
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, ruta),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFF1E1E1E),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.white10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                child: Image.network(img, height: 100, width: double.infinity, fit: BoxFit.cover),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(t, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12), maxLines: 1, overflow: TextOverflow.ellipsis),
                    Text("Teacher: $a", style: const TextStyle(color: Colors.grey, fontSize: 10), maxLines: 1),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        const Icon(Icons.access_time, size: 10, color: Colors.orange),
                        const SizedBox(width: 4),
                        Text(info, style: const TextStyle(color: Colors.white, fontSize: 10)),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}