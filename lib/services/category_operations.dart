
import 'package:spotify_app/models/category.dart';

class CategoryOperations{
  CategoryOperations._() {}
   static List<Category>getCategory(){
    return <Category>[
      Category('Top Songs',
        'https://is1-ssl.mzstatic.com/image/thumb/Purple126/v4/44/17/3c/44173c67-fc77-2bc3-a54e-c275c89f71bd/AppIcon-0-1x_U007emarketing-0-7-0-85-220.png/256x256bb.jpg'
      ),
      Category('MJ Hits',
          'https://c-cl.cdn.smule.com/rs-s80/arr/2c/93/1f29af6f-0863-47cf-9039-81eaee8f5017.jpg'
      ),
      Category('MJ Hits',
          'https://c-cl.cdn.smule.com/rs-s80/arr/2c/93/1f29af6f-0863-47cf-9039-81eaee8f5017.jpg'
      ),
      Category('Top Songs',
          'https://is1-ssl.mzstatic.com/image/thumb/Purple126/v4/44/17/3c/44173c67-fc77-2bc3-a54e-c275c89f71bd/AppIcon-0-1x_U007emarketing-0-7-0-85-220.png/256x256bb.jpg'
      ),
    ];
  }
}
