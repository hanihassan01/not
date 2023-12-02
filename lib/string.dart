// ignore_for_file: non_constant_identifier_names

class Team {
  final String dish_image; // eg. LAL
  final String dish_id;
  final  String dish_name;
   final  String dish_price;
   final  String dish_currency;
   final  String dish_calories;
   final  String dish_description;
   final  String dish_Availability;
   final  String menu_category;
   // eg. Los Angeles

  Team({
    required this.dish_image,
    required this.dish_id,
    required this.dish_name,
     required this.dish_price,
     required this.dish_currency,
     required this.dish_calories,
     required this.dish_description,
     required this.dish_Availability,
     required this.menu_category,
  });
}