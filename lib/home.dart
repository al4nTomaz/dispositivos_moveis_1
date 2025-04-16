import 'package:flutter/material.dart';

var fontColor = Colors.amber;

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minha primeira página'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Container(
          height: 180,
          width: 330,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.black,
                  Colors.pink[300]!,
                  Colors.black,
                  Colors.pink[300]!,
                ]),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(
            children: <Widget>[
              Positioned(
                right: 5,
                top: 0,
                child: ClipOval(
                  child: SizedBox(
                    width: 90,
                    height: 130,
                    child: Image.asset(
                      '/home/aluno/dispositivos_moveis_1/assets/images/ peter.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Alan Tomaz',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: fontColor,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Capitão',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: fontColor,
                      ),
                    ),
                    Text(
                      'Ala direita',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: fontColor,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.phone_callback,
                          color: fontColor,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          '+55 41 99689-3678',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: fontColor),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.email,
                          color: fontColor,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'teste@email.com',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: fontColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
