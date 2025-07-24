import 'package:flutter/material.dart';
import '/theme/app_textstyles.dart';
import '/theme/app_colors.dart';
import 'details/detail_28oktober1940.dart';
import 'details/detail_april1941.dart';
import 'details/detail_sommer1941.dart';
import 'details/detail_14september1943.dart';
import 'details/detail_12oktober1944.dart';
import 'details/detail_17august1943.dart';
import 'details/detail_24maerz1943.dart';
import 'details/detail_12februar1945.dart';
import 'details/detail_28dezember1944.dart';
import 'details/detail_29juni1944.dart';
import 'details/detail_september1941a.dart';
import 'details/detail_september1941b.dart';
import 'details/detail_17oktober1943.dart'; // Import der Farben

// Haupt-Widget für den Zeitstrahl-Bildschirm
class TimelineScreen extends StatelessWidget {
  const TimelineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
        children: [
          // Jeder Eintrag in der Zeitleiste wird mit einer Hilfsfunktion erstellt.
          // Der Parameter 'isFirst' kennzeichnet den ersten Eintrag, um die Linie oben anzupassen.
          _buildTimelineEntry(
            context: context,
            date: '28.Oktober 1940',
            title: 'Der italienische Einmarsch in Griechenland',
            description:
                'Der italienische Einmarsch in Griechenland am 28. Oktober 1940 markierte den Beginn des Balkanfeldzugs im Zweiten Weltkrieg...',
            isFirst: true,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Detail28Oktober1940(),
                ),
              );
            },
          ),
          _buildTimelineEntry(
            context: context,
            date: 'April 1941',
            title: 'Deutsche Wehrmacht startet den Balkanfeldzug',
            description:
                'Deutsche Wehrmacht startet den Balkanfeldzug: Kapitulation und Besetzung Griechenlands bis Anfang Juni.',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailApril1941(),
                ),
              );
            },
          ),
          _buildTimelineEntry(
            context: context,
            date: 'Sommer 1941',
            title: 'Beginn der Großen Hungersnot',
            description:
                'Beginn der Großen Hungersnot: Die Blockade und Ernteausfälle führen zu Zehntausenden Zivilopfern in Städten wie Athen und Thessaloniki.',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailSommer1941(),
                ),
              );
            },
          ),
          _buildTimelineEntry(
            context: context,
            date: 'September 1941',
            title: 'Gründung der ersten organisierten Widerstandsgruppen',
            description:
                'Gründung der ersten organisierten Widerstandsgruppen (EDES, EAM/ELAS) – Sabotageaktionen beginnen, deutsche Repressalien gegen Zivilbevölkerung folg...',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailSeptember1941a(),
                ),
              );
            },
          ),
          _buildTimelineEntry(
            context: context,
            date: 'September 1941',
            title: 'Operation Harling: Sprengung der Gorgopotamos-Brücke',
            description:
                'Operation Harling: Sprengung der Gorgopotamos-Brücke durch britisch-griechische Partisanen – deutsche Vergeltungsaktionen in umliegenden Dörf...',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailSeptember1941b(),
                ),
              );
            },
          ),
          _buildTimelineEntry(
            context: context,
            date: '24. März 1943',
            title: 'Massaker von Domeniko (Thessalien)',
            description:
                'SS-Einsatzgruppe exekutiert über 150 Männer als Vergeltung für Partisanenangriffe.',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Detail24Maerz1943(),
                ),
              );
            },
          ),
          _buildTimelineEntry(
            context: context,
            date: '17. August 1943',
            title: 'Vernichtung der jüdischen Gemeinde Thessaloniki',
            description:
                'Deportationsbeginn in Thessaloniki: Die umfassende Vernichtung der jüdischen Bevölkerung.',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Detail17August1943(),
                ),
              );
            },
          ),
          _buildTimelineEntry(
            context: context,
            date: '14. September 1943',
            title: 'Italienische Kapitulation',
            description:
                'Viele italienische Besatzungssoldaten wechseln die Seiten und nehmen am griechischen Partisanenkampf gegen deutsche Truppen teil.',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Detail14September1943(),
                ),
              );
            },
          ),
          _buildTimelineEntry(
            context: context,
            date: '17. Oktober 1943',
            title: 'Viannos-Massaker (Kreta)',
            description:
                'Deutsche SS-Einheit tötet über 400 Zivilisten in Viannos, Kreta, als Vergeltung für Partisanenaktivitäten.',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Detail17Oktober1943(),
                ),
              );
            },
          ),
          _buildTimelineEntry(
            context: context,
            date: '29. Juni 1944',
            title: 'Distomo-Massaker',
            description:
                'SS-Einheit tötet über 200 Zivilisten in Distomo, einem der brutalsten Einzelmassaker der Besatzungszeit.',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Detail29Juni1944(),
                ),
              );
            },
          ),
          _buildTimelineEntry(
            context: context,
            date: '12. Oktober 1944',
            title: 'Befreiung Athens',
            description:
                'Truppen und das Ankunft britischer Truppen in der Hauptstadt und der deutschen Besatzung in der Hauptstadt.',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Detail12Oktober1944(),
                ),
              );
            },
          ),
          _buildTimelineEntry(
            context: context,
            date: '28. Dezember 1944',
            title: 'Dekemvriana: Straßenschlachten in Athen',
            description:
                'Konflikt zwischen der griechischen Volksbefreiungsarmee (ELAS) und britisch-griechischen Regierungstruppen.',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Detail28Dezember1944(),
                ),
              );
            },
          ),
          _buildTimelineEntry(
            context: context,
            date: '12. Februar 1945',
            title: 'Varkiza-Abkommen',
            description:
                'Formeller Waffenstillstand zwischen ELAS und der offiziellen griechischen Regierung; jedoch Beginn politis...',
            isLast: true, // Dies ist jetzt der letzte Eintrag
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Detail12Februar1945(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  // Hilfsfunktion zum Erstellen eines einzelnen Zeitleisten-Eintrags.
  Widget _buildTimelineEntry({
    required BuildContext context,
    required String date,
    required String title,
    required String description,
    required VoidCallback onPressed,
    bool isFirst = false,
    bool isLast = false,
  }) {
    final double dotSize = 18.0;
    final double lineThickness = 3.0;
    final double indicatorColumnWidth =
        40.0; // Breite der Spalte für Linie und Punkt

    return IntrinsicHeight(
      // Stellt sicher, dass die Höhe der Zeile durch den Inhalt bestimmt wird.
      child: Row(
        crossAxisAlignment: CrossAxisAlignment
            .stretch, // Streckt Kinder vertikal, damit die Linie die Kartenhöhe einnimmt.
        children: [
          // Zeitleisten-Indikator (Linie und Punkt)
          SizedBox(
            width: indicatorColumnWidth,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    width: lineThickness,
                    color: AppColors.timeline, // Farbe aus AppColors
                  ),
                ),
                // Der Punkt selbst
                Container(
                  width: dotSize,
                  height: dotSize,
                  decoration: BoxDecoration(
                    color: AppColors.timeline, // Farbe aus AppColors
                    shape: BoxShape.circle,
                  ),
                ),
                // Unterer Teil der Linie:
                Expanded(
                  child: Container(
                    width: lineThickness,
                    color: AppColors.timeline, // Farbe aus AppColors
                  ),
                ),
                // Pfeilspitze am Ende der letzten Linie
                if (isLast)
                  Icon(
                    Icons.arrow_drop_down,
                    color: AppColors.timeline,
                    size: 36.0,
                  ),
              ],
            ),
          ),
          // Abstand zwischen Zeitleisten-Indikator und der Karte
          const SizedBox(width: 10.0),

          // Karteninhalt
          Expanded(
            child: Card(
              color: const Color.fromRGBO(243, 239, 231, 1.0),
              elevation: 5,
              margin: const EdgeInsets.only(bottom: 20.0),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            date,
                            style: AppTextStyles.heading.copyWith(
                              color: AppColors.accent,
                            ),
                          ),
                          const SizedBox(height: 4.0),
                          Text(
                            description,
                            style: AppTextStyles.card.copyWith(height: 1.3),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: IconButton(
                        icon: Image.asset(
                          'assets/icons/more_info_right.png',
                          width: 36,
                          height: 55,
                        ),
                        onPressed: onPressed,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
