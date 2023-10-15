import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  // Konstruktor HomePage
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLoved = false; // Variabel status ikon hati
  String buttonText = "Button telah ditekan"; // Pesan yang akan ditampilkan

  // Fungsi untuk mengganti status ikon hati saat ditekan
  void toggleLove() {
    setState(() {
      isLoved = !isLoved;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[400],
        title: Text(
          "Sociola App", // Mengubah judul aplikasi
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.pink.shade200,
              Colors.pink,
            ],
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Flexible(
              flex: 2,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: Image.asset(
                      'images/soco.png', // Ganti dengan path gambar Anda
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    top: 20,
                    right: 20,
                    width: 40.0, // Mengurangi ukuran lingkaran love
                    height: 40.0, // Mengurangi ukuran lingkaran love
                    child: GestureDetector(
                      onTap: toggleLove,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.favorite,
                            color: isLoved ? Colors.grey : Colors.red,
                            size: 20.0, // Mengurangi ukuran ikon love
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.all(6),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            10.0), // Sesuaikan dengan nilai yang Anda inginkan
                        child: Image.asset('images/p1.jpeg'),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.all(6),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            10.0), // Sesuaikan dengan nilai yang Anda inginkan
                        child: Image.asset('images/p2.jpeg'),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.all(6),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            10.0), // Sesuaikan dengan nilai yang Anda inginkan
                        child: Image.asset('images/p3.jpeg'),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.all(6),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            10.0), // Sesuaikan dengan nilai yang Anda inginkan
                        child: Image.asset('images/p4.jpeg'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 4,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "Sociolla",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color:
                            Colors.white, // Mengganti warna teks menjadi putih
                      ),
                    ),
                  ),
                  Flexible(
                    child: ListView(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 10), // Menambahkan jarak vertikal
                          child: Text(
                            "Introducing SOCOSOCO is your personal beauty platform which allows integrated access to our e-commerce and online media site. On SOCO, you can manage, track and review your Sociolla shopping history and be a content creator by contributing to article/video/review/glossary to our digital media website Beauty Journal.\n\nOn SOCO, you can enjoy a better and personalized beauty experience by completing your beauty profile and interests. Get better product recommendations, relevant content, and social feed updates through many more exciting features yet to unveil!",
                            style: TextStyle(
                              color: Colors
                                  .white, // Mengganti warna teks menjadi putih
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 10), // Menambahkan jarak vertikal
                          child: Text(
                            "Sociolla was founded in 2015 to provide a better experience of beauty online shopping nationally. Our founders believe that women should feel confident and convenient in their pursuit of various beauty products. Sociolla now carries more than 150 beauty brands and more than 5,000 product selections, curated to serve you better.",
                            style: TextStyle(
                              color: Colors
                                  .white, // Mengganti warna teks menjadi putih
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
