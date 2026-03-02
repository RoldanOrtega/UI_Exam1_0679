import 'package:flutter/material.dart';

class Pantalla3 extends StatelessWidget {
  const Pantalla3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CHANNEL"),
        centerTitle: true,
        actions: const [Icon(Icons.bookmark_border), Icon(Icons.more_vert)],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network("https://raw.githubusercontent.com/RoldanOrtega/UI_Exam1_0679/refs/heads/main/super.JPG", height: 220, width: 180, fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 20),
            const Center(child: Text("Hasta volver a encontrarte", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold))),
            const Center(child: Text("Andrea Roldan", style: TextStyle(color: Colors.grey))),
            const SizedBox(height: 15),
            // Controles de audio del wireframe 3
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.shuffle, color: Colors.grey),
                IconButton(icon: const Icon(Icons.skip_previous, size: 40), onPressed: () {}),
                const CircleAvatar(radius: 30, backgroundColor: Colors.white, child: Icon(Icons.play_arrow, color: Colors.black, size: 40)),
                IconButton(icon: const Icon(Icons.skip_next, size: 40), onPressed: () {}),
                const Icon(Icons.repeat, color: Colors.grey),
              ],
            ),
            const Divider(height: 40),
            const Text("Transcription", style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold, fontSize: 18)),
            const SizedBox(height: 10),
            const Text(
              "A veces las circunstancias te separan de la persona que amas en tu vida y no hay nada que puedas hacer para evitarlo, no si el mundo no quiere. Pero a veces es bondadoso y te da una segunda oportunidad.",
              textAlign: TextAlign.justify,
              style: TextStyle(height: 1.6),
            ),
            const SizedBox(height: 20),
            const Text("Etiquetas", style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            // Nube de etiquetas como en tu imagen
            Wrap(
              spacing: 8, runSpacing: 8,
              children: ["batfamily", "batman", "robin", "nightwing", "redhood", "superboy"].map((tag) => 
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(color: Colors.white12, borderRadius: BorderRadius.circular(5)),
                  child: Text(tag, style: const TextStyle(fontSize: 12)),
                )
              ).toList(),
            ),
            const SizedBox(height: 30),
            const Text("Comments", style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold)),
            const ListTile(
              contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(child: Text("D")),
              title: Text("David"),
              subtitle: Text("¡Me encanta cómo se ve esta versión profesional!"),
            )
          ],
        ),
      ),
    );
  }
}