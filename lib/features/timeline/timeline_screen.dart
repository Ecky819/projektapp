import 'package:flutter/material.dart';
import '/theme/app_textstyles.dart'; // Import der Textstile
import '/theme/app_colors.dart'; // Import der Farben

// Haupt-Widget für den Zeitstrahl-Bildschirm
class TimelineScreen extends StatelessWidget {
  const TimelineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: const Text('Timeline'),
        backgroundColor: AppColors.primary, // Hintergrundfarbe aus AppColors
      ),*/
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
        children: [
          // Jeder Eintrag in der Zeitleiste wird mit einer Hilfsfunktion erstellt.
          // Der Parameter 'isFirst' kennzeichnet den ersten Eintrag, um die Linie oben anzupassen.
          _buildTimelineEntry(
            date: '28.Oktober 1940',
            title: 'Der italienische Einmarsch in Griechenland',
            description:
                'Der italienische Einmarsch in Griechenland am 28. Oktober 1940 markierte den Beginn des Balkanfeldzugs im Zweiten Weltkrieg. Benito Mussolini, bestrebt, das italienisch...',
            isFirst: true,
          ),
          _buildTimelineEntry(
            date: 'April 1941',
            title: 'Deutsche Wehrmacht startet den Balkanfeldzug',
            description:
                'Deutsche Wehrmacht startet den Balkanfeldzug: Kapitulation und Besetzung Griechenlands bis Anfang Juni.',
          ),
          _buildTimelineEntry(
            date: 'Sommer 1941',
            title: 'Beginn der Großen Hungersnot',
            description:
                'Beginn der Großen Hungersnot: Die Blockade und Ernteausfälle führen zu Zehntausenden Zivilopfern in Städten wie Athen und Thessaloniki.',
          ),
          _buildTimelineEntry(
            date: 'September 1941',
            title: 'Gründung der ersten organisierten Widerstandsgruppen',
            description:
                'Gründung der ersten organisierten Widerstandsgruppen (EDES, EAM/ELAS) – Sabotageaktionen beginnen, deutsche Repressalien gegen Zivilbevölkerung folg...',
          ),
          _buildTimelineEntry(
            date: 'September 1941',
            title: 'Operation Harling: Sprengung der Gorgopotamos-Brücke',
            description:
                'Operation Harling: Sprengung der Gorgopotamos-Brücke durch britisch-griechische Partisanen – deutsche Vergeltungsaktionen in umliegenden Dörf...',
          ),
          _buildTimelineEntry(
            date: '24. März 1943',
            title: 'Massaker von Domeniko (Thessalien)',
            description:
                'SS-Einsatzgruppe exekutiert über 150 Männer als Vergeltung für Partisanenangriffe.',
          ),
          _buildTimelineEntry(
            date: '17. August 1943',
            title: 'Vernichtung der jüdischen Gemeinde Thessaloniki',
            description:
                'Deportationsbeginn in Thessaloniki: Die umfassende Vernichtung der jüdischen Bevölkerung.',
          ),
          _buildTimelineEntry(
            date: '14. September 1943',
            title: 'Italienische Kapitulation',
            description:
                'Viele italienische Besatzungssoldaten wechseln die Seiten und nehmen am griechischen Partisanenkampf gegen deutsche Truppen teil.',
          ),
          _buildTimelineEntry(
            date: '17. Oktober 1943',
            title: 'Viannos-Massaker (Kreta)',
            description:
                'Deutsche SS-Einheit tötet über 400 Zivilisten in Viannos, Kreta, als Vergeltung für Partisanenaktivitäten.',
          ),
          _buildTimelineEntry(
            date: '29. Juni 1944',
            title: 'Distomo-Massaker',
            description:
                'SS-Einheit tötet über 200 Zivilisten in Distomo, einem der brutalsten Einzelmassaker der Besatzungszeit.',
          ),
          _buildTimelineEntry(
            date: '12. Oktober 1944',
            title: 'Befreiung Athens',
            description:
                'Truppen und das Ankunft britischer Truppen in der Hauptstadt und der deutschen Besatzung in der Hauptstadt.',
          ),
          _buildTimelineEntry(
            date: '28. Dezember 1944',
            title: 'Dekemvriana: Straßenschlachten in Athen',
            description:
                'Konflikt zwischen der griechischen Volksbefreiungsarmee (ELAS) und britisch-griechischen Regierungstruppen.',
          ),
          _buildTimelineEntry(
            date: '12. Februar 1945',
            title: 'Varkiza-Abkommen',
            description:
                'Formeller Waffenstillstand zwischen ELAS und der offiziellen griechischen Regierung; jedoch Beginn politis...',
            isLast: true, // Dies ist jetzt der letzte Eintrag
          ),
        ],
      ),
    );
  }

  // Hilfsfunktion zum Erstellen eines einzelnen Zeitleisten-Eintrags.
  Widget _buildTimelineEntry({
    required String date,
    required String title,
    required String description,
    bool isFirst = false,
    bool isLast = false,
  }) {
    final double dotSize = 18.0; // Größe des Punktes auf der Zeitleiste
    final double lineThickness = 3.0; // Dicke der vertikalen Linie
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
              color: const Color.fromRGBO(
                243,
                239,
                231,
                1.0,
              ), // Kartenhintergrund
              elevation: 5, // Schatten der Karte
              margin: const EdgeInsets.only(
                bottom: 20.0,
              ), // Abstand zur nächsten Karte
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Text linksbündig
                  children: [
                    Text(
                      date,
                      style: AppTextStyles.heading.copyWith(
                        color: AppColors.accent,
                      ), // Stil aus AppTextStyles
                    ),

                    const SizedBox(
                      height: 4.0,
                    ), // Abstand zwischen Titel und Beschreibung
                    Row(
                      crossAxisAlignment: CrossAxisAlignment
                          .end, // Align children to the bottom
                      children: [
                        Expanded(
                          child: Text(
                            description,
                            style: AppTextStyles.card.copyWith(
                              height: 1.3,
                            ), // Stil aus AppTextStyles
                          ),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                            color: AppColors.timeline,
                          ), // Icon-Farbe aus AppColors
                          onPressed: () {
                            print('Pfeil getippt für: $title');
                            // Hier können Sie Navigationslogik oder andere Aktionen für diesen Eintrag hinzufügen
                            // Zum Beispiel: Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(title: title)));
                          },
                        ),
                      ],
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
