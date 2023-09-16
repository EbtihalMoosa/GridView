import 'package:flutter/material.dart';
import 'package:responsive/root/app_root.dart';

class HomeSreen extends StatefulWidget {
  const HomeSreen({super.key});

  @override
  State<HomeSreen> createState() => _HomeSreenState();
}

class _HomeSreenState extends State<HomeSreen> {
  List<Cat> cat = [
    Cat(
        name: "Clothes",
        img:
            "https://media.istockphoto.com/id/1257563298/photo/fashion-clothes-on-a-rack-in-a-light-background-indoors-place-for-text.jpg?s=612x612&w=0&k=20&c=UTL3KlMvLkteLe_9l3QbMklBcyaKQM5j6mcDxxtTr4Y="),
    Cat(
        name: "Makeup",
        img:
            "https://media.istockphoto.com/id/1320345717/photo/various-cosmetic-accessories-for-makeup-and-manicure-on-trendy-pastel-pink-background-with.jpg?s=612x612&w=0&k=20&c=H35tfZdnHIBJLjXiX2Jfzoq32U8DrZEhZ__5l_05LsM="),
    Cat(
        name: "Electronic",
        img:
            "https://thumbs.dreamstime.com/b/many-used-modern-electronic-gadgets-use-white-floor-reuse-recycle-concept-top-view-153892434.jpg"),
    Cat(
        name: "Food",
        img:
            "https://media-cldnry.s-nbcnews.com/image/upload/rockcms/2022-03/plant-based-food-mc-220323-02-273c7b.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "Categories",
            style: TextStyle(color: Colors.blueGrey, fontSize: 20),
          ),
        ),
        body: GridView.builder(
          //important
          itemCount: 4,
          //1
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          //2
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10),
              width: 400,
              height: 300,
              clipBehavior: Clip.antiAlias,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(40)),
              child: Stack(
                children: [
                  Container(
                    width: 200,
                    height: 150,
                    // decoration:
                    // BoxDecoration(borderRadius: BorderRadius.circular(90)),
                    child: Image.network(
                      cat[index].img,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                      // margin: EdgeInsets.all(60),
                      margin: EdgeInsets.only(top: 35, left: 70),
                      child: Text(
                        cat[index].name,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ))
                ],
              ),
            );
          },
        ));
  }
}
