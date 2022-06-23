void main() {
  const _Auto auto = _Auto(
    model: _AutoModel.tesla,
  );

  const _CustomerAuto customerAuto = _CustomerAuto(
    auto: auto,
  );

  final String model = auto.getCarModel();
  customerAuto.saveCustomerOrder();

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

  void setCarModel() {}
}

class _CustomerAuto {
  const _CustomerAuto({
    required this.auto,
  });

  final _Auto auto;

  void saveCustomerOrder() {}

  void getCustomerOrder() {}

  void removeCustomerOrder() {}
}

class _AutoDB {
  const _AutoDB();

  void updateCarSet() {}
}
