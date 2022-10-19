class Ingredient {
  String name;
  double price;
  double fats;
  double energy;
  double carbohydrate;
  double proteins;
  double fiber;
  double alcohol;

  Ingredient(this.name, this.price, this.fats, this.energy, this.carbohydrate,
      this.proteins, this.fiber, this.alcohol);

  Map toJson() => {
        'name': name,
        'properties': toJsonProperties(),
      };

  Map toJsonProperties() => {
        'price': price,
        'fats': fats,
        'calories': energy,
        'carbohydrate': carbohydrate,
        'proteins': proteins,
        'fiber': fiber,
        'alcohol': alcohol
      };
}
