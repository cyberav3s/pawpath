
String getImageUrl(String? imageId) {
  if (imageId == null || imageId.isEmpty) {
    return 'https://via.placeholder.com/150';
  }
  return 'https://cdn2.thedogapi.com/images/$imageId.jpg';
}