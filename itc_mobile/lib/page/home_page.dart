import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../data/member_itc.dart';
import 'structure_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ketua = allMembers.firstWhere(
      (m) => m.position.toLowerCase().contains('chairperson'),
      );
    final divisions = allMembers.map((m) => m.division).toSet().toList();

    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              _buildHeader(),
              Positioned(
                bottom: -30,
                left: 16,
                right: 16,
                child: _buildStatCard(),
              ),
            ],
          ),
          const SizedBox(height: 48),
          _buildKetuaCard(ketua),
          const SizedBox(height: 8),
          Expanded(child: _buildDivisionGrid(context, divisions)),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      height: 350,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xFF0D3B1F),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: -100,
            child: Opacity(
              opacity: 0.3,
              child: Image.asset('assets/logo.png', width: 350),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ITC Directory',
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Information Technology Club',
                  style: GoogleFonts.poppins(fontSize: 13, color: Colors.white70),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 160, 0),
                  child: Text(
                    'Kelompok studi di bawah naungan Universitas Pembangunan Nasional "Veteran" Yogyakarta yang secara aktif bergerak di bidang teknologi informasi dan mempelajari hal seputar dunia IT.',
                    style: GoogleFonts.poppins(fontSize: 15, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatCard() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.12),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _statItem(Icons.people, '${allMembers.length}', 'Members'),
          _statItem(
            Icons.grid_view,
            '${allMembers.map((m) => m.division).toSet().length}',
            'Teams',
          ),
          _statItem(Icons.calendar_today, '26/27', 'Periode'),
        ],
      ),
    );
  }

  Widget _statItem(IconData icon, String value, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          value,
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF0D3B1F),
          ),
        ),
        Text(
          label,
          style: GoogleFonts.poppins(fontSize: 11, color: Colors.grey),
        ),
      ],
    );
  }

  Widget _buildKetuaCard(Member ketua) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        height: 190,
        decoration: BoxDecoration(
          color: const Color(0xFF0D3B1F),
          borderRadius: BorderRadius.circular(12),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Row(
            children: [
              Image.asset(
                ketua.gambar,
                height: 190,
                width: 160,
                fit: BoxFit.cover,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ketua.name,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        ketua.position,
                        style: GoogleFonts.poppins(
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 7),
                        child: Text(
                          'Experienced in leading and managing national and international activities, with a focus on planning, cross-division coordination, and end-to-end event execution.',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 13,
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
    );
  }

  Widget _buildDivisionGrid(BuildContext context, List<String> divisions) {
    return GridView.builder(
      itemCount: divisions.length,
      padding: const EdgeInsets.all(15),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: 3 / 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemBuilder: (context, i) {
        final division = divisions[i];
        return GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => StructurePage(division: division),
            ),
          ),
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.12),
                  blurRadius: 12,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  _getDivisionIcon(division),
                  size: 28,
                  color: const Color(0xFF0D3B1F),
                ),
                const SizedBox(height: 6),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Text(
                    division.toUpperCase(),
                    style: GoogleFonts.poppins(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  IconData _getDivisionIcon(String division) {
    switch (division.toUpperCase().trim()) {
      case 'EXCO':
        return Icons.groups;
      case 'MEDINFO':
        return Icons.camera;
      case 'UI/UX':
        return Icons.palette;
      case 'WEBDEV':
        return Icons.code;
      case 'CP':
        return Icons.emoji_events;
      case 'MOBILE':
        return Icons.developer_mode;
      case 'AI/ML':
        return Icons.psychology;
      case 'PM':
        return Icons.manage_accounts;
      default:
        return Icons.group;
    }
  }
}