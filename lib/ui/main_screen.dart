import 'package:bags_shop/generated/l10n.dart';
import 'package:bags_shop/ui/widgets/promoCard.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
          ),
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(30)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      //'Экслюзивная коллекция женских сумочек',
                      S.of(context).titleCollection,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(244, 243, 243, 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search, color: Colors.black87),
                          hintText: S
                              .of(context)
                              .hintText, //'То, что ищешь, тоже ищет тебя.',
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      S.of(context).promo, //'Промо - акция дня!',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          promoCard('images/women_bag.jpg'),
                          promoCard('images/women_bag2.jpg'),
                          promoCard('images/women_bag3.jpg'),
                          promoCard('images/women_bag4.jpg'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('images/women_bags.jpg'),
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              stops: [
                                0.3,
                                0.9
                              ],
                              colors: [
                                Colors.black.withOpacity(.8),
                                Colors.black.withOpacity(.2)
                              ]),
                        ),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              S.of(context).theBest,
                              style: Theme.of(context).textTheme.headline5,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
