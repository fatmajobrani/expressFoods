import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../models/foods.dart';

class SupabaseStorageService {
  final String bucketName = 'images_data'; // Nom du bucket

  /// Fonction pour téléverser une image dans Supabase Storage
  Future<String?> uploadImage() async {
    // Ouvre le sélecteur d'image
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile == null) {
      print('Aucune image sélectionnée.');
      return null;
    }

    final file = File(pickedFile.path);
    final fileName = '${DateTime.now().millisecondsSinceEpoch}.png';

    try {
      // Téléverser le fichier dans Supabase Storage
      final response = await Supabase.instance.client.storage
          .from(bucketName)
          .upload(fileName, file);

      // Vérifie si le téléversement est réussi
      if (response.isEmpty) {
        // Obtenir l'URL publique de l'image
        final publicUrl = Supabase.instance.client.storage
            .from(bucketName)
            .getPublicUrl(fileName);
        print('Téléversement réussi : $publicUrl');
        return publicUrl;
      } else {
        // En cas de réponse non vide (erreur potentielle)
        print('Erreur lors du téléversement : $response');
        return null;
      }
    } catch (e) {
      print('Exception lors du téléversement : $e');
      return null;
    }
  }

  Future<void> addFood(Foods food) async {
    try {
      // Add data to the 'foods' table in Supabase
      final response = await Supabase.instance.client.from('food').insert({
        'id': food.id,
        'description': food.description,
        'name': food.name,
        'imageUrl': food.imageUrl,
      });
    } catch (e) {
      print('Error: $e');
    }
  }

  Stream<List<Foods>> fetchFood() async* {
    try {
      // Fetch the data from the 'food' table in Supabase
      final response =
          Supabase.instance.client.from('food').stream(primaryKey: ['id']);

      // Convert the data from Supabase to a list of Foods objects
      final List<Foods> foodsList = (response as List)
          .map((foodData) => Foods.fromJson(foodData as Map<String, dynamic>))
          .toList();

      // Yield the list of Foods objects as a stream
      yield foodsList;
    } catch (e) {
      debugPrint('Error: $e');
    }
  }
}
