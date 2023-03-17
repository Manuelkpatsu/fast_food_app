import 'package:fast_food_app/screen/main/profile/widget/profile_photo.dart';
import 'package:fast_food_app/screen/widget/app_bar_title.dart';
import 'package:fast_food_app/screen/widget/custom_button.dart';
import 'package:fast_food_app/screen/widget/label_text.dart';
import 'package:fast_food_app/screen/widget/text_input_field.dart';
import 'package:fast_food_app/utils/modal_bottom_sheet.dart';
import 'package:fast_food_app/utils/validator.dart';
import 'package:flutter/material.dart';
import 'package:fast_food_app/screen/router.dart' as router;
import 'package:image_picker/image_picker.dart';

import 'widget/image_picker_button.dart';
import 'widget/image_picker_modal.dart';

class EditProfileScreen extends StatefulWidget {
  static const routeName = '/edit_profile';

  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final GlobalKey<FormState> _editProfileFormKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final ImagePicker _picker = ImagePicker();
  bool _processing = false;

  @override
  void initState() {
    _nameController.text = 'Manuel Nart';
    _phoneNumberController.text = '+62838 7831 8391';
    _addressController.text = 'Home\n(62) 123-456\nStreet: 18 Sun City, Cibadak';
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneNumberController.dispose();
    _addressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Edit Profile'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Form(
          key: _editProfileFormKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.center,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    const ProfilePhoto(imageUrl: ''),
                    ImagePickerButton(
                      onPressed: _processing ? null : () => _showImageModal(),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              const LabelText(label: 'Name'),
              const SizedBox(height: 10),
              TextInputField(
                controller: _nameController,
                hintText: 'Name',
                validator: Validator.fullName,
                inputType: TextInputType.name,
                textCapitalization: TextCapitalization.words,
                inputAction: TextInputAction.next,
              ),
              const SizedBox(height: 16),
              const LabelText(label: 'Phone Number'),
              const SizedBox(height: 10),
              TextInputField(
                controller: _phoneNumberController,
                hintText: 'Phone Number',
                validator: Validator.phoneNumber,
                inputAction: TextInputAction.next,
                inputType: TextInputType.phone,
              ),
              const SizedBox(height: 16),
              const LabelText(label: 'Address'),
              const SizedBox(height: 10),
              TextInputField(
                controller: _addressController,
                hintText: 'Address',
                validator: Validator.address,
                inputType: TextInputType.multiline,
                textCapitalization: TextCapitalization.words,
                inputAction: TextInputAction.done,
                maxLines: 3,
              ),
              const SizedBox(height: 100),
              CustomButton(
                onPressed: () {
                  if (_editProfileFormKey.currentState!.validate()) {
                    router.Router.pop();
                  }
                },
                widget: const Text('Save'),
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }

  void _showImageModal() {
    ModalBottomSheet.openModalBottomSheet(
      context: context,
      widget: IntrinsicHeight(
        child: ImagePickerModal(
          type: PickerType.imagePicker,
          onCameraTap: () {
            _getImage(ImageSource.camera);
          },
          onGalleryTap: () {
            _getImage(ImageSource.gallery);
          },
        ),
      ),
    );
  }

  Future<void> _getImage(ImageSource source) async {
    // Close the dialog
    router.Router.pop();

    /// We delay for a little bit to prevent
    /// the loader from kicking off before the
    /// image picker or the camera loads up.
    Future.delayed(const Duration(milliseconds: 200), () {
      setState(() => _processing = true);
    });
    final pickedFile = await _picker.pickImage(source: source, imageQuality: 50);

    if (pickedFile != null) {
      debugPrint(pickedFile.path);
      setState(() => _processing = false);
    } else {
      setState(() => _processing = false);
    }
  }
}
