void main() {
  const Auto auto = Auto(
    model: _AutoModel.audi,
  );

  final String price = _getPrice(auto);
  final String color = _getColor(auto);

  print(auto.getCarModel());
  print(price);
  print(color);
}

String _getPrice(Auto auto) {
  String price = 'No Auto Price';

  switch (auto.model) {
    case _AutoModel.tesla:
      price = '80 000\$';
      break;
    case _AutoModel.audi:
      price = '50 000\$';
      break;
  }

  return 'Price: $price';
}

String _getColor(Auto auto) {
  String color = 'Black';

  switch (auto.model) {
    case _AutoModel.tesla:
      color = 'White';
      break;
    case _AutoModel.audi:
      color = 'Red';
      break;
  }

  return 'Color: $color';
}

enum _AutoModel { tesla, audi }

class Auto {
  const Auto({
    required this.model,
  });

  final _AutoModel model;

  String getCarModel() {
    return 'Car model: ${model.name}';
  }
}
