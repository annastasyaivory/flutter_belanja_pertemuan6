import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_belanja/models/item.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        name: 'Penthouse 2',
        release: '19 Februari 2021',
        image: 'assets/images/penthouse.jpg',
        desc:
            'Penthouse akan menceritakan kisah seorang wanita yang mempertaruhkan segalanya untuk mencapai tujuannya agar dapat pindah ke penthouse mewah di Distrik Gangnam. Dia ingin memenuhi hasyrat, keibuan, bahkan karir untuk bertahan dalam lingkungan kelas atas.'),
    Item(
        name: 'Crash Landing On You',
        release: '14 Desember 2019',
        image: 'assets/images/cloy.jpeg',
        desc:
            'Kisah drama ini tentang pewaris wanita perusahaan Korea Selatan yang kaya raya bernama Yoon Se Ri. Suatu hari, ia paragliding tersangkut di angin topan dan jatuh di Korea Utara.'),
    Item(
        name: 'Start-Up',
        release: '17 Oktober 2020',
        image: 'assets/images/startup.jpg',
        desc:
            'Start-Up menceritakan kisah orang-orang di dunia perusahaan startup. Seo Dal Mi (Bae Suzy), karakter utama film ini bermimpi menjadi Steve Jobs dari Korea. Dia seorang petualang yang tidak memiliki banyak harta, tetapi memiliki rencana besar untuk dirinya sendiri.'),
    Item(
        name: 'True Beauty',
        release: '9 Desember 2020',
        image: 'assets/images/true.jpg',
        desc:
            'Drama garapan Kim Sang Hyub ini menceritakan tentang Lim Ju Kyung (Moon Ga Young). Lim Ju Kyung merupakan seorang pelajar SMA yang kurang percaya diri dengan penampilannya. Hingga dirinya bertekad menggunakan riasan atau makeup untuk menyembunyikan wajah asli.'),
    Item(
        name: 'Itaewon Class',
        release: '31 Januari 2020',
        image: 'assets/images/itaewon.jpg',
        desc:
            'Drama Korea ini berawal dari kisah pria bernama Park Saeroyi yang masa mudanya hancur karena fitnahan. Ia masuk penjara karena ulah teman sekelasnya Jang Geun Soo anak pengusaha kaya yang semena-mena yaitu Jang Dae Hee.')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Released Korean Drama"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Container(
          color: Colors.pink[100],
          padding: EdgeInsets.all(8),
          child: ListView.builder(
              padding: EdgeInsets.all(8),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/item', arguments: item);
                  },
                  child: Card(
                    child: Container(
                      margin: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Expanded(child: Text(item.name)),
                          Expanded(
                            child: Text(
                              item.release,
                              textAlign: TextAlign.end,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              })), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
