import 'package:dansho_store/core/app/upload_image/repos/upload_image_repo.dart';
import 'package:dansho_store/core/service/graphql/api_result.dart';
import 'package:dansho_store/core/utils/image_picker_utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_image_state.dart';
part 'upload_image_cubit.freezed.dart';

class UploadImageCubit extends Cubit<UploadImageState> {
  UploadImageCubit({required this._uploadImageRepo})
    : super(const UploadImageState.initial());

  final UploadImageRepo _uploadImageRepo;
  String getImageUrl = '';

  Future<void> uploadImage() async {
    final pikedImage = await ImagePickerUtils().pickImage();
    if (pikedImage == null) return;

    emit(const UploadImageState.loading());
    final result = await _uploadImageRepo.uploadImage(imageFile: pikedImage);

    result.when(
      success: (data) {
        getImageUrl = data.location!;
        emit(const UploadImageState.success());
      },
      failure: (errorHandler) =>
          emit(UploadImageState.error(errMessage: errorHandler)),
    );
  }

  void removeImage() {
    getImageUrl = '';
    emit(UploadImageState.removeImage(imageUrl: getImageUrl));
  }
}
