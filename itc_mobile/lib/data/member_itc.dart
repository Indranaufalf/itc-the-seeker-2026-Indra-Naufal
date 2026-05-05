class Member {
  final String name;
  final String position;
  final String division;
  final String gambar;
  final String description;

  const Member({
    required this.name,
    required this.position,
    required this.division,
    required this.gambar,
    required this.description,
  });
}

final List<Member> allMembers = [
  Member(
    name: 'Grace Rianty Butar Butar',
    position: 'Chairperson',
    division: 'Exco',
    gambar: 'assets/ketua.png',
    description: 'Memimpin, mengatur, dan mengawasi jalannya ITC',
  ),
  Member(
    name: 'Dzaki Ghatfaan Abhipraya',
    position: 'Vice Chairperson',
    division: 'Exco',
    gambar: 'assets/wakil.png',
    description: 'Membantu ketua dalam menjalankan fungsi organisasi, mewakili ketua saat berhalangan, merumuskan kebijakan, dan mengkoordinasikan bidang-bidang teknis',
  ),

  Member(
    name: 'Nayla Saskia Zallianti',
    position: 'Secretary',
    division: 'Exco',
    gambar: 'assets/sekre.png',
    description: 'Memberikan dukungan administratif dan operasional komprehensif',
  ),
  Member(
    name: 'Dewi Rahmawati',
    position: 'Treasury',
    division: 'Exco',
    gambar: 'assets/bendahara.png',
    description: 'Mengelola, mencatat, dan mempertanggungjawabkan seluruh aliran kas (pemasukan dan pengeluaran) organisasi',
  ),

  Member(
    name: 'Muhammad Rafli Wibowo',
    position: 'Medinfo',
    division: 'Medinfo',
    gambar: 'assets/medinfo1.png',
    description: 'Mengelola komunikasi, publikasi, dokumentasi, dan citra digital',
  ),
  Member(
    name: 'Satya Dio Putranto',
    position: 'Medinfo',
    division: 'Medinfo',
    gambar: 'assets/medinfo2.png',
    description: 'Mengelola komunikasi, publikasi, dokumentasi, dan citra digital',
  ),
  Member(
    name: 'Wilda Nafian',
    position: 'Medinfo',
    division: 'Medinfo',
    gambar: 'assets/medinfo3.png',
    description: 'Mengelola komunikasi, publikasi, dokumentasi, dan citra digital',
  ),

  Member(
    name: 'Muhammad Ruhul Jadid',
    position: 'Head of Division',
    division: 'UI/UX',
    gambar: 'assets/ketuaui.png',
    description: 'Memimpin tim desain dalam merancang pengalaman pengguna (UX) dan antarmuka (UI) produk digital yang intuitif, menarik, dan selaras dengan tujuan bisnis',
  ),
  Member(
    name: 'Gita Ristya',
    position: 'Deputy Head of Division',
    division: 'UI/UX',
    gambar: 'assets/wakilui.png',
    description: 'Merancang pengalaman pengguna (UX) dan antarmuka (UI) produk digital yang intuitif, menarik, dan selaras dengan tujuan bisnis',
  ),

  Member(
    name: 'Gradiva Arya Wicaksana',
    position: 'Head of Division',
    division: 'Webdev',
    gambar: 'assets/ketuaweb.png',
    description: 'Melibatkan kombinasi antara keahlian teknis tingkat tinggi, manajemen tim, dan tanggung jawab strategis proyek',
  ),
  Member(
    name: 'Farhannivta Ramadhana',
    position: 'Deputy Head of Division',
    division: 'Webdev',
    gambar: 'assets/wakilweb1.png',
    description: 'Peran hibrida yang menggabungkan keahlian teknis tingkat tinggi dengan manajemen tim dan proyek',
  ),
  Member(
    name: 'Marvel Valensiano',
    position: 'Deputy Head of Division',
    division: 'Webdev',
    gambar: 'assets/wakilweb2.png',
    description: 'Peran hibrida yang menggabungkan keahlian teknis tingkat tinggi dengan manajemen tim dan proyek',
  ),

  Member(
    name: 'Mochamad Rizal Ardiansyah Sucipno',
    position: 'Head of Division',
    division: 'CP',
    gambar: 'assets/ketuacp.png',
    description: 'Memiliki tanggung jawab teknis dan manajerial untuk mempersiapkan anggota dalam memecahkan masalah algoritmik kompleks',
  ),
  Member(
    name: 'Filipus Satrio Dewaki Tyasing Suryo',
    position: 'Deputy Head of Division',
    division: 'CP',
    gambar: 'assets/wakilcp.png',
    description: 'Berfokus pada pendampingan, manajemen internal, dan teknis operasional',
  ),

  Member(
    name: 'Bintoro',
    position: 'Head of Division',
    division: 'Mobile',
    gambar: 'assets/ketuamobile.png',
    description: 'Memimpin pengembangan aplikasi Android/iOS dari tahap perencanaan hingga rilis dan pemeliharaan',
  ),
  Member(
    name: 'Ikhsan Fillah Hidayat',
    position: 'Deputy Head of Division',
    division: 'Mobile',
    gambar: 'assets/wakilmobile.png',
    description: 'Memimpin pengembangan aplikasi Android/iOS dari tahap perencanaan hingga rilis dan pemeliharaan',
  ),

  Member(
    name: 'Bintang Ramadhan',
    position: 'Head of Division',
    division: 'AI/ML',
    gambar: 'assets/ketuaai.png',
    description: 'Membina anggota di bidang machine learning dan AI',
  ),
  Member(
    name: 'Muhammad Dimas Setiaji',
    position: 'Deputy Head of Division',
    division: 'AI/ML',
    gambar: 'assets/wakilai.png',
    description: 'Membina anggota di bidang machine learning dan AI',
  ),

  Member(
    name: 'Kurnia Salasa',
    position: 'Head of Division',
    division: 'PM',
    gambar: 'assets/ketuapm.png',
    description: 'Memimpin, merencanakan, dan mengawasi jalannya proyek dari awal hingga akhir agar selesai tepat waktu, sesuai anggaran, dan ruang lingkup yang ditetapkan',
  ),
  Member(
    name: 'Fahri Hidayatullah',
    position: 'Deputy Head of Division',
    division: 'PM',
    gambar: 'assets/wakilpm.png',
    description: 'Merencanakan, dan mengawasi jalannya proyek dari awal hingga akhir agar selesai tepat waktu, sesuai anggaran, dan ruang lingkup yang ditetapkan',
  ),
];
