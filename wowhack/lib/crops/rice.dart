import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CropOutlinePage(crop: 'Rice');
  }
}

class CropOutlinePage extends StatelessWidget {
  final String crop;

  static const double imageHeight = 200.0;
  static const double imageWidth = double.infinity;

  CropOutlinePage({required this.crop});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue[50],
      child: Scaffold(
        appBar: AppBar(
          title: Text('Crop Info'),
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Center(
                child: Column(
                  children: [
                    Text(
                      '$crop',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    SizedBox(height: 16),
                    Container(
                      height: imageHeight,
                      width: imageWidth,
                      child: Image.asset(
                        'images/rice.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),
              SubheadingTile(title: 'Crop Information', content: [
                'Crop Name: Rice',
                'Crop Type: Kharif',
              ]),
              SubheadingTile(title: 'Planting and Harvesting', content: [
                'Planting Time: June-July',
                'Harvesting Time: November-December'
              ]),
              SubheadingTile(title: 'Seeds', content: [

                'Seed Quantity: 60-80 kg/ha',
                'Germination Rate: >=80%',
                'Purity: >=98%',
                'Moisture Content: <=13%',
                'Viability: High',
                'Brand: Rasi Seeds, Advanta Seeds'
              ]),
              SubheadingTile(title: 'Soil', content: [
                'Soil Type: Clay, Loam'
              ]),
              SubheadingTile(title: 'Fertilizers', content: [
                'Fertilizers: Urea(46-0-0), amonium sulphate(21-0-0), Diammonium phosphate(18-46-0), Sulphate Of Potash (SOP)'
              ]),
              SubheadingTile(title: 'Weed and Pest Management', content: [
                'Weed and Pest Management: Imidacloprid, Chlorantraniliprole, Tricyclazole, Mancozeb, Azoxystrobin'
              ]),
              SubheadingTile(title: 'Shelf Life', content: [
                'Shelf-life: 6 months'
              ]),
              SubheadingTile(title: 'Production', content: [
                '2022-2023: 1308.237 Lakh Tonnes',
                ])
            ],
          ),
        ),
      ),
    );
  }
}

class SubheadingTile extends StatefulWidget {
  final String title;
  final List<String> content;

  SubheadingTile({required this.title, required this.content});

  @override
  _SubheadingTileState createState() => _SubheadingTileState();
}

class _SubheadingTileState extends State<SubheadingTile> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        widget.title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Theme.of(context).primaryColorDark,
        ),
      ),
      onExpansionChanged: (expanded) {
        setState(() {
          _expanded = expanded;
        });
      },
      children: [
        if (_expanded)
          ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: widget.content.map(
                  (item) => Padding(
                padding: const EdgeInsets.only(left: 16.0, bottom: 4.0),
                child: Text(
                  item,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ).toList(),
          ),
      ],
    );
  }
}
