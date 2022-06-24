Future<void> main() async {
  const MusicService musicService = MusicService(api: ShazamApi());
  final String? response = await musicService.searchTracks();
}

abstract class MusicApi {
  Future<String?> searchTracks();
}

class MusicService implements MusicApi {
  const MusicService({
    required this.api,
  });

  final MusicApi api;

  @override
  Future<String?> searchTracks() async {
    return api.searchTracks();
  }
}

class ShazamApi implements MusicApi {
  const ShazamApi();

  @override
  Future<String?> searchTracks() async {
    return 'List of music';
  }
}

class SoundHoundApi implements MusicApi {
  const SoundHoundApi();

  @override
  Future<String?> searchTracks() async {
    return 'List of music';
  }
}

class GoogleMusicApi implements MusicApi {
  const GoogleMusicApi();

  @override
  Future<String?> searchTracks() async {
    return 'List of music';
  }
}
