import 'package:equatable/equatable.dart';

class Breed extends Equatable {
  final int? id;
  final String? name;
  final String? breedGroup;
  final String? bredFor;
  final String? lifeSpan;
  final String? temperament;
  final String? origin;
  final String? referenceImage;
  final Weight? weight;
  final Height? height;
  final BreedImage? image;

  const Breed({
    this.id,
    this.name,
    this.breedGroup,
    this.bredFor,
    this.lifeSpan,
    this.temperament,
    this.origin,
    this.referenceImage,
    this.weight,
    this.height,
    this.image,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        breedGroup,
        bredFor,
        lifeSpan,
        temperament,
        origin,
        referenceImage,
        weight,
        height,
        image,
      ];
}

class Weight extends Equatable {
  final String? imperial;
  final String? metric;

  const Weight({
    this.imperial,
    this.metric,
  });

  @override
  List<Object?> get props => [imperial, metric];
}

class Height extends Equatable {
  final String? imperial;
  final String? metric;

  const Height({
    this.imperial,
    this.metric,
  });

  @override
  List<Object?> get props => [imperial, metric];
}

class BreedImage extends Equatable {
  final String? id;
  final int? width;
  final int? height;
  final String? url;

  const BreedImage({
    this.id,
    this.width,
    this.height,
    this.url,
  });

  @override
  List<Object?> get props => [id, width, height, url];
}