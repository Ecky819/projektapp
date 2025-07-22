import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';
//import '../../theme/app_colors.dart';
import '../../theme/app_textstyles.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('News')),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              style: AppTextStyles
                  .body, // Verwende die Standard-Textstil-Definition aus app_textstyles
              children: <TextSpan>[
                // Titel
                TextSpan(
                  text:
                      '80 Jahre Befreiung Athens: Feierliches Gedenken auf dem Akropolis-Fels und in der Hauptstadt\n',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple[700],
                    height: 1.5,
                  ),
                ),
                TextSpan(
                  text: 'Athen, 12. Oktober 2024 – ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700],
                  ),
                ),
                TextSpan(
                  text:
                      'Zum 80. Jahrestag der Befreiung Athens von der nationalsozialistischen Besatzung versammelte sich die griechische Hauptstadt am Wochenende zu einer Reihe von Gedenkveranstaltungen. Traditionell gekleidete Frauen hoben auf dem Akropolis-Fels die „Freiheitsflagge“ empor, während politische und militärische Spitzenvertreter sowie Bürgerinnen und Bürger die Befreiung Athens im Jahr 1944 ehrten',
                ),
                // Quelle 1
                TextSpan(
                  text: ' eKathimerini.\n\n',
                  style: const TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      final url = Uri.parse(
                        'https://www.ekathimerini.com/',
                      ); // Beispiel-URL
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                      } else {
                        print('Could not launch $url');
                      }
                    },
                ),
                TextSpan(
                  text:
                      'Bereits am Morgen legten Mitglieder des Stadtrats und Vertreter der Regierung feierlich Kränze am Grab des unbekannten Soldaten am Syntagma-Platz nieder. „Heute gedenken wir all jener, die für Demokratie und Freiheit kämpften. Freiheit wird errungen durch stetigen Einsatz und bewahrt durch unsere Wachsamkeit“, erklärte Bürgermeister Haris Doukas in seiner Ansprache und mahnte, die Ideale der Demokratie gegen aufkeimende Intoleranz zu schützen',
                ),
                // Quelle 2
                TextSpan(
                  text: ' NEOS KOSMOS.\n\n',
                  style: const TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      final url = Uri.parse(
                        'https://neoskosmos.com/',
                      ); // Beispiel-URL
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                      } else {
                        print('Could not launch $url');
                      }
                    },
                ),
                TextSpan(
                  text:
                      'Die Stadt Athen lud zudem zu historischen Führungen ein: Ein Rundgang durch das Dritte Friedhofsgelände – Ruhestätte tausender Hungertoter von 1941/42 und Opfer nationalsozialistischer Hinrichtungen – sowie Erkundungen in den Quartieren Pangrati und ehemaliger Luftschutzbunker gaben Einblicke in das Leid und den Widerstand während der Besatzungsjahre',
                ),
                // Quelle 3
                TextSpan(
                  text: ' eKathimeriniFrance 24.\n\n',
                  style: const TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      final url = Uri.parse(
                        'https://www.france24.com/en/tag/greece/',
                      ); // Beispiel-URL
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                      } else {
                        print('Could not launch $url');
                      }
                    },
                ),
                TextSpan(
                  text:
                      'Historiker Menelaos Charalampidis wies darauf hin, dass trotz der immensen Opfer – allein in Athen und Piräus starben schätzungsweise 45.000 Menschen an Hunger und Repression – viele Erinnerungsorte bis heute kaum sichtbar sind. Mit seiner Initiative „Athens History Walks“ macht er bislang versteckte Orte der Erinnerung zugänglich und fordert eine stärkere museale Aufarbeitung der Besatzungszeit',
                ),
                // Quelle 4
                TextSpan(
                  text: ' France 24The Jakarta Post.\n\n',
                  style: const TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      final url = Uri.parse(
                        'https://www.thejakartapost.com/',
                      ); // Beispiel-URL
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                      } else {
                        print('Could not launch $url');
                      }
                    },
                ),
                // Hintergrund
                TextSpan(
                  text: 'Hintergrund:\n\n',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.blueGrey[800],
                  ),
                ),
                TextSpan(
                  text:
                      '– Am 12. Oktober 1944 ging die Wehrmacht kapituliert, und die deutsche Besatzung Griechenlands endete nach knapp dreieinhalb Jahren.\n\n',
                ),
                TextSpan(
                  text:
                      '– Während der Besatzungszeit starben in Griechenland insgesamt rund 250.000 Menschen an den Folgen der Hungerblockade; über 86 % der griechischen Juden wurden in Vernichtungslager deportiert.\n\n',
                ),
                TextSpan(
                  text:
                      '– Die offizielle Erinnerungskultur in Griechenland erlitt besonders durch den anschließenden Bürgerkrieg bis in die 1980er Jahre Tabuisierungen, die eine umfassende Aufarbeitung lange behinderten.\n\n',
                ),
                // Kontakt
                TextSpan(
                  text: 'Kontakt:\n\n',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.blueGrey[800],
                  ),
                ),
                TextSpan(text: 'Stadt Athen – Kulturamt\n'),
                TextSpan(
                  text: 'Tel.: +30 210 324 xxx\n',
                  style: const TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      final url = Uri.parse(
                        'tel:+30210324xxx',
                      ); // Telefonnummer
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                      } else {
                        print('Could not launch $url');
                      }
                    },
                ),
                TextSpan(
                  text: 'E-Mail: presse@athens.gov.gr',
                  style: const TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      final url = Uri.parse(
                        'mailto:presse@athens.gov.gr',
                      ); // E-Mail-Adresse
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                      } else {
                        print('Could not launch $url');
                      }
                    },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
