import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class ListviewKullanimi extends StatelessWidget {
  ListviewKullanimi({Key? key}) : super(key: key);

  List<Ogrenci> tumOgrenciler = List.generate(
      500,
      (index) =>
          Ogrenci(index + 1, "Ogrenci ${index + 1}", "Soyadı  ${index + 1}"));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      //body: KlasikListView(),
      //body: ListviewBuilderKullanimi(),
      body: ListviewSeperatedKullanimi(),
    );
  }

  ListView ListviewBuilderKullanimi() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        var oAnkiOgrenci = tumOgrenciler[index];
        return Card(
          color:
              index % 2 == 0 ? Colors.orange.shade200 : Colors.orange.shade100,
          child: ListTile(
            /*title: Text(tumOgrenciler[index].isim),
              subtitle: Text(tumOgrenciler[index].soyisim),
              leading: CircleAvatar(
                child: Text(tumOgrenciler[index].id.toString()),
              ),*/
            onTap: () {
              print("$index");
            },
            title: Text(oAnkiOgrenci.isim),
            subtitle: Text(oAnkiOgrenci.soyisim),
            leading: CircleAvatar(
              child: Text(oAnkiOgrenci.id.toString()),
            ),
          ),
        );
      },
      itemCount: tumOgrenciler.length,
    );
  }

  ListView ListviewSeperatedKullanimi() {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        var oAnkiOgrenci = tumOgrenciler[index];
        return Card(
          color:
              index % 2 == 0 ? Colors.orange.shade200 : Colors.orange.shade100,
          child: ListTile(
            /*title: Text(tumOgrenciler[index].isim),
              subtitle: Text(tumOgrenciler[index].soyisim),
              leading: CircleAvatar(
                child: Text(tumOgrenciler[index].id.toString()),
              ),*/
            onLongPress: () {
              _alertDialogIslemleri(context, oAnkiOgrenci);
            },
            onTap: () {
              if (index % 2 == 0) {
                EasyLoading.instance.backgroundColor = Colors.red;
              } else {
                EasyLoading.instance.backgroundColor = Colors.blue;
              }
              EasyLoading.showToast("Eleman Tıklandı",
                  duration: const Duration(
                    seconds: 3,
                  ),
                  toastPosition: EasyLoadingToastPosition.bottom);
            },
            title: Text(oAnkiOgrenci.isim),
            subtitle: Text(oAnkiOgrenci.soyisim),
            leading: CircleAvatar(
              child: Text(oAnkiOgrenci.id.toString()),
            ),
          ),
        );
      },
      itemCount: tumOgrenciler.length,
      separatorBuilder: (context, index) {
        var yeniIndex = index + 1;

        if (yeniIndex % 4 == 0) {
          return const Divider(
            thickness: 2,
            color: Colors.teal,
          );
        } else {
          return SizedBox();
        }
      },
    );
  }

  ListView KlasikListView() {
    return ListView(
      children: tumOgrenciler
          .map((Ogrenci ogrenci) => ListTile(
                title: Text(ogrenci.isim),
                subtitle: Text(ogrenci.soyisim),
                leading: CircleAvatar(
                  child: Text(ogrenci.id.toString()),
                ),
              ))
          .toList(),
    );
  }

  void _alertDialogIslemleri(BuildContext context, Ogrenci secilen) {
    //showCupertinoDialog(context: context, builder: builder) // Ios için
    showDialog(
        barrierDismissible:
            false, // boşluğa basıldığında kapatılmayı engelliyor
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Dialog Başlık : ${secilen.toString()}"),
            content: SingleChildScrollView(
                child: ListBody(
              children: [
                Text("Serdar" * 100),
                Text("Altınkaya" * 100),
                Text("Serdar" * 100),
              ],
            )),
            actions: [
              ButtonBar(
                alignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text("Kapat"),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Tamam"),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Kapat"),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Tamam"),
                  ),
                ],
              ),
            ],
          );
        });
  }
}

class Ogrenci {
  final int id;
  final String isim;
  final String soyisim;

  Ogrenci(this.id, this.isim, this.soyisim);
  @override
  String toString() {
    return "Isım : $isim Soyisim:$soyisim id: $id";
  }
}
