import 'package:pixhub/model/categories_model.dart';

String apiKey = "563492ad6f91700001000001a2748e674ceb42f3a1dfc42787c83ffc";

List<CategoriesModel> getCategories() {
  List<CategoriesModel> categories = [];
  CategoriesModel categorieModel = new CategoriesModel();

  //
  categorieModel.imgUrl =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNtlsb8EHTNEsAKWaOuTaorxNX4BbY3jyMOg&usqp=CAU";
  categorieModel.categorieName = "Animals";
  categories.add(categorieModel);
  categorieModel = new CategoriesModel();

  //
  categorieModel.imgUrl =
      "https://happywall-img-gallery.imgix.net/3630/pink_headphones_display.jpg";
  categorieModel.categorieName = "Music";
  categories.add(categorieModel);
  categorieModel = new CategoriesModel();

  //
  categorieModel.imgUrl =
      "https://images.pexels.com/photos/210186/pexels-photo-210186.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
  categorieModel.categorieName = "Nature";
  categories.add(categorieModel);
  categorieModel = new CategoriesModel();

  //
  categorieModel.imgUrl =
      "https://c4.wallpaperflare.com/wallpaper/971/967/737/sports-images-for-desktop-background-wallpaper-preview.jpg";
  categorieModel.categorieName = "Sports";
  categories.add(categorieModel);
  categorieModel = new CategoriesModel();

  //
  categorieModel.imgUrl = "https://wallpapercave.com/wp/wp2752752.jpg";
  categorieModel.categorieName = "Buildings";
  categories.add(categorieModel);
  categorieModel = new CategoriesModel();

  //
  categorieModel.imgUrl =
      "https://images.pexels.com/photos/2116475/pexels-photo-2116475.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500";
  categorieModel.categorieName = "Bikes";
  categories.add(categorieModel);
  categorieModel = new CategoriesModel();

  //
  categorieModel.imgUrl =
      "https://images.pexels.com/photos/1149137/pexels-photo-1149137.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500";
  categorieModel.categorieName = "Cars";
  categories.add(categorieModel);
  categorieModel = new CategoriesModel();

  return categories;
}
