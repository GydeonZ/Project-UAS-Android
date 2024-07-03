class FirstHeadingModel {
  final List<String> productImage;
  final List<String> productTitle;
  final List<String> productName;
  final List<String> productPrice;

  FirstHeadingModel({
    required this.productImage,
    required this.productTitle,
    required this.productName,
    required this.productPrice,
  });
}

final firstHeadingModel = FirstHeadingModel(
  productImage: [
    'assets/ssd.jpg',
    'assets/obeng.jpg',
    'assets/processor.jpg',
    'assets/speaker.png',
  ],
  productTitle: [
    'Balik lihat',
    'Terakhir cek',
    'Incaranmu',
    'Siap beli',
  ],
  productName: [
    'SSD',
    'Obeng Elektrik',
    'Processor',
    'Speaker',
  ],
  productPrice: [
    'Rp729.000',
    'Rp35.000',
    'Rp199.000',
    'Rp325.600',
  ],
);
