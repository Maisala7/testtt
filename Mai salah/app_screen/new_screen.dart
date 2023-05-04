import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class new_screen extends StatefulWidget {
  const new_screen({super.key});

  @override
  State<StatefulWidget> createState() {
    return new_screenState();
  }
}

class new_screenState extends State<new_screen> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
   
    Widget MyButton(String name) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height / 15,
          width: MediaQuery.of(context).size.width / 4.5,
          child: ElevatedButton(
            child: Text(
              name,
              style:
                  TextStyle(fontSize: MediaQuery.of(context).size.width / 30),
            ),
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.blue)),
          ),
        ),
      );
    }

    return Scaffold(
       bottomNavigationBar: BottomNavigationBar(
        currentIndex: selected,
        onTap: (value) {
          setState(() {
            selected = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.transparent,
        unselectedItemColor: Color.fromARGB(255, 75, 74, 74),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.blue,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.discount_rounded),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
              size: 40,
              color: Colors.blue,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_rounded),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            label: '',
          ),
        ],
      ),
      //background color
      appBar:AppBar(
        backgroundColor: Colors.transparent,
        leading: ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: getImageAsset()),
        elevation: 0,
        actions: [
          CircleAvatar(
            backgroundColor: Colors.grey,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.grey,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.apps,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Hi,Mai',
            style: TextStyle(
              color: Color.fromARGB(255, 191, 189, 189),
              fontSize: 15,
            ),
          ),
          Text(
            'Where do you want to be?',
            style: TextStyle(
              color: Color.fromARGB(255, 241, 239, 239),
              fontSize: MediaQuery.of(context).size.width / 12.1,
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Container(
              width: MediaQuery.of(context).size.width / 1.3,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.grey)),
                  hintText: 'Search',
                  fillColor: Colors.transparent,
                  hintStyle: TextStyle(color: Color.fromARGB(255, 92, 90, 90)),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 15,
              width: MediaQuery.of(context).size.width / 8.5,
              child: ElevatedButton(
                child: Icon(
                  Icons.location_on,
                ),
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.blue)),
              ),
            ),
          ]),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                MyButton('Beach'),
                MyButton('camp'),
                MyButton('Mountain'),
                MyButton('Forrest'),
                
              ],
            ),
          ),
          Card(
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 3.5,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: getImage(),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Byron Beach',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 20, color: Colors.white),
                    ),
                    Spacer(),
                    Text(
                      '4.9',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 15, color: Colors.white),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.star,
                          size: MediaQuery.of(context).size.width / 15, color: Colors.blue),
                    )
                  ],
                ),
                
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Australia',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width / 24, color: Color.fromARGB(255, 82, 80, 80)),
                  ),
                ),
              ],
            ),
          ),
        ),
        
      ]
      ),
   ) 
   );
  }
}
Widget getImageAsset(){
  var assetimage=  NetworkImage('https://www.ha22.com/fashion/wp-content/uploads/2022/07/%D8%B5%D9%88%D8%B1-%D8%A8%D9%86%D8%A7%D8%AA-%D8%A7%D9%86%D9%85%D9%8A-%D9%83%D9%8A%D9%88%D8%AA-%D8%A7%D8%AC%D9%85%D9%84-%D8%B5%D9%88%D8%B1-%D8%A7%D9%86%D9%85%D9%8A-%D8%A8%D8%A7%D9%84%D8%B9%D8%A7%D9%84%D9%85-.jpg');
  Image image=Image(image: assetimage,width: 250.0,height: 250.0,);
  return Container(
    child: image,
 );
 }
 Widget getImage(){
  var assetimage=  NetworkImage('https://www.thebestofbyron.com/wp-content/uploads/2022/01/Best-Beaches-in-Byron-Bay-1024x649-1500x900.jpg');
  Image image=Image(image: assetimage,width: 400.0,height: 400.0,);
  return Container(
    child: image,
 );
 }
 