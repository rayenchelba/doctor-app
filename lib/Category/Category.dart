class Category{
  String path;
  bool sel;
  Category ({required this.path,
  required this.sel});
  static List<Category> getcat (){
    List<Category> ls=[];
    ls.add(Category(path: 'assets/icons/dentist.svg', sel: false));
    ls.add(Category(path: 'assets/icons/heart.svg', sel: true));
    ls.add(Category(path: 'assets/icons/pill.svg', sel: false));
    ls.add(Category(path: 'assets/icons/pregnant.svg', sel: false));
    return ls;
  }
}