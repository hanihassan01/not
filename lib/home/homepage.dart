import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../string.dart';



class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
   List<Team> teams = [];

 @override
  void initState() {
    super.initState();
    getTeams();
  }
 Future<void> getTeams() async {
    final response = await http.get(Uri.parse("https://run.mocky.io/v3/4d116e3e-808c-43ab-93ed-6c70540d4e18"));
    if (response.statusCode == 200) {
      final jsontable_menu_list = jsonDecode(response.body);
      final List<dynamic> table_menu_list = jsontable_menu_list['table_menu_list'];

      setState(() {
        teams = table_menu_list.map((teamteamtable_menu_list) {
          return Team(
            dish_id: teamteamtable_menu_list['id'],
            dish_name: teamteamtable_menu_list['dish_name'],
            dish_price: teamteamtable_menu_list['dish_price'],
            dish_currency: teamteamtable_menu_list['dish_currency'],
           dish_image: teamteamtable_menu_list['dish_image'],
           dish_calories: teamteamtable_menu_list['dish_calories'],
          dish_description: teamteamtable_menu_list['dish_description'],
          dish_Availability: teamteamtable_menu_list['dish_Availability'],
          menu_category: teamteamtable_menu_list['menu_category'],
          );
        }).toList();
      });
    } else {
      throw Exception('Failed to load teams');
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Team List'),
        
      ),
      body: SafeArea(
        child: teams.isEmpty
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: teams.length,
                padding: EdgeInsets.all(8),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(height: 250,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        
                      ),
                      child: ListTile(
                        leading: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.network(teams[index].dish_image,height: 40,width:40,),
                            Text(teams[index].dish_name),
                          ],
                        ),
                        title: Text(teams[index]. dish_description),
                        subtitle: Text(teams[index].dish_id.toString()),
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}