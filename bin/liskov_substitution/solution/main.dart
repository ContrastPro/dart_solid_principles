void main() {
  const SQLDatabase sqLite = SQLite();
  sqLite.initialize();
  sqLite.joinTables();

  const NoSQLDatabase firebase = Firebase();
  firebase.initialize();
  firebase.createCollection();
}

class SQLDatabase {
  const SQLDatabase();

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

class NoSQLDatabase {
  const NoSQLDatabase();

  void initialize() {
    print('Initialize database');
  }

  void setString(String key, String value) {
    print('Save data');
  }

  String? getString(String key) {
    return 'Get data';
  }

  void createCollection() {
    print('Join tables');
  }
}

class SQLite extends SQLDatabase {
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

class Firebase extends NoSQLDatabase {
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
  void createCollection() {
    print('Firebase create collection');
  }
}
