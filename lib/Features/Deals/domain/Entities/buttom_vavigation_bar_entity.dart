import '../../../../core/utils/app_images.dart';

class BottomNavigationBarEntity {
  final String activeImage, inActiveImage;

  BottomNavigationBarEntity({
    required this.activeImage,
    required this.inActiveImage,
  });
}

List<BottomNavigationBarEntity> get bottomNavigationBarItems => [
      BottomNavigationBarEntity(
        activeImage: Assets.imagesActiveHome,
        inActiveImage: Assets.imagesUnActiveHome,
      ),
      BottomNavigationBarEntity(
        activeImage: Assets.imagesActiveDeals,
        inActiveImage: Assets.imagesUnActiveDeals,
      ),
      BottomNavigationBarEntity(
        activeImage: Assets.imagesActiveBocket,
        inActiveImage: Assets.imagesUnActiveBocket,
      ),
      BottomNavigationBarEntity(
        activeImage: Assets.imagesActiveUser,
        inActiveImage: Assets.imagesUnActiveUser,
      ),
      BottomNavigationBarEntity(
        activeImage: Assets.imagesActiveMore,
        inActiveImage: Assets.imagesUnActiveMore,
      ),
    ];
