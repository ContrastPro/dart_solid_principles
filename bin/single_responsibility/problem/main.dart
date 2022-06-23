void main() {
  const _Auto auto = _Auto(
    model: _AutoModel.tesla,
  );

  final String model = auto.getCarModel();
  auto.saveCustomerOrder();

  print(model);
}

enum _AutoModel { tesla, audi }

class _Auto {
  const _Auto({
    required this.model,
  });

  final _AutoModel model;

  String getCarModel() {
    return model.name;
  }

  void saveCustomerOrder() {}

  void setCarModel() {}

  void getCustomerOrder() {}

  void removeCustomerOrder() {}

  void updateCarSet() {}
}
