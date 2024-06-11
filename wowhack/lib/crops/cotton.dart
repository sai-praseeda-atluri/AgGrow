import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CottonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CropOutlinePage(crop: 'Cotton');
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
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('Crop Info'),
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
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
                          'images/cotton.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 16),
                    ],
                  ),
                ),
                SubheadingTile(title: 'Crop Information', content: [
                  'Crop Name: Cotton',
                  'Crop Type: Kharif',
                ]),
                SubheadingTile(title: 'Planting and Harvesting', content: [
                  'Planting Time: April-May',
                  'Harvesting Time: October-November'
                ]),
                SubheadingTile(title: 'Seeds', content: [

                  'Seed Quantity: 12-15 kg/ha',
                  'Germination Rate: >=70%',
                  'Purity: >=98%',
                  'Moisture Content: <=10%',
                  'Viability: High',
                  'Brand: Bayer(Monsanto), Mahyco'
                ]),
                SubheadingTile(title: 'Soil', content: [
                  'Soil Type: Sandy Loam'
                ]),
                SubheadingTile(title: 'Fertilizers', content: [
                  'Fertilizers: Urea (46-0-0), Ammonium Nitrate (34-0-0), Diammonium Phosphate (DAP) (18-46-0), Sulfate of Potash (SOP) (0-0-50 + 17S)'
                ]),
                SubheadingTile(title: 'Weed and Pest Management', content: [
                  'Weed and Pest Management: Pendimethalin, Glyphosate, Imidacloprid, Chlorantraniliprole, Thiamethoxam'
                ]),
                SubheadingTile(title: 'Shelf Life', content: [
                  'Shelf-life: 6 months'
                ]),
                SubheadingTile(title: 'Production', content: [
                  '2022-2023: 337.23 Lakh Tonnes',
                  ])
              ],
            ),
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
