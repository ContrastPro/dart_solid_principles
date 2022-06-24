Future<void> main() async {
  const ShazamApi shazamApi = ShazamApi();
  final String? responseShazam = await shazamApi.load();

  const SoundHoundApi soundHoundApi = SoundHoundApi();
  final String? responseSoundHound = await soundHoundApi.searchTracks();

  const GoogleMusicApi googleApi = GoogleMusicApi();
  final String? responseGoogle = await googleApi.get();
}

class ShazamApi {
  const ShazamApi();

  Future<String?> load() async {
    return 'List of music';
  }
}

class SoundHoundApi {
  const SoundHoundApi();

  Future<String?> searchTracks() async {
    return 'List of music';
  }
}

class GoogleMusicApi {
  const GoogleMusicApi();

  Future<String?> get() async {
    return 'List of music';
  }
}
