


import 'package:flutter/cupertino.dart';


import 'package:flutter/material.dart';

import 'constans/container_name.dart';
import 'constans/image.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CatalogMain(),
    );
  }
}





class CatalogMain extends StatefulWidget {
  const CatalogMain({super.key});

  @override
  State<CatalogMain> createState() => _CatalogMainState();
}

class _CatalogMainState extends State<CatalogMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 75, right: 90),
          child: Text(
            "Catalog",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(imageUrls.length, (index) {
          //container nomlar
          String category = containerName[index];

          // rasmlar  chiqadi
          String imageUrl = imageUrls[index];

          return Column(
            children: [
              Container(
                width: 334,
                height: 106,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 106,
                      height: 106,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFF7F7F7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 12,
                            top: 12,
                            child: SizedBox(
                              width: 82,
                              child: Text(
                                containerName[index],
                                style: const TextStyle(
                                  overflow: TextOverflow.clip,
                                  color: Color(0xFF383838),
                                  fontSize: 12,
                                  fontFamily: 'Source Sans Pro',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 34,
                            top: 48,
                            child: Container(
                              width: 84,
                              height: 84,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(imageUrls[index]),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                  ],
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}






class SingleProduct extends StatefulWidget {
  const SingleProduct({super.key});

  @override
  State<SingleProduct> createState() => _SingleProductState();
}

class _SingleProductState extends State<SingleProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 75, right: 90),
          child: Text(
            "Single Product",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 300),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => SizedBox()));
            },
            child: const Text("Barchasini ko'rish",
                style: TextStyle(color: Color.fromARGB(255, 129, 117, 9))),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.yellow[100],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              minimumSize: const Size(double.infinity, 48),
            ),
          ),
        ],
      ),
    );
  }
}