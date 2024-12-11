class Foods {
  final String id;
  final String description;
  final String name;
  final String imageUrl;

  Foods({
    required this.id,
    required this.description,
    required this.name,
    required this.imageUrl,
  });

  // Function to convert the object to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'description': description,
      'name': name,
      'imageUrl': imageUrl,
    };
  }

  // Function to create an object from JSON
  factory Foods.fromJson(Map<String, dynamic> json) {
    return Foods(
      id: json['id'] as String,
      description: json['description'] as String,
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String,
    );
  }

   Foods copyWith({
    String? id,
    String? description,
    String? name,
    String? imageUrl,
  }) {
    return Foods(
      id: id ?? this.id,
      description: description ?? this.description,
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }
}
