import 'package:flutter/material.dart';
import 'package:ihc_segunda_costura/admin/editar_pe%C3%A7a.dart';
import 'package:ihc_segunda_costura/admin/minha_loja.dart';
import 'package:ihc_segunda_costura/user/pe%C3%A7as_semelhates.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ihc_segunda_costura/admin/peca_editavel.dart';

class PesquisaPorImagem extends StatefulWidget {
  const PesquisaPorImagem({Key? key}) : super(key: key);

  @override
  _PesquisaPorImagemState createState() => _PesquisaPorImagemState();
}

class _PesquisaPorImagemState extends State<PesquisaPorImagem> {
  List<Widget> pecasList = [];
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
                        'Pesquisa por Imagem',
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
                  left: 270,
                  top: 610,
                  child: Container(
                    child: InkWell(
                      onTap: () async {
                        await _pickImage();
                        setState(() {
                          pecasList.add(const PecaEditavel(
                            navigateWidget: PecasSemelhantes(),
                          ));
                          showWarning = false;
                        });
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: const ShapeDecoration(
                              color: Color(0xFFE2A3F8),
                              shape: OvalBorder(),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.add,
                                size: 50,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
                                'Selecione uma imagem!',
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

Future<void> _pickImage() async {
  final picker = ImagePicker();
  final pickedFile = await picker.getImage(source: ImageSource.gallery);

  if (pickedFile != null) {
    // Handle the selected image
    print('Image picked: ${pickedFile.path}');
  } else {
    // User canceled the image selection
    print('Image selection canceled');
  }
}
