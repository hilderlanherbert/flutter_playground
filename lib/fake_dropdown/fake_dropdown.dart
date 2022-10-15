import 'package:flutter/material.dart';

class FakeDropdown extends StatefulWidget {
  const FakeDropdown({super.key});

  @override
  State<FakeDropdown> createState() => _FakeDropdownState();
}

class _FakeDropdownState extends State<FakeDropdown> {
  final controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Fake Dropdown'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  enableDrag: true,
                  builder: (context) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () => scrollUp(),
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: height * 0.075,
                              child: Center(
                                  child: Icon(
                                Icons.keyboard_arrow_up,
                                size: 40,
                              )),
                            ),
                          ),
                        ),
                        Container(
                          height: height * 0.85,
                          child: ListView.separated(
                            controller: controller,
                            itemCount: store.length,
                            separatorBuilder: (context, index) =>
                                const Divider(thickness: 1),
                            itemBuilder: (context, index) {
                              return Center(
                                child: SizedBox(
                                    height: 40,
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: RichText(
                                          text: const TextSpan(
                                              text: '4x ',
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    255, 0, 255, 1),
                                                fontSize: 21,
                                                fontWeight: FontWeight.w900,
                                              ),
                                              children: <TextSpan>[
                                            TextSpan(
                                              text: ' de ',
                                              style: TextStyle(
                                                color: Colors.black26,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            TextSpan(text: ' R\$2.000,00 ')
                                          ])),
                                    )),
                              );
                            },
                          ),
                        ),
                        GestureDetector(
                          onTap: () => scrollDown(),
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: height * 0.075,
                              child: Center(
                                  child: Icon(
                                Icons.keyboard_arrow_down,
                                size: 40,
                              )),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              child: SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text('Quantidade de parcelas'),
                    Icon(Icons.keyboard_arrow_down)
                  ],
                ),
              ),
            ),
            const Divider(
              color: Color.fromRGBO(255, 0, 255, 1),
              thickness: 2.0,
            )
          ],
        ),
      ),
    );
  }

  void scrollUp() {
    double start = 0.0;
    controller.jumpTo(start);
  }

  void scrollDown() {
    double end = controller.position.maxScrollExtent;
    controller.jumpTo(end);
  }
}

List store = [
  'Hilderlan',
  'Adryelle',
  'Luciana',
  'Hilderlan',
  'Adryelle',
  'Luciana',
  'Hilderlan',
  'Adryelle',
  'Luciana',
  'Hilderlan',
  'Adryelle',
  'Luciana',
  'Adryelle',
  'Luciana'
];
