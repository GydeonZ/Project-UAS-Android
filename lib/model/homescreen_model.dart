class HomeScreenModel {
  final List<String> bannerImages;
  final List<String> userBalanceLocation;
  final List<String> imagePilihanMenu1;
  final List<String> imagePilihanMenu2;
  final List<String> judulMenu1;
  final List<String> judulMenu2;
  final List<String> judulMenuUser;

  HomeScreenModel({
    required this.bannerImages,
    required this.userBalanceLocation,
    required this.imagePilihanMenu1,
    required this.imagePilihanMenu2,
    required this.judulMenu1,
    required this.judulMenu2,
    required this.judulMenuUser,
  });
}

final bannerImages = HomeScreenModel(
  bannerImages: [
    'assets/banner1.jpg',
    'assets/banner2.jpg',
    'assets/banner3.jpg',
    'assets/banner4.jpg',
    'assets/banner5.jpg',
    'assets/banner6.jpg',
  ],
  userBalanceLocation: [
    'assets/gopay.png',
    'assets/ticket.png',
    'assets/map.png',
  ],
  judulMenuUser: [
    'Rp300',
    '2 Kupon Baru',
    'Dikirim ke Rumah Farhan',
  ],
  imagePilihanMenu1: [
    'assets/promoHariIni.png',
    'assets/beliLokal.png',
    'assets/hiburan.png',
    'assets/langganan.png',
    'assets/cod.png',
    'assets/tokopediaSeru.png',
  ],
  imagePilihanMenu2: [
    'assets/wib.png',
    'assets/Topup.png',
    'assets/tokopediaNow.png',
    'assets/Fashion.png',
    'assets/olahraga.png',
    'assets/cicilan.png',
  ],
  judulMenu1: [
    'Promo Hari Ini',
    'Beli Lokal',
    'Tiket & Hiburan',
    'Mulai Langganan',
    'Bayar di Tempat',
    'Tokopedia Seru',
  ],
  judulMenu2: [
    'WIB',
    'Top-Up & Tagihan',
    'Tokopedia NOW!',
    'Fashion',
    'Olahraga',
    'Cicilan Tanpa Biaya',
  ],
);