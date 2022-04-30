void main() {
  People people = new People(
      "Ferrari california", "Vermelha", 1.48078000, "Gabriel Jeronimo");

  people.showPeopleCar();

  String paint = people.paintCar("Azul");

  print(paint);
}

abstract class Car {
  late String name;
  late String color;
  late double price;

  Car(this.name, color, this.price) {
    this.color = color.toString().toLowerCase();
  }

  String paintCar(String color) {
    return this.color = color.toLowerCase();
  }
}

class People extends Car {
  late String name;

  People(String car_name, String car_color, double price, this.name)
      : super(car_name, car_color, price);

  void showPeopleCar() {
    print(
        "$name tem uma ${super.name} ${super.color} avaliada em ${super.price}");
  }
  
  @override
  String paintCar(String color) {
    return "$name a pintura do seu carro para ${super.paintCar(color)} foi concluida!";
  }
}
