import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WatermelonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CropOutlinePage(crop: 'Watermelon');
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
                        'images/watermelon.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),
              SubheadingTile(title: 'Crop Information', content: [
                'Crop Name: Watermelon',
                'Crop Type: Zaid',
              ]),
              SubheadingTile(title: 'Planting and Harvesting', content: [
                'Planting Time: February-March',
                'Harvesting Time: May-June'
              ]),
              SubheadingTile(title: 'Seeds', content: [

                'Seed Quantity: 2-3 kg/ha',
                'Germination Rate: >=80%',
                'Purity: >=98%',
                'Moisture Content: <=8%',
                'Viability: High',
                'Brand: JK Agri Genetics, UPL Limited'
              ]),
              SubheadingTile(title: 'Soil', content: [
                'Soil Type: Sandy Loam'
              ]),
              SubheadingTile(title: 'Fertilizers', content: [
                'Fertilizers: Urea (46-0-0), Ammonium Nitrate (34-0-0), Diammonium Phosphate (DAP) (18-46-0), Sulfate of Potash (SOP) (0-0-50 + 17S)'
              ]),
              SubheadingTile(title: 'Weed and Pest Management', content: [
                'Weed and Pest Management: Trifluralin, Ethalfluralin, Clethodim, Imidacloprid, Spinosad, Bifenthrin'
              ]),
              SubheadingTile(title: 'Shelf Life', content: [
                'Shelf-life: 6 months'
              ]),
              SubheadingTile(title: 'Production', content: [
                '2022-2023: 110.21 Million Tonnes',
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
