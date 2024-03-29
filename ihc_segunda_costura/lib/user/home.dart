import 'package:flutter/material.dart';
import 'package:ihc_segunda_costura/admin/minhas_pecas.dart';
import 'package:ihc_segunda_costura/admin/minhas_vendas.dart';
import 'package:ihc_segunda_costura/admin/novo_drop.dart';
import 'package:ihc_segunda_costura/user/brechos_perto_de_mim.dart';
import 'package:ihc_segunda_costura/user/pesquisa_por_imagem.dart';

class HomeUser extends StatefulWidget {
  const HomeUser({super.key});

  @override
  _HomeUserState createState() => _HomeUserState();
}

class _HomeUserState extends State<HomeUser> {
  @override
  Widget build(BuildContext context) {
    return Material(
        type: MaterialType.transparency,
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
                  Positioned(
                    left: 15,
                    top: 81,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Home',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        const SizedBox(height: 23),
                        Opacity(
                          opacity: 0.40,
                          child: Container(
                            width: 330,
                            padding: const EdgeInsets.only(
                              top: 20,
                              left: 12,
                              right: 10,
                              bottom: 20,
                            ),
                            decoration: ShapeDecoration(
                              color: const Color(0xFFB618EE),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    print("Adicionar drop");
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              PesquisaPorImagem()),
                                    );
                                  },
                                  child: const Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Pesquisar Por Imagem',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontFamily: 'Open Sans',
                                          fontWeight: FontWeight.w300,
                                          height: 0,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 23),
                        Opacity(
                          opacity: 0.40,
                          child: Container(
                            width: 330,
                            padding: const EdgeInsets.only(
                              top: 20,
                              left: 12,
                              right: 10,
                              bottom: 20,
                            ),
                            decoration: ShapeDecoration(
                              color: const Color(0xFFB618EE),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () => {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              BrechosPertoDeMim()),
                                    )
                                  },
                                  child: const Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Brechos Perto de Mim',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontFamily: 'Open Sans',
                                          fontWeight: FontWeight.w300,
                                          height: 0,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 286,
                    top: 25,
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: const ShapeDecoration(
                        color: Color(0xFFE2A3F8),
                        shape: OvalBorder(),
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 299,
                    top: 38,
                    child: Container(
                      width: 24,
                      height: 24,
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 16,
                            height: 24,
                            child: Stack(children: []),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
