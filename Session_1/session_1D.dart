void main(){
  // Map Data Strcuture
  Map<String, Object> books = {
    "title": "THE TIME MACHINE",
    "author": "H.G. Wells",
    "ratings": 4.2,
    "price" : 199.00
  };

  print(books);
  print(books.hashCode);
  print(books["title"].hashCode);
  print(books.runtimeType);
}