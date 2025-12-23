import 'package:example/core/utils/functions.dart';
import 'package:example/domain/entities/breed.dart';

class BreedModel extends Breed {
  const BreedModel({
    super.weight,
    super.height,
    super.id,
    super.name,
    super.breedGroup,
    super.bredFor,
    super.lifeSpan,
    super.temperament,
    super.origin,
    super.referenceImage,
    super.image,
  });

  factory BreedModel.fromJson(Map<String, dynamic> json) {
    return BreedModel(
      weight: json['weight'] != null ? WeightModel.fromJson(json['weight']) : null,
      height: json['height'] != null ? HeightModel.fromJson(json['height']) : null,
      id: json['id'],
      name: json['name'],
      breedGroup: json['breed_group'],
      bredFor: json['bred_for'],
      lifeSpan: json['life_span'],
      temperament: json['temperament'],
      origin: json['origin'],
      referenceImage: getImageUrl(json['reference_image_id']),
      image: json['image'] != null ? ImageModel.fromJson(json['image']) : null,
    );
  }
}

class WeightModel extends Weight {
  const WeightModel({super.imperial, super.metric});

  factory WeightModel.fromJson(Map<String, dynamic> json) {
    return WeightModel(
      imperial: json['imperial'],
      metric: json['metric'],
    );
  }
}

class HeightModel extends Height {
  const HeightModel({super.imperial, super.metric});

  factory HeightModel.fromJson(Map<String, dynamic> json) {
    return HeightModel(
      imperial: json['imperial'],
      metric: json['metric'],
    );
  }
}

class ImageModel extends BreedImage {
  const ImageModel({super.id, super.width, super.height, super.url});

  factory ImageModel.fromJson(Map<String, dynamic> json) {
    return ImageModel(
      id: json['id'],
      width: json['width'],
      height: json['height'],
      url: json['url'],
    );
  }
}