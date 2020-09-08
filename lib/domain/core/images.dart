class ImagesGallery {
  static ImagesGallery get instance => ImagesGallery._internal();
  factory ImagesGallery() => instance;
  ImagesGallery._internal();
  String get flutterLogo =>
      'https://res.cloudinary.com/vrgokuldas/image/upload/v1597130592/portfolio_website/flutter_pthtoz.png';
  String get background =>
      'https://res.cloudinary.com/vrgokuldas/image/upload/v1599547977/portfolio_website/background_fdzutq.png';
}
