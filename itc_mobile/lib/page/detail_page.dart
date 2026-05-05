import 'package:flutter/material.dart';
import '../data/member_itc.dart';

class DetailPage extends StatefulWidget {
  final Member member;
  const DetailPage({super.key, required this.member});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool _fav = false;

  @override
  Widget build(BuildContext context) {
    final m = widget.member;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0D3B1F),
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(_fav ? Icons.favorite : Icons.favorite_border,
                color: _fav ? Colors.red : Colors.white),
            onPressed: () => setState(() => _fav = !_fav),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              color: const Color(0xFF0D3B1F),
              child: Image.asset(m.gambar),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(m.name,
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 4),
                  Text(m.position,
                      style: const TextStyle(color: Colors.grey)),
                  const SizedBox(height: 12),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(m.description,
                        style: const TextStyle(color: Colors.black87, height: 1.5)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}