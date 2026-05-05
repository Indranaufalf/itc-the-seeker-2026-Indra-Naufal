import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../data/member_itc.dart';
import 'detail_page.dart';

class StructurePage extends StatelessWidget {
  final String? division;
  const StructurePage({super.key, this.division});

  @override
  Widget build(BuildContext context) {
    final members = division != null
        ? allMembers.where((m) => m.division == division).toList()
        : allMembers;

    final Map<String, List<Member>> grouped = {};
    for (final m in members) {
      grouped.putIfAbsent(m.division, () => []).add(m);
    }

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(division ?? 'Management Structure')),
        backgroundColor: const Color(0xFF0D3B1F),
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: grouped.entries.map((entry) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 20, top: 5),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              child: Text(
                entry.key,
                style:  GoogleFonts.poppins( 
                  fontWeight: FontWeight.w700,
                  fontSize: 15),
              ),
            ),
            ...entry.value.map((m) => GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => DetailPage(member: m)),
              ),
              child: Container(
                height: 90,
                margin: const EdgeInsets.only(bottom: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 4)],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Row(
                    children: [
                      Image.asset(
                        m.gambar,
                        width: 80,
                        height: 90,
                        fit: BoxFit.cover,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                m.name,
                                style:  GoogleFonts.poppins( 
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 2,
                                ),
                                child: Text(
                                  m.position,
                                  style:  GoogleFonts.poppins( 
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )),
          ],
        )).toList(),
      ),
    );
  }
}