import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Lugares Turisticos';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              TitleSection(
                  name: 'Laguna de Quilotoa', location: 'Quito, Ecuador'),
              ButtonSection(),
              TextSection(
                  description:
                      "El Quilotoa es una de las 15 lagunas de origen volcánico más hermosas del mundo, debido a su color verde esmeralda, de tonos variables por sus minerales disueltos en sus aguas. Su temperatura bordea los 12 grados centígrados, de enero a mayo las lluvias son frecuentes."),
              ImageSection(image: 'images/laguna.jpg'),
              TitleSection(name: 'La Carolina', location: 'Quito, Ecuador'),
              ButtonSection(),
              TextSection(
                  description:
                      "El parque La Carolina es un espacio verde de carácter público en la ciudad de Quito, capital de la República del Ecuador. Está ubicado en la zona de Iñaquito, en el corazón financiero y empresarial de la urbe y es, a su vez, una de las áreas recreacionales más importantes del área metropolitana."),
              ImageSection(image: 'images/carolina.jpg'),
              TitleSection(name: 'Mitad del Mundo', location: 'Quito, Ecuador'),
              ButtonSection(),
              TextSection(
                  description:
                      "La Ciudad Mitad del Mundo es un complejo turístico y cultural propiedad de la prefectura de la provincia de Pichincha. Está situado en la parroquia de San Antonio del Distrito Metropolitano de Quito, al norte de la ciudad de Quito."),
              ImageSection(image: 'images/mundo.jpg'),
              TitleSection(
                  name: 'Volcan Chimborazo', location: 'Chimborazo, Ecuador'),
              ButtonSection(),
              TextSection(
                  description:
                      "El Chimborazo es un estratovolcán potencialmente activo, situado en el centro de Ecuador, en la Provincia de Chimborazo. Perteneciente a la cordillera de los Andes, específicamente a los Andes septentrionales, cuenta con una altitud de 6263,47 m s. n. m, por lo que es la montaña más alta del Ecuador y de los Andes septentrionales."),
              ImageSection(image: 'images/volcan.jpg'),
              TitleSection(name: 'Islas Galapagos', location: 'Galapagos, Ecuador'),
              ButtonSection(),
              TextSection(description: "Las islas Galápagos son la segunda reserva marina más grande del planeta​ fueron declaradas Patrimonio de la Humanidad en 1978 por la Unesco. El archipiélago tiene como mayor fuente de ingresos el turismo y recibe 200 000 turistas al año."),
              ImageSection(image: 'images/galapagos.jpg'),
            ],
          ),
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.access_alarm,
            color: Colors.red[500],
          ),
          const Text('8'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColorDark;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: color,
            icon: Icons.call,
            label: 'CALL',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.near_me,
            label: 'ROUTE',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.share,
            label: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 600,
      height: 200,
      fit: BoxFit.cover,
    );
  }
}
