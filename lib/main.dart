import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {    
    return MaterialApp(
      title: 'Tugas OSG-4',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Eudeka-OSG4'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {  
  // final wordPair = WordPair.random();
  // final _suggestions = <WordPair>[];
  // final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        // child: _buildBody()
        // child: Text(wordPair.asPascalCase),
        child: _buildBody(),
      )
    );
  }

  Widget _buildBody() {
    return Container(         
      decoration: BoxDecoration(color: Colors.tealAccent), 
      child: Column(
        children: <Widget>[
          Container(
            // child: _buildSuggestions()
            // child: _buildListView()
            
            child: _buildListContent()
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(color: Colors.blue),
            child: Row(            
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Expanded(          
                  child: Column(
                    children: <Widget>[  
                      Padding(
                        padding: EdgeInsets.only(left: 8.0, right: 8.0), 
                        child: Icon(Icons.phone, size: 40, color: Colors.white)
                      ),
                      Container(
                        child: Text("CALL", style: TextStyle(fontWeight: FontWeight.normal, color: Colors.white))
                      ) 
                    ],
                  )
                ),

                Expanded(
                  child: Column(
                    children: <Widget>[  
                      Padding(
                        padding: EdgeInsets.only(left: 8.0, right: 8.0), 
                        child: Icon(Icons.near_me, size: 40, color: Colors.white)
                      ),
                      Container(
                        child: Text("ROUTE", style: TextStyle(fontWeight: FontWeight.normal, color: Colors.white))
                      ) 
                    ],
                  )
                  
                ),

                Expanded(
                  child: Column(
                    children: <Widget>[  
                      Padding(
                        padding: EdgeInsets.only(left: 8.0, right: 8.0), 
                        child: Icon(Icons.share, size: 40, color: Colors.white)
                      ),
                      Container(
                        child: Text("SHARE", style: TextStyle(fontWeight: FontWeight.normal, color: Colors.white))
                      ) 
                    ],
                  )                  
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  // Widget _buildSuggestions() {
  //   return Expanded(
  //     child: ListView.builder(
  //       padding: const EdgeInsets.all(16.0),
  //       itemBuilder: /*1*/ (context, i) {
  //         if (i.isOdd) return Divider(); /*2*/

  //         final index = i ~/ 2; /*3*/
  //         if (index >= _suggestions.length) {
  //           _suggestions.addAll(generateWordPairs().take(10)); /*4*/
  //         }
  //         return _buildRow(_suggestions[index]);
  //       })
  //   );
  // }

  Widget _buildListContent(){
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.all(8.0),
        children: <Widget>[
          Container(   
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(8.0),
                              topRight: const Radius.circular(8.0)),
                      child: Image.asset(            
                        'images/boruto.jpg',            
                        width: 600,            
                        height: 240,            
                        fit: BoxFit.fill,                 
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15.0),
                      width: 600,
                      decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: new BorderRadius.only(
                              bottomLeft: const Radius.circular(8.0),
                              bottomRight: const Radius.circular(8.0))),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                textDirection: TextDirection.ltr,
                                children: <Widget>[
                                  Text(
                                    "Boruto",
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black)
                                  ),
                                  Text (
                                    "20 September 2019",
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.grey)
                                  )
                                ]
                              ), 
                              Text(
                                "10:12",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black)
                              )
                            ]
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8.0, bottom: 8.0)
                          ),
                          Text("The life of the shinobi is beginning to change. Boruto Uzumaki," 
                              "son of Seventh Hokage Naruto Uzumaki, has enrolled in the Ninja "
                              "Academy to learn the ways of the ninja. Now, as a series of "
                              "mysterious events unfolds, Boruto’s story is about to begin!",
                              textAlign: TextAlign.justify,
                              softWrap: true)
                        ]
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.0)
                ),
                Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(8.0),
                              topRight: const Radius.circular(8.0)),
                      child: Image.asset(            
                        'images/saitama.jpg',            
                        width: 600,            
                        height: 240,            
                        fit: BoxFit.cover,                 
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15.0),
                      width: 600,
                      decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: new BorderRadius.only(
                              bottomLeft: const Radius.circular(8.0),
                              bottomRight: const Radius.circular(8.0))),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                textDirection: TextDirection.ltr,
                                children: <Widget>[
                                  Text(
                                    "One Punch Man",
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black)
                                  ),
                                  Text (
                                    "20 September 2019",
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.grey)
                                  )
                                ]
                              ), 
                              Text(
                                "10:12",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black)
                              )
                            ]
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8.0)
                          ),
                          Text('Saitama adalah pahlawan yang hanya menjadi pahlawan untuk bersenang-senang. Namun, setelah tiga tahun pelatihan “istimewa”, ia menjadi begitu kuat sehingga praktis tidak terkalahkan. Faktanya, dia terlalu kuat — bahkan lawan terkuatnya dikeluarkan dengan satu pukulan, dan ternyata menjadi sangat dahsyat sebenarnya agak membosankan. Dengan hasratnya untuk menjadi pahlawan yang hilang bersamaan dengan rambutnya, namun masih berhadapan dengan musuh baru setiap hari, berapa lama lagi dia bisa mempertahankannya?',
                              textAlign: TextAlign.justify,
                              softWrap: true)
                        ]
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.0)
                ),
                Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(8.0),
                              topRight: const Radius.circular(8.0)),
                      child: Image.asset(            
                        'images/one-piece.png',            
                        width: 600,            
                        height: 240,            
                        fit: BoxFit.fill,                 
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15.0),
                      width: 600,
                      decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: new BorderRadius.only(
                              bottomLeft: const Radius.circular(8.0),
                              bottomRight: const Radius.circular(8.0))),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                textDirection: TextDirection.ltr,
                                children: <Widget>[
                                  Text(
                                    "One Piece",
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black)
                                  ),
                                  Text (
                                    "20 September 2019",
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.grey)
                                  )
                                ]
                              ), 
                              Text(
                                "10:12",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black)
                              )
                            ]
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8.0)
                          ),
                          Text('Bertahun-tahun yang lalu, raja bajak laut yang menakutkan, Gol D. Roger dieksekusi, meninggalkan setumpuk harta dan “One Piece” yang terkenal. Siapa pun yang mengklaim “One Piece” akan dinamai raja bajak laut baru. Monkey D. Luffy, seorang bocah lelaki yang mengkonsumsi salah satu “Buah Setan”, memiliki di kepalanya bahwa ia akan mengikuti jejak idolanya, bajak laut Shanks, dan menemukan One Piece. Tentu saja ini membantu, bahwa tubuhnya memiliki sifat-sifat karet dan dia dikelilingi oleh sekelompok pejuang dan pencuri yang terampil untuk membantunya di sepanjang jalan. Monkey D. Luffy membawa sekelompok krunya diikuti oleh, Roronoa Zoro, Nami, Usopp, Sanji, Chopper Tony-Tony, Nico Robin, Franky, dan Brook. Mereka akan melakukan apa saja untuk mendapatkan One Piece dan menjadi Raja Bajak Laut!',
                              textAlign: TextAlign.justify,
                              softWrap: true)
                        ]
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.0)
                ),
                Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(8.0),
                              topRight: const Radius.circular(8.0)),
                      child: Image.asset(            
                        'images/conan.jpg',            
                        width: 600,            
                        height: 240,            
                        fit: BoxFit.fill,                 
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15.0),
                      width: 600,
                      decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: new BorderRadius.only(
                              bottomLeft: const Radius.circular(8.0),
                              bottomRight: const Radius.circular(8.0))),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                textDirection: TextDirection.ltr,
                                children: <Widget>[
                                  Text(
                                    "Detective Conan",
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black)
                                  ),
                                  Text (
                                    "20 September 2019",
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.grey)
                                  )
                                ]
                              ), 
                              Text(
                                "10:12",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black)
                              )
                            ]
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8.0)
                          ),
                          Text('Shinichi Kudou, seorang ahli misteri hebat yang baru berusia tujuh belas tahun, sudah terkenal karena telah memecahkan beberapa kasus yang menantang. Suatu hari, ketika Shinichi melihat dua pria yang mencurigakan dan memutuskan untuk mengikuti mereka, ia secara tidak sengaja menjadi saksi dari aktivitas ilegal yang mengganggu. Ketika para pria menangkap Shinichi, mereka memberinya dosis dengan obat percobaan yang dirumuskan oleh organisasi kriminal mereka dan meninggalkannya untuk mati. Namun, yang mengejutkannya, Shinichi masih hidup dan segera bangun, tetapi sekarang, ia memiliki tubuh seorang anak berusia tujuh tahun, yang dengan sempurna memelihara kecerdasan aslinya. Dia menyembunyikan identitas aslinya dari semua orang, termasuk teman masa kecilnya Ran Mouri dan ayahnya, detektif swasta Kogorou Mouri, dan memakai nama alias Conan Edogawa (terinspirasi oleh penulis misteri Arthur Conan Doyle dan Ranpo Edogawa).',
                              textAlign: TextAlign.justify,
                              softWrap: true)
                        ]
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.0)
                ),
                Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(8.0),
                              topRight: const Radius.circular(8.0)),
                      child: Image.asset(            
                        'images/broly.jpg',            
                        width: 600,            
                        height: 240,            
                        fit: BoxFit.fill,                 
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15.0),
                      width: 600,
                      decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: new BorderRadius.only(
                              bottomLeft: const Radius.circular(8.0),
                              bottomRight: const Radius.circular(8.0))),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                textDirection: TextDirection.ltr,
                                children: <Widget>[
                                  Text(
                                    "Dragon Ball Super – Broly",
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black)
                                  ),
                                  Text (
                                    "20 September 2019",
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.grey)
                                  )
                                ]
                              ), 
                              Text(
                                "10:12",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black)
                              )
                            ]
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8.0)
                          ),
                          Text('Bumi damai setelah Turnamen Kekuasaan. Menyadari bahwa alam semesta masih memiliki banyak orang yang lebih kuat untuk dilihat, Goku menghabiskan seluruh hari pelatihannya untuk mencapai ketinggian yang lebih besar. Lalu suatu hari, Goku dan Vegeta dihadapkan pada seorang Saiyan bernama ‘Broly’ yang belum pernah mereka lihat sebelumnya. Orang-orang Saiyan seharusnya hampir sepenuhnya musnah dalam kehancuran Planet Vegeta, jadi apa yang dilakukan orang ini di Bumi? Pertemuan antara tiga Saiyan yang telah mengikuti takdir yang sangat berbeda ini berubah menjadi pertempuran yang luar biasa, dengan bahkan Frieza (kembali dari Neraka) terperangkap dalam campuran.',
                              textAlign: TextAlign.justify,
                              softWrap: true)
                        ]
                      ),
                    )
                  ],
                )
              ],

            ),
          )
        ],
      )
    );
  }

  // Widget _buildListView(){
  //   return Expanded(
  //     child: ListView(
  //       padding: const EdgeInsets.all(8.0),
  //       children: <Widget>[
  //         Container(
  //           height: 50,
  //           color: Colors.amber[600],
  //           child: const Center(child: Text('Entry A')),
  //         ),
  //         Container(
  //           height: 50,
  //           color: Colors.amber[500],
  //           child: const Center(child: Text('Entry B')),
  //         ),
  //         Container(
  //           height: 50,
  //           color: Colors.amber[100],
  //           child: const Center(child: Text('Entry C')),
  //         ),
  //       ],
  //     )
  //   );
  // }

  // Widget _buildRow(WordPair pair) {
  //   return ListTile(
  //     title: Text(
  //       pair.asPascalCase,
  //       style: _biggerFont,
  //     ),
  //   );
  // }

  // Widget _buildContent(){
  //   return Expanded(
  //     child: Container(
  //       padding: EdgeInsets.all(8.0),    
  //       decoration: BoxDecoration(color: Colors.tealAccent),    
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.start,
  //         mainAxisSize: MainAxisSize.min,
  //         children: <Widget>[   
  //           Expanded(
  //             child: Column(
  //               children: <Widget>[
  //                 ClipRRect(
  //                   borderRadius: new BorderRadius.only(
  //                           topLeft: const Radius.circular(8.0),
  //                           topRight: const Radius.circular(8.0)),
  //                   child: Image.asset(            
  //                     'images/lake.jpg',            
  //                     width: 600,            
  //                     height: 240,            
  //                     fit: BoxFit.cover,                 
  //                   ),
  //                 ),
  //                 Container(
  //                   padding: EdgeInsets.all(15.0),
  //                   width: 600,
  //                   decoration: BoxDecoration(
  //                           color: Colors.white,
  //                           borderRadius: new BorderRadius.only(
  //                           bottomLeft: const Radius.circular(8.0),
  //                           bottomRight: const Radius.circular(8.0))),
  //                   child: Column(
  //                     children: <Widget>[
  //                       Row(
  //                         mainAxisAlignment: MainAxisAlignment.spaceBetween, 
  //                         children: <Widget>[
  //                           Column(
  //                             crossAxisAlignment: CrossAxisAlignment.start,
  //                             textDirection: TextDirection.ltr,
  //                             children: <Widget>[
  //                               Text(
  //                                 "Lake",
  //                                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black)
  //                               ),
  //                               Text (
  //                                 "20 September 2019",
  //                                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.grey)
  //                               )
  //                             ]
  //                           ), 
  //                           Text(
  //                             "10:12",
  //                             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black)
  //                           )
  //                         ]
  //                       ),
  //                       Padding(
  //                         padding: EdgeInsets.only(top: 8.0, bottom: 8.0)
  //                       ),
  //                       Text('Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
  //                             'Alps. Situated 1,578 meters above sea level, it is one of the '
  //                             'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
  //                             'half-hour walk through pastures and pine forest, leads you to the '
  //                             'lake, which warms to 20 degrees Celsius in the summer. Activities '
  //                             'enjoyed here include rowing, and riding the summer toboggan run.',
  //                           textAlign: TextAlign.justify,
  //                           softWrap: true)
  //                     ]
  //                   ),
  //                 )
  //               ],
  //             ),
  //           )            
  //         ]
  //       ),
  //     )
      
  //   );
  // }
}