import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_image_picker/form_builder_image_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:spending_repository/spending_repository.dart';

import '../../../../../app_router.dart';
import '../../../../../generated/l10n.dart';

class ReceiptsField extends StatelessWidget {
  const ReceiptsField({super.key});

  static const String name = 'receipts';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: FormBuilderImagePicker(
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
          late final Image? image;
          if (displayImage is Image) {
            image = displayImage;
          } else if (displayImage is XFileImage) {
            image = Image.file(File(displayImage.file.path));
          }
          final tag = ObjectKey(image);
          return ReceiptThumbnail(tag: tag, image: image);
        },
        bottomSheetPadding: MediaQuery.of(context).padding,
        cameraLabel: Text(S.of(context).camera),
        galleryLabel: Text(S.of(context).gallery),
      ),
    );
  }
}

class ReceiptThumbnail extends StatelessWidget {
  const ReceiptThumbnail({
    super.key,
    required this.tag,
    required this.image,
  });

  final ObjectKey tag;
  final Image? image;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: tag,
      child: Material(
        color: Colors.transparent,
        child: SizedBox(
          width: 130,
          height: 130,
          child: FittedBox(
            fit: BoxFit.cover,
            clipBehavior: Clip.antiAlias,
            child: Center(
              child: InkWell(
                onTap: () {
                  if (image != null) {
                    context.pushRoute(ReceiptRoute(
                      image: image!,
                      heroTag: tag,
                    ));
                  }
                },
                child: image,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
