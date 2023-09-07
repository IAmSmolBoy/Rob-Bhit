import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SustainabilityScreen extends StatefulWidget {
  const SustainabilityScreen({ super.key });

  @override
  State<SustainabilityScreen> createState() => _SustainabilityScreenState();
}

//carbon footprint simulated data
class CarbonFootprint {
  final String consumedBy;
  final int amtofEmission;
  final String amtOfEmissionPercent;
  final Color color;
  CarbonFootprint(this.consumedBy, this.amtofEmission, this.amtOfEmissionPercent, this.color);
}

class _SustainabilityScreenState extends State<SustainabilityScreen> {

  //simulated List of data
  final List<CarbonFootprint> carbonFootprint = <CarbonFootprint> [
    CarbonFootprint('Materials', 23, '23%', Colors.red),
    CarbonFootprint('Energy', 30, '30%', Colors.blue),
    CarbonFootprint('Coolant', 5, '5%', Colors.purple),
    CarbonFootprint('Lube Oil', 15, '15%', Colors.orange),
    CarbonFootprint('Nitrogen', 9, '9%', Colors.yellow),
    CarbonFootprint('Compressed Air', 18, '18%', Colors.green),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 400,
        margin: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Pie Chart
            Container(
              width: 350,
              height: 400,
              margin: const EdgeInsets.only(bottom: 30),
              child: SfCircularChart(
                title: ChartTitle(
                  text: 'Carbon Footprint',
                  alignment: ChartAlignment.near,
                  textStyle: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                legend: const Legend(
                  isVisible: true,
                  position: LegendPosition.bottom,
                  overflowMode: LegendItemOverflowMode.wrap,    
                ),
                series: <CircularSeries>[
                  PieSeries<CarbonFootprint, String>(
                    dataSource: carbonFootprint,
                    pointColorMapper: (CarbonFootprint cf, _) => cf.color,
                    xValueMapper: (CarbonFootprint cf, _) => cf.consumedBy,
                    yValueMapper: (CarbonFootprint cf, _) => cf.amtofEmission,
                    dataLabelMapper: (CarbonFootprint cf, _) => cf.amtOfEmissionPercent,
                    dataLabelSettings: const DataLabelSettings(
                      isVisible: true,
                      labelPosition: ChartDataLabelPosition.outside
                    )
                  )
                ],
              ),
            ),
            //Greenhouse Gas Emitted (KG)
            Container(
              width: 320,
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Greenhouse Gas Emitted (kg)',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                  IconButton(
                    onPressed: () {}, 
                    icon: const Icon(Icons.refresh),
                  ),
                ],
              ),
            ),
            //One emission
            Container(
              width: 320,
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      border: BorderDirectional(bottom: BorderSide(width: 0.2, color: Colors.grey)),
                    ),
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 150,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('1', style: TextStyle(fontSize: 15)),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Assembly Cell',
                                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                                  ),
                                  Text('Articulated Robot 1', style: TextStyle(fontSize: 10))
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Text('3.012345', style: TextStyle(fontSize: 15)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //One emission
            Container(
              width: 320,
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      border: BorderDirectional(bottom: BorderSide(width: 0.2, color: Colors.grey)),
                    ),
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 150,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('2', style: TextStyle(fontSize: 15)),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Unloading Cell',
                                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                                  ),
                                  Text('Scara Robot', style: TextStyle(fontSize: 10))
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Text('5.038583', style: TextStyle(fontSize: 15)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //One emission
            Container(
              width: 320,
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      border: BorderDirectional(bottom: BorderSide(width: 0.2, color: Colors.grey)),
                    ),
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 150,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('3', style: TextStyle(fontSize: 15)),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Machining Cell',
                                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                                  ),
                                  Text('CNC machine', style: TextStyle(fontSize: 10))
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Text('59.934885', style: TextStyle(fontSize: 15)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //One emission
            Container(
              width: 320,
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      border: BorderDirectional(bottom: BorderSide(width: 0.2, color: Colors.grey)),
                    ),
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 150,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('4', style: TextStyle(fontSize: 15)),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Assembly Cell',
                                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                                  ),
                                  Text('Articulated Robot 2', style: TextStyle(fontSize: 10))
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Text('1.20386', style: TextStyle(fontSize: 15)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            
          ],
        ),
      )
    );
  }
}