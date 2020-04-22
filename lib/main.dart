import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.directions_car),
            title: Text('Avtomobillar'),
          ),
          body: ListView.separated(
            itemCount: ruyxat.length,
            reverse: false,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                child: ListTile(
                  title: Text('${ruyxat[index]}',
                      style: TextStyle(fontSize: 20.0, color: Colors.black)),
                  onTap: () {
                    User car = new User(name: '${ruyxat[index]}');
                    User matn = new User(malumot: '${haqida[index]}');
                    Route route = MaterialPageRoute(
                        builder: (context) => About(car: car, matn: matn));
                    Navigator.push(context, route);
                  },
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '${qisqa[index]}',
                        style: TextStyle(fontSize: 10.0, color: Colors.black54),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10.0)),
                      Text(
                        '${sum[index]}',
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      ),
                    ],
                  ),
                  trailing: Container(
                    height: 50.0,
                    width: 50.0,
                    color: Colors.grey,
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                Divider(thickness: 2),
          )),
    );
  }
}

class About extends StatelessWidget {
  final User car;
  final User matn;
  About({this.car, this.matn});

  @override
  Widget build(BuildContext context) {
    Widget imageSliderCarucel = Container(
      height: 200,
      child: Carousel(
          boxFit: BoxFit.fill,
          autoplay: false,
          indicatorBgPadding: 2.0,
          images: [
            AssetImage('img/1.jpg'),
            AssetImage('img/2.jpg'),
            AssetImage('img/3.jpg'),
          ]),
    );
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: Text('${this.car.name}')),
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              imageSliderCarucel,
              Container(
                padding: EdgeInsets.all(15.0),
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Text('${this.car.name}',
                        style: TextStyle(fontSize: 30.0, color: Colors.black)),
                    Table(children: [
                      TableRow(children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Shahar',
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.black54)),
                              Text('Kuzov',
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.black54)),
                              Text('Uzatish qutisi',
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.black54)),
                              Text('Rangi',
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.black54)),
                              Text('Uzatma',
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.black54)),
                              Text('Dvigatel',
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.black54)),
                              Text('Yurgani',
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.black54)),
                            ]),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Shahar',
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.black54)),
                              Text('Kuzov',
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.black54)),
                              Text('Uzatish qutisi',
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.black54)),
                              Text('Rangi',
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.black54)),
                              Text('Uzatma',
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.black54)),
                              Text('Dvigatel',
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.black54)),
                              Text('Yurgani',
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.black54)),
                            ]),
                      ]),
                    ]),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey,
                thickness: 5.0,
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Text('${this.matn.malumot}',
                    style: TextStyle(
                      fontSize: 15.0,
                    )),
              ),
              Divider(
                color: Colors.grey,
                thickness: 5.0,
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.message,
                        color: Colors.blue,
                      ),
                      Text(
                        '...FIKR',
                        style: TextStyle(color: Colors.blue, fontSize: 20.0),
                      )
                    ]),
              ),
              Divider(
                color: Colors.grey,
                thickness: 5.0,
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Center(
                    child: Text('E\'lon ... marta ko\'rildi',
                        style: TextStyle(fontSize: 20.0, color: Colors.black))),
              ),
              Divider(
                color: Colors.grey,
                thickness: 5.0,
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Icon(Icons.content_copy, color: Colors.blue),
                          Icon(Icons.open_in_browser, color: Colors.blue),
                        ]),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          FlatButton(
                            child: Text('SAYTDA OCHISH',
                                style: TextStyle(
                                    fontSize: 15.0, color: Colors.blue)),
                            onPressed: (){},
                          ),
                          FlatButton(
                            child: Text('HAVOLANI KO\'CHIRIB \nOLISH',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15.0, color: Colors.blue)),
                            onPressed: (){},
                          ),
                        ]),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey,
                thickness: 1.0,
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text('Joylashtirildi: \n 21.04.2020',
                          style:
                              TextStyle(fontSize: 15.0, color: Colors.black)),
                      FlatButton(
                        child: Text('XATO TOPDINGIZMI?',
                            style: TextStyle(fontSize: 15.0, color: Colors.blue)),
                        onPressed: (){},
                      ),
                    ]),
              ),
              Container(
                  padding: EdgeInsets.only(left: 40.0, bottom: 30.0),
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Text('ID e\'lon: '))
            ]),
      ),
    );
  }
}

class User {
  final String name;
  final String malumot;
  User({
    this.name,
    this.malumot,
  });
}

final List<String> ruyxat = <String>[
  'Nexia',
  'Tiko',
  'Damas',
  'Matiz',
  'Lacetti',
  'Spark',
  'Gentra',
  'Captiva',
  'Malibu',
  'Tracker',
  'Cobalt',
  'Orlando',
  'Tahoe',
  'Labo',
  'Equinox',
];
final List<String> qisqa = <String>[
  'Quvvati 106 ot kuchiga teng, 1,5 litr hajmli dvigatel, maksimal tezligi 178 km/soat, o\'rindiqlar soni 5 ta',
  'Quvvati 41 ot kuchiga teng, 0,8 litr hajmli dvigatel, maksimal tezligi 145 km/soat, o\'rindiqlar soni 5 ta',
  'Quvvati 38 ot kuchiga teng, 0,8 litr hajmli dvigatel, maksimal tezligi 100 km/soat, o\'rindiqlar soni 8 ta',
  'Quvvati 63 ot kuchiga teng, 1,0 litr hajmli dvigatel, maksimal tezligi 152 km/soat, o\'rindiqlar soni 5 ta',
  'Quvvati 122 ot kuchiga teng, 1,8 litr hajmli dvigatel, maksimal tezligi 187 km/soat, o\'rindiqlar soni 5 ta',
  'Quvvati 81 ot kuchiga teng, 1,2 litr hajmli dvigatel, maksimal tezligi 164 km/soat, o\'rindiqlar soni 5 ta',
  'Quvvati 107 ot kuchiga teng, 1,5 litr hajmli dvigatel, maksimal tezligi 180 km/soat, o\'rindiqlar soni 5 ta',
  'Quvvati 167 ot kuchiga teng, 2,4 litr hajmli dvigatel, maksimal tezligi 186 km/soat, o\'rindiqlar soni 5 ta',
  'Quvvati 169 ot kuchiga teng, 2,4 litr hajmli dvigatel, maksimal tezligi 204 km/soat, o\'rindiqlar soni 5 ta',
  'Quvvati 140 ot kuchiga teng, 1,8 litr hajmli dvigatel, maksimal tezligi 180 km/soat, o\'rindiqlar soni 5 ta',
  'Quvvati 105 ot kuchiga teng, 1,5 litr hajmli dvigatel, maksimal tezligi 170 km/soat, o\'rindiqlar soni 5 ta',
  'Quvvati 141 ot kuchiga teng, 1,8 litr hajmli dvigatel, maksimal tezligi 185 km/soat, o\'rindiqlar soni 6 ta',
  'Quvvati 426 ot kuchiga teng, 6,2 litr hajmli dvigatel, maksimal tezligi 180 km/soat, o\'rindiqlar soni 5 ta',
  'Quvvati 38 ot kuchiga teng, 0,8 litr hajmli dvigatel, maksimal tezligi 114 km/soat, o\'rindiqlar soni 2 ta',
  'Quvvati 252 ot kuchiga teng, 2,0 litr hajmli dvigatel, maksimal tezligi 220 km/soat, o\'rindiqlar soni 5 ta',
];
final List<String> haqida = <String>[
  'Nexia - Oʻzbekistonda UzDaewoo korxonasida ishlab chiqarilgan yengil avtomobil.',
  'Tiko - uzunligi 3340mm oldi balonlar oraliq masofasi 1220mm orqa balonlar oraliq masofasi 1200mm benzobak sig\'imi 30litr o\'rindiqlar soni 4 ta',
  'Damas - quvvati 38 ot kuchiga teng 0,8 litr hajmli dvigatel bilan jihozlangan, besh eshikli tijoriy avtomobil.',
  'Matiz - avtomobil Asaka avtomobil zavodida ishlab chiqarilishi o‘zlashtirilgan to‘rtinchi model bo‘lib, 2001-yil avgust oyidan yig‘ila boshlangan.',
  'Lacetti - Kelishgan dizaynga ega 4 eshikli Lacetti avtomobili keng saloni bilan birga bu shunchaki oddiy oilaviy sedan emas.',
  'Spark - avtomobili turli davlatlardagi yetakchi dizaynerlarning ijodiy ishlanmalari hosilasidir.  Yangi Spark  ikki qavatli radiator panjarasi, ko‘zga yaqqol tashlanadigan tashqi ko‘rinishi bilan qayerda bo‘lmasin darhol kishi diqqatini o‘ziga tortadi.',
  'Gentra - Chevrolet Lacetti platformasi bazasida yaratilgan mashina shahar ichida har 100 kilometrga mexanik uzatma qutisi bilan 8,46 litr, avtomatik uzatma qutisi bilan 9,46 litr yoqilg‘i sarflaydi.',
  'Captiva - bu hammabop yo\'ltanlamas va oilaviy ixcham avtomobilning o\'zaro noyob uyg\'unlashuvi natijasidir.',
  'Malibu - U ilgari Chevrolet Chevelle- ning hashamatli versiyasi bo\'lgan, ammo 1978 yildan beri alohida modelga aylangan.',
  'Tracker - Ushbu model 2012-yilda Parij avtosalonida debyut qilgan. Tracker nomi faqat MDH va Rossiya hududida sotish uchun qo‘llanila boshladi, rasman esa mashina Chevrolet Trax deb nomlanadi.',
  'Cobalt - bu GM korporatsiyasining Braziliy filialidagi dizaynerlar tomonidan GM avtomobillarini loyihalashtirish jarayonida dunyo miqyosidagi standartlardan foydalangan holda yaratilgan oilaviy sedan.',
  'Orlando -  avtomobilning uzunligi 4652, kengligi 1836, bo‘yi esa 1633 santimetrga teng. O‘lchamlari bo‘yicha u Captiva\'dan kichikroq.',
  'Tahoe - ushbu yoʼltanlamasga oʼzining afsonaviy maqomini isbotlashning hojati yoʼq. U oʼzida V8 dvigatelining mislsiz kuchini va keng intererning birinchi darajali qulayligini ideal darajada mujassamlashtiradi.',
  'Labo - 550 kg gacha yuk ko‘tarish qobiliyati bo‘lgan kichik mini-yuk mashinasi. Labo rusumli avtomobil Damas modelining ochiq bortli kuzovi bo‘lgan modifikatsiyasi bo‘lib, shahar va qishloq joylarida va kichik masofalarga yuk tashish uchun mo‘lallangan.',
  'Equinox - 2018-yil ishlab chiqarishi to‘xtatilgan Captiva rusumidagi avtomobil o‘rnini egallay oladigan. o‘rtao‘lchamli krossover, garchi, ikkisi ham bir xil GM Theta platformasiga ega.',
];
final List<String> sum = <String>[
  '70 000 000 sum',
  '32 000 000 sum',
  '53 000 000 sum',
  '44 000 000 sum',
  '105 000 000 sum',
  '96 000 000 sum',
  '127 000 000 sum',
  '228 000 000 sum',
  '228 000 000 sum',
  '219 000 000 sum',
  '100 000 000 sum',
  '140 000 000 sum',
  '620 000 000 sum',
  '74 000 000 sum',
  '315 000 000 sum',
];
