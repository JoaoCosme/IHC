import 'package:flutter/material.dart';
import 'package:ihc_segunda_costura/admin/peca_editavel.dart';
import 'package:ihc_segunda_costura/user/peca_disponivel.dart';
import 'package:ihc_segunda_costura/user/peca_encontrada.dart';

class PecasBrecho extends StatefulWidget {
  @override
  _PecasBrechoState createState() => _PecasBrechoState();
}

class _PecasBrechoState extends State<PecasBrecho> {
  List<Widget> vendasList = [
    PecaEncontrada(
      navigateWidget: PecaDisponivel(),
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
                    'Brecho da Ana',
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
                  child: Container(
                    height: 480,
                    width: 335,
                    child: ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: vendasList.length,
                      itemBuilder: (context, index) {
                        return vendasList[index];
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
