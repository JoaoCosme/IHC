import 'package:flutter/material.dart';
import 'package:ihc_segunda_costura/admin/editar_pe%C3%A7a.dart';
import 'package:ihc_segunda_costura/user/home.dart';

class PecaEncontrada extends StatelessWidget {
  final VoidCallback? onDelete;
  final Widget navigateWidget;

  const PecaEncontrada({
    Key? key,
    required this.navigateWidget,
    this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => navigateWidget),
        );
      },
      child: Column(
        children: [
          Container(
            height: 10,
            decoration: const BoxDecoration(color: Colors.white),
          ),
          Stack(
            children: [
              Positioned(
                left: 198,
                top: 650,
                child: Container(
                  width: 147,
                  height: 40,
                  padding: const EdgeInsets.all(10),
                  decoration: ShapeDecoration(
                    color: const Color(0xFFE2A3F8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      // Return to the previous screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeUser()),
                      );
                      final snackBar = SnackBar(
                        content: const Text('Compra Ralizada!'),
                        action: SnackBarAction(
                          label: 'Ok',
                          onPressed: () {
                            // Some code to undo the change.
                          },
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Comprar!',
                          style: TextStyle(
                            color: Colors.white,
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
              ),
              Container(
                width: 335,
                height: 125,
                decoration: ShapeDecoration(
                  color: const Color(0xFFE2A3F8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 71,
                      height: 95,
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
                    const SizedBox(width: 21),
                    const SizedBox(
                      width: 200,
                      height: 70,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Jaqueta',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                              Text(
                                'Brechó da Ana',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.w300,
                                  height: 0,
                                ),
                              ),
                              Text(
                                'R\$ 50,00',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.w300,
                                  height: 0,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
