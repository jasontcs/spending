import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_image_picker/form_builder_image_picker.dart';
import 'package:spending_repository/spending_repository.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../generated/l10n.dart';

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
      decoration: InputDecoration(
        labelText: S.of(context).receipts,
      ),
      transformImageWidget: (context, displayImage) {
        return Container(
          width: 130,
          height: 130,
          child: ClipRRect(
            child: Center(
              child: InkWell(
                onTap: () {
                  final values =
                      FormBuilder.of(context)!.fields[name]!.value as List;
                  print(displayImage);
                },
                child: displayImage,
              ),
            ),
          ),
        );
      },
      bottomSheetPadding: MediaQuery.of(context).padding,
      cameraLabel: Text(S.of(context).camera),
      galleryLabel: Text(S.of(context).gallery),
    );
  }
}
