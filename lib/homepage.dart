import 'package:flutter/material.dart';
import 'package:timetable/myPage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required String title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TimeTable')),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: const [
              BranchTiles(
                Icons.laptop,
                'Computer Science',
                'https://firebasestorage.googleapis.com/v0/b/time-table-fb19d.appspot.com/o/cse.jpeg?alt=media&token=c0f6cca1-01f5-46bc-8b54-beb856ab7902',
              ),
              BranchTiles(
                Icons.construction,
                'Civil Engineering',
                'https://firebasestorage.googleapis.com/v0/b/time-table-fb19d.appspot.com/o/civil.jpeg?alt=media&token=cb33da0c-3c8d-4ec5-9920-27067e831f1a',
              ),
              BranchTiles(
                Icons.memory,
                'Electronics & Communication',
                'https://firebasestorage.googleapis.com/v0/b/time-table-fb19d.appspot.com/o/Ece.jpeg?alt=media&token=9cfd34b3-1d13-45e4-8d19-53ea6ef007e3',
              ),
              BranchTiles(
                Icons.precision_manufacturing,
                'Mechanical Engineering',
                'https://firebasestorage.googleapis.com/v0/b/time-table-fb19d.appspot.com/o/Mech.jpeg?alt=media&token=860df0cb-cedf-4761-981f-9d40993b5d06',
              ),
              BranchTiles(
                Icons.car_repair,
                'Automobile Engineering',
                'https://firebasestorage.googleapis.com/v0/b/time-table-fb19d.appspot.com/o/autom.jpeg?alt=media&token=21bd7b2f-1540-48a9-a390-68d99505b082',
              ),
              BranchTiles(
                Icons.wifi,
                'Information Science',
                'https://firebasestorage.googleapis.com/v0/b/time-table-fb19d.appspot.com/o/Ise.jpeg?alt=media&token=a71db06d-769b-4e29-80aa-1ac3e566e066',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BranchTiles extends StatelessWidget {
  const BranchTiles(
    this.icon,
    this.label,
    this.link, {
    Key? key,
  }) : super(key: key);

  final String label;
  final IconData icon;
  final String link;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: 50,
        width: 250,
        child: ElevatedButton.icon(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyPage(label, icon, link)),
          ),
          icon: Icon(icon),
          label: Text(label),
        ),
      ),
    );
  }
}
