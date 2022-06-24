void main() {
  const LocalDB sqLite = SQLite();
  sqLite.initialize();
  sqLite.joinTables();

  const LocalDB firebase = Firebase();
  firebase.initialize();
  firebase.joinTables();
}

class LocalDB {
  const LocalDB();

  void initialize() {
    print('Initialize database');
  }

  void setString(String key, String value) {
    print('Save data');
  }

  String? getString(String key) {
    return 'Get data';
  }

  void joinTables() {
    print('Join tables');
  }
}

class SQLite implements LocalDB {
  const SQLite();

  @override
  void initialize() {
    print('SQLite initialize database');
  }

  @override
  void setString(String key, String value) {
    print('SQLite save data');
  }

  @override
  String? getString(String key) {
    return 'SQLite get data';
  }

  @override
  void joinTables() {
    print('SQLite join tables');
  }
}

class Firebase implements LocalDB {
  const Firebase();

  @override
  void initialize() {
    print('Firebase initialize database');
  }

  @override
  void setString(String key, String value) {
    print('Firebase save data');
  }

  @override
  String? getString(String key) {
    return 'Firebase get data';
  }

  @override
  void joinTables() {
    throw UnimplementedError(
      'Firebase not support join tables',
    );
  }
}
