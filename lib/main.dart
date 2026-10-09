import 'package:flutter/material.dart';

void main() {
  runApp(const BookMateApp());
}

// Widget utama pembungkus aplikasi (Root Widget)
class BookMateApp extends StatelessWidget {
  const BookMateApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Pake MaterialApp buat ngeset tema dasar dan halaman awal
    return MaterialApp(
      title: 'BookMate',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF795548)),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

// Widget struktur halaman beranda
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Pake Scaffold sebagai kerangka utama halaman
    return Scaffold(
      backgroundColor: Colors.white,
      // SafeArea biar konten gak ketutup status bar/notch HP
      body: SafeArea(
        // SingleChildScrollView biar layar bisa di-scroll kalau sempit
        child: SingleChildScrollView(
          // Padding luar dari tepi layar
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            // Column utama buat nampung semua elemen dari atas ke bawah
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Row buat jejerin logo dan nama aplikasi ke samping
                Row(
                  children: [
                    // Panggil logo dari folder assets
                    Image.asset(
                      'assets/logo.png',
                      width: 32,
                      height: 32,
                      fit: BoxFit.contain,
                    ),
                    // SizedBox buat ngasih spasi horizontal
                    const SizedBox(width: 10),
                    // Text buat judul nama aplikasi
                    const Text(
                      'BookMate',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF795548),
                      ),
                    ),
                  ],
                ),
                // SizedBox buat ngasih spasi vertikal
                const SizedBox(height: 16),

                // Text buat teks sapaan awal
                const Text(
                  'Halo, mau baca apa hari ini?',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                const SizedBox(height: 16),

                // Container pembungkus inputan cari buku
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  // TextField buat kolom inputan teks pencarian
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Cari judul buku',
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.only(left: 20, top: 14),
                      // Icon kaca pembesar di dalam input sebelah kanan
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Icon(
                          Icons.search,
                          size: 24,
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Text buat judul section koleksi
                const Text(
                  'Koleksi Buku',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF795548),
                  ),
                ),
                const SizedBox(height: 12),

                // ==================== KARTU BUKU 1 ====================
                // Container luar buat kartu buku 1
                Container(
                  margin: const EdgeInsets.only(bottom: 14),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  // Row buat susun foto di kiri dan detail di kanan
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Sampul buku
                      ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: Image.asset(
                          'assets/atomic_habits.jpg',
                          width: 85,
                          height: 115,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 14),

                      // Expanded biar kolom teks detail fleksibel
                      Expanded(
                        // Column buat susun detail buku dari atas ke bawah
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Text judul buku
                            const Text(
                              'Atomic Habits',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // Text nama penulis
                            const Text(
                              'James Clear',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(height: 4),
                            // Text jumlah halaman
                            const Text(
                              '320 halaman',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF795548),
                              ),
                            ),
                            const SizedBox(height: 16),

                            // Container tombol "Lihat Detail"
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                color: const Color(0xFF795548),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              // Text di dalam tombol
                              child: const Text(
                                'Lihat Detail',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // ==================== KARTU BUKU 2 ====================
                Container(
                  margin: const EdgeInsets.only(bottom: 14),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: Image.asset(
                          'assets/laskar_pelangi.jpeg',
                          width: 85,
                          height: 115,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 14),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Laskar Pelangi',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              'Andrea Hirata',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(height: 4),
                            const Text(
                              '529 halaman',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF795548),
                              ),
                            ),
                            const SizedBox(height: 16),

                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                color: const Color(0xFF795548),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Text(
                                'Lihat Detail',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // ==================== KARTU BUKU 3 ====================
                Container(
                  margin: const EdgeInsets.only(bottom: 14),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: Image.asset(
                          'assets/sapiens.jpeg',
                          width: 85,
                          height: 115,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 14),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Sapiens',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              'Yuval Noah Harari',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(height: 4),
                            const Text(
                              '498 halaman',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF795548),
                              ),
                            ),
                            const SizedBox(height: 16),

                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                color: const Color(0xFF795548),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Text(
                                'Lihat Detail',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      // NavigationBar buat menu navigasi di bagian bawah layar
      bottomNavigationBar: NavigationBar(
        selectedIndex: 0,
        backgroundColor: Colors.white,
        indicatorColor: const Color(0xFFD9CCC6),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Beranda',
          ),
          NavigationDestination(
            icon: Icon(Icons.menu_book_outlined),
            selectedIcon: Icon(Icons.menu_book),
            label: 'Aktivitas',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}
