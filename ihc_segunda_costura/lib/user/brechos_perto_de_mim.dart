import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ihc_segunda_costura/admin/minhas_vendas.dart';
import 'package:ihc_segunda_costura/admin/peca_vendida.dart';
import 'package:ihc_segunda_costura/admin/peca_editavel.dart';
import 'package:ihc_segunda_costura/user/pecas_brecho.dart';

const List<String> categoriaList = <String>['Couro', 'Vintage'];
const List<String> distanciaList = <String>['1km', '5km', '10km'];
List<File> fileList = <File>[
  File("assets/1km-dist.png"),
  File("assets/5km-dist.png"),
  File("assets/10km-dist.png"),
  File("assets/1km-dist-vintage.png"),
  File("assets/5km-dist-vintage.png"),
  File("assets/10km-dist-vintage.png"),
];

String categoriaValue = categoriaList.first;
String distanciaValue = distanciaList.first;
int imageIndex = 0;

class BrechosPertoDeMim extends StatefulWidget {
  @override
  _BrechosPertoDeMimState createState() => _BrechosPertoDeMimState();
}

class _BrechosPertoDeMimState extends State<BrechosPertoDeMim> {
  List<Widget> vendasList = [
    PecaEditavel(
      navigateWidget: PecaVendida(),
    ),
  ];

  bool showNoSalesWarning = true;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Container(
            width: 360,
            height: 700,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Stack(
              children: [
                // Header section
                const Positioned(
                  left: 15,
                  top: 81,
                  child: Text(
                    'Pertos de Mim!',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),

                Positioned(
                    left: 12.5,
                    top: 120,
                    child: DropdownButton<String>(
                      value: categoriaValue,
                      icon: const Icon(
                        Icons.arrow_downward,
                        color: Color(0xFFE2A3F8),
                      ),
                      elevation: 16,
                      style: const TextStyle(color: Color(0xFFE2A3F8)),
                      underline: Container(
                        height: 2,
                        color: const Color(0xFFE2A3F8),
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          categoriaValue = value!;
                          updateImage();
                        });
                      },
                      items: categoriaList
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    )),

                Positioned(
                    left: 120.5,
                    top: 120,
                    child: DropdownButton<String>(
                      value: distanciaValue,
                      icon: const Icon(
                        Icons.arrow_downward,
                        color: Color(0xFFE2A3F8),
                      ),
                      elevation: 16,
                      style: const TextStyle(color: Color(0xFFE2A3F8)),
                      underline: Container(
                        height: 2,
                        color: const Color(0xFFE2A3F8),
                      ),
                      onChanged: (String? value) {
                        print(value);
                        // This is called when the user selects an item.
                        setState(() {
                          distanciaValue = value!;
                          print(distanciaList.indexOf(distanciaValue));
                          print(distanciaList);
                          updateImage();
                        });
                      },
                      items: distanciaList
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    )),
                Positioned(
                    top: 200,
                    left: 0,
                    child: InkWell(
                      onTap: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PecasBrecho()),
                        )
                      },
                      child: Container(
                        width: 360,
                        height: 500,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: FileImage(fileList[imageIndex]),
                            fit: BoxFit.fitHeight,
                          ),
                          shape: const RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              strokeAlign: BorderSide.strokeAlignOutside,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }

  void updateImage() {
    int modifier = categoriaList.indexOf(categoriaValue) * 3;
    imageIndex = distanciaList.indexOf(distanciaValue) + modifier;
  }
}
