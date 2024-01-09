import 'package:flutter/material.dart';
import 'package:ihc_segunda_costura/admin/editar_pe%C3%A7a.dart';
import 'package:ihc_segunda_costura/admin/minha_loja.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ihc_segunda_costura/admin/peca_editavel.dart';

class MinhasPecas extends StatefulWidget {
  const MinhasPecas({Key? key}) : super(key: key);

  @override
  _NovoDropState createState() => _NovoDropState();
}

class _NovoDropState extends State<MinhasPecas> {
  List<Widget> pecasList = [
    const PecaEditavel(
      navigateWidget: EditarPeca(),
    ),
    const PecaEditavel(
      navigateWidget: EditarPeca(),
    ),
    const PecaEditavel(
      navigateWidget: EditarPeca(),
    ),
  ];
  bool showWarning = true;

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
                Positioned(
                  left: 15,
                  top: 26,
                  child: Container(
                    width: 24,
                    height: 24,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(),
                    child: const Stack(children: []),
                  ),
                ),
                const Positioned(
                  left: 15,
                  top: 81,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Novo Drop',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),

                Positioned(
                  left: 107,
                  top: 261,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: showWarning
                        ? const Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Sem peças ainda!',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.w300,
                                  height: 0,
                                ),
                              ),
                            ],
                          )
                        : Container(), // Hide the warning if showWarning is false
                  ),
                ),
                Positioned(
                  left: 10,
                  top: 615,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: showWarning
                        ? Container()
                        : GestureDetector(
                            onTap: () {
                              // Navigate to MinhaLoja screen when clicked
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MinhaLoja()),
                              );
                            },
                            child: Container(
                              width: 160,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xFFE2A3F8), // Rose color
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Center(
                                child: Text(
                                  'Confirmar',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ),
                  ),
                ),
                // ListView.builder for dynamic list of PecaEditavel widgets
                Positioned(
                  left: 12.5,
                  top: 120,
                  child: Container(
                    height: 480,
                    width: 335,
                    child: ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: pecasList.length,
                      itemBuilder: (context, index) {
                        return pecasList[index];
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
