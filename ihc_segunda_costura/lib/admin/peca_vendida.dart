import 'package:flutter/material.dart';

class PecaVendida extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: [
        Container(
          width: 360,
          height: 800,
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
                child: Container(
                  child: const Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Venda #1',
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
              ),
              Positioned(
                left: 47,
                top: 131,
                child: Container(
                  width: 266,
                  height: 208,
                  decoration: const ShapeDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://imgs.search.brave.com/1WJ4SrN0fF6zWGPTa-9EOnOBtqZlRi4N_d1jjxvVFNw/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvNjQx/MDYyNTM4L3Bob3Rv/L2xlYXRoZXItamFj/a2V0LmpwZz9zPTYx/Mng2MTImdz0wJms9/MjAmYz14Vi1XMUw4/Snp6WURRWWJ5SXdw/WVN3b2Z2N2w3cUVY/UXduejJuYWdCem1z/PQ"),
                      fit: BoxFit.contain,
                    ),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignOutside,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 15,
                top: 369,
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Nome',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w300,
                                height: 0,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Opacity(
                              opacity: 0.40,
                              child: Container(
                                width: 330,
                                padding: const EdgeInsets.only(
                                  top: 10,
                                  left: 12,
                                  right: 10,
                                  bottom: 10,
                                ),
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Jaqueta ',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Vendido Em',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w300,
                                height: 0,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Opacity(
                              opacity: 0.40,
                              child: Container(
                                width: 330,
                                padding: const EdgeInsets.only(
                                  top: 10,
                                  left: 12,
                                  right: 10,
                                  bottom: 10,
                                ),
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '20 Dez., 2023',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Consumidor',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w300,
                                height: 0,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Opacity(
                              opacity: 0.40,
                              child: Container(
                                width: 330,
                                padding: const EdgeInsets.only(
                                  top: 10,
                                  left: 12,
                                  right: 10,
                                  bottom: 10,
                                ),
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'João da Silva',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                      ),
                                    ),
                                    const SizedBox(width: 108),
                                    Container(
                                      width: 24,
                                      height: 24,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: const BoxDecoration(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Preço',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w300,
                                height: 0,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Opacity(
                              opacity: 0.40,
                              child: Container(
                                width: 330,
                                padding: const EdgeInsets.only(
                                  top: 10,
                                  left: 12,
                                  right: 10,
                                  bottom: 10,
                                ),
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'R\$ 50,00',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                      ),
                                    ),
                                    const SizedBox(width: 108),
                                    Container(
                                      width: 24,
                                      height: 24,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: const BoxDecoration(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Status',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w300,
                              height: 0,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Opacity(
                            opacity: 0.40,
                            child: Container(
                              width: 330,
                              padding: const EdgeInsets.only(
                                top: 10,
                                left: 12,
                                right: 10,
                                bottom: 10,
                              ),
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    'FINALIZADA',
                                    style: TextStyle(
                                      color: Color(0xFF137211),
                                      fontSize: 16,
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                  const SizedBox(width: 108),
                                  Container(
                                    width: 24,
                                    height: 24,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: const BoxDecoration(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
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
