import 'package:spotify_app/models/music.dart';

class MusicOperations{
  MusicOperations._() {}
  static List<Music>  getMusic(){
    return <Music>[

      Music('Eminem',
          'https://c-cl.cdn.smule.com/rs-s23/arr/6c/7e/b50905f3-85da-46fb-8b79-15b0ee24cb55.jpg',
          'Rap God',
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/f4/18/de/f418de15-c3d4-8496-d658-8d6a7e6c1c01/mzaf_15752757089171035769.plus.aac.p.m4a',
      ),
      Music('Dua Lipa',
          'https://c-cl.cdn.smule.com/rs-s80/arr/fa/4d/9d768092-c2c8-4fa2-9e55-70ba426cd5af.jpg',
          'Levitating',
           'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview116/v4/41/66/2a/41662a17-56b6-230b-0ae1-816cc1207325/mzaf_13210093460038125745.plus.aac.p.m4a',
      ),
      Music('Katy Perry',
          'https://d3g9pb5nvr3u7.cloudfront.net/authors/58153883fe74fb257f165abd/2003612691/256.jpg',
          'Firework',
           'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview122/v4/d4/d4/87/d4d487b2-c389-3f73-9eb0-7ce8dff67cdb/mzaf_9596576540436056369.plus.aac.p.m4a',),
      Music('Drake',
          'https://c-cl.cdn.smule.com/rs-s40/arr/4e/6b/1b42344c-74cf-42e0-946b-c07a8bd22c71.jpg',
          'Oh u want',
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview126/v4/7f/40/25/7f402563-51b0-3cc8-67ce-7200734a9f7b/mzaf_4105799545202914941.plus.aac.p.m4a',
      ),



    ];
  }
}