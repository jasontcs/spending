import 'dart:io';

import 'package:flutter/material.dart';
import 'package:form_builder_image_picker/form_builder_image_picker.dart';
import 'package:spending_repository/spending_repository.dart';
import 'package:image_picker/image_picker.dart';

class ReceiptsField extends StatelessWidget {
  const ReceiptsField({Key? key}) : super(key: key);

  static const String name = 'receipts';

  @override
  Widget build(BuildContext context) {
    return FormBuilderImagePicker(
      name: name,
      displayCustomType: (obj) {
        if (obj is Receipt) {
          return obj.image.imageUrl;
        }
        return obj;
      },
      valueTransformer: (objs) {
        return objs
            ?.map((obj) {
              if (obj is Receipt) return obj;
              if (obj is XFile) {
                return Receipt(
                  image: SpendingImage(
                    imageFile: File(obj.path),
                  ),
                );
              }
            })
            .whereType<Receipt>()
            .toList();
      },
    );
  }
}
