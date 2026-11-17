import 'package:dansho_store/core/common/widgets/custom_button.dart';
import 'package:dansho_store/core/common/widgets/custom_drop_down.dart';
import 'package:dansho_store/core/common/widgets/custom_text_field.dart';
import 'package:dansho_store/core/common/widgets/text_app.dart';
import 'package:dansho_store/core/extensions/context_ext.dart';
import 'package:dansho_store/core/styles/colors/colors_dark.dart';
import 'package:dansho_store/core/styles/fonts/font_family_helper.dart';
import 'package:dansho_store/core/styles/fonts/font_weight_helper.dart';
import 'package:dansho_store/features/admin/add_products/presentation/widgets/update/update_product_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpdateProductBottomSheet extends StatefulWidget {
  const new({super.key});

  @override
  State<UpdateProductBottomSheet> createState() =>
      _UpdateProductBottomSheetState();
}

class _UpdateProductBottomSheetState extends State<UpdateProductBottomSheet> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final GlobalKey fromKey = GlobalKey<FormState>();

  String? categoryName;

  @override
  void dispose() {
    titleController.dispose();
    priceController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600.h,
      child: Form(
        key: fromKey,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //?  Title
              Center(
                child: TextApp(
                  text: 'Update Product',
                  theme: context.textStyle.copyWith(
                    fontSize: 20.sp,
                    fontWeight: FontWeightHelper.bold,
                    fontFamily: FontFamilyHelper.poppinsEnglish,
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              //? image
              TextApp(
                text: 'Update a Photos',
                theme: context.textStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeightHelper.medium,
                  fontFamily: FontFamilyHelper.poppinsEnglish,
                ),
              ),
              SizedBox(height: 15.h),
              const UpdateProductImage(),
              //? Product Name
              TextApp(
                text: 'Title',
                theme: context.textStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeightHelper.medium,
                  fontFamily: FontFamilyHelper.poppinsEnglish,
                ),
              ),
              SizedBox(height: 10.h),
              CustomTextField(
                hintText: 'Title',
                controller: titleController,
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value == null || value.isEmpty || value.length < 2) {
                    return 'Plese Select Your Product Title';
                  }
                  return null;
                },
              ),
              SizedBox(height: 15.h),
              //? Product Price
              TextApp(
                text: 'Price',
                theme: context.textStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeightHelper.medium,
                  fontFamily: FontFamilyHelper.poppinsEnglish,
                ),
              ),
              SizedBox(height: 10.h),
              CustomTextField(
                hintText: 'Price',
                controller: priceController,
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Plese Select Your Product Price';
                  }
                  return null;
                },
              ),
              SizedBox(height: 15.h),
              //? Product Discription
              TextApp(
                text: 'Discription',
                theme: context.textStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeightHelper.medium,
                  fontFamily: FontFamilyHelper.poppinsEnglish,
                ),
              ),
              SizedBox(height: 10.h),
              CustomTextField(
                hintText: 'Discription',
                maxLines: 4,
                controller: descriptionController,
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value == null || value.isEmpty || value.length < 2) {
                    return 'Plese Select Your Product Description';
                  }
                  return null;
                },
              ),
              SizedBox(height: 15.h),
              //? Product Category
              TextApp(
                text: 'Category',
                theme: context.textStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeightHelper.medium,
                  fontFamily: FontFamilyHelper.poppinsEnglish,
                ),
              ),
              SizedBox(height: 10.h),
              //? Create DropDown
              CustomCreateDropDown(
                items: [],
                hintText: 'Realme',
                onChanged: (value) {
                  setState(() {
                    categoryName = value;
                  });
                },
                value: categoryName,
              ),
              SizedBox(height: 15.h),
              CustomButton(
                height: 50.h,
                width: context.width,
                text: 'Update Product',
                lastRadius: 20,
                threeRadius: 20,
                onPressed: () {},
                backgroundColor: Colors.white,
                textColor: ColorsDark.blueDark,
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
