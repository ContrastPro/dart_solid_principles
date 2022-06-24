Future<void> main() async {
  const MusicApi musicApi = MusicApi();
  final String? response = await musicApi.searchTracks();
}

class MusicApi {
  const MusicApi();

  Future<String?> searchTracks() async {
    const ShazamApi shazamApi = ShazamApi();
    const SoundHoundApi soundHoundApi = SoundHoundApi();
    const GoogleMusicApi googleApi = GoogleMusicApi();

    final String? responseShazam = await shazamApi.load();

    if (responseShazam != null) {
      return responseShazam;
    }

    final String? responseSoundHound = await soundHoundApi.searchTracks();

    if (responseShazam != null) {
      return responseSoundHound;
    }

    final String? responseGoogle = await googleApi.get();

    return responseGoogle;
  }
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
