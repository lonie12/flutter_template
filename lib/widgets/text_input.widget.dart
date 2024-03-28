// ignore_for_file: non_constant_identifier_names,
import 'package:carbon_icons/carbon_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mainuse/helpers/constants.dart';
import 'package:mainuse/models/select_option.model.dart';

var outLine = OutlineInputBorder(
  borderSide: BorderSide(color: Colors.grey.shade400, width: 0.5),
  borderRadius: BorderRadius.circular(10),
);

var underLine = UnderlineInputBorder(
  borderSide: BorderSide(color: Colors.grey.shade400, width: 2),
  // borderRadius: BorderRadius.circular(6),
);

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key, this.icon});

  final IconData? icon;

  @override
  Widget build(context) {
    return TextField(
      controller: TextEditingController(),
      maxLines: 1,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 5),
        fillColor: Colors.white,
        hoverColor: greyTextColor,
        hintText: "Taper pour rechercher",
        prefixIcon: const Icon(CarbonIcons.search, color: Colors.grey),
      ),
      style: Theme.of(context).textTheme.bodyLarge,
    );
  }
}

class TextInputWidget extends StatelessWidget {
  const TextInputWidget({
    super.key,
    this.maxlines = 1,
    required this.hintText,
    required this.title,
    this.type,
    this.focusNode,
  });

  final String hintText;
  final String title;
  final TextInputType? type;
  final int maxlines;
  final FocusNode? focusNode;

  @override
  Widget build(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          focusNode: focusNode,
          maxLines: maxlines,
          keyboardType: type ?? TextInputType.text,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            hintText: hintText,
          ),
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}

class TextInputUnbordered extends ConsumerWidget {
  const TextInputUnbordered({
    super.key,
    required this.hintText,
    required this.title,
    this.keyType,
    this.prefixicon,
    this.suffixicon,
    this.isPasswordInput = false,
    this.action,
    this.obscure = false,
    this.validator,
    this.onEditingComplete,
    this.focusNode,
    this.onChanged,
    this.errorText,
    this.prefix,
    this.value,
    this.disabled = false,
  });

  final String hintText;
  final String title;
  final String? value;
  final bool? disabled;
  final TextInputType? keyType;
  final IconData? prefixicon;
  final IconData? suffixicon;
  final bool? isPasswordInput;
  final Function? action;
  final bool? obscure;
  final String? errorText;
  final FormFieldValidator<String>? validator;
  final VoidCallback? onEditingComplete;
  final FocusNode? focusNode;
  final Function(String)? onChanged;
  final Widget? prefix;

  @override
  Widget build(context, ref) {
    return TextFormField(
      readOnly: disabled!,
      initialValue: value,
      onChanged: onChanged,
      keyboardType: keyType,
      obscureText: obscure!,
      validator: validator,
      onEditingComplete: onEditingComplete,
      focusNode: focusNode,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textInputAction: TextInputAction.next,
      autocorrect: false,
      decoration: InputDecoration(
        fillColor: Colors.white,
        hoverColor: greyTextColor,
        hintText: hintText,
        suffixIcon: InkWell(
          child: Icon(suffixicon, size: 22, color: greyTextColor),
        ),
        disabledBorder: underLine,
        border: underLine,
        enabledBorder: underLine,
        errorBorder: underLine.copyWith(
          borderSide: const BorderSide(color: dangerColor, width: 2),
        ),
        focusedBorder: underLine,
        prefixIcon: prefix,
      ),
      style: Theme.of(context)
          .textTheme
          .bodyLarge!
          .copyWith(fontSize: 16.5, fontWeight: FontWeight.w500),
    );
  }
}

class Selectable extends StatelessWidget {
  const Selectable({
    super.key,
    required this.title,
    required this.options,
    required this.selected,
    required this.onChange,
  });

  final String title;
  final List<SelectOption> options;
  final String selected;
  final Function(String?)? onChange;

  @override
  Widget build(context) {
    return GestureDetector(
      onTap: () => showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        context: context,
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Choisissez une option dans la liste suivante",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                      ),
                  maxLines: 2,
                ),
              ),
              Divider(
                thickness: 0.9,
                height: 1,
                color: Colors.grey.shade300,
              ),
              Expanded(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: SingleChildScrollView(
                    child: Column(
                        children: List.generate(
                      options.length,
                      (index) {
                        var option = options[index];
                        return InkWell(
                          onTap: () => {
                            onChange!(option.key),
                            Navigator.of(context).pop(),
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                option.value,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                        fontSize: 16.5,
                                        fontWeight: FontWeight.w500),
                              ),
                              Radio<String>(
                                value: option.key,
                                groupValue: selected,
                                onChanged: (value) {
                                  onChange!(value);
                                  Navigator.of(context).pop();
                                },
                              )
                            ],
                          ),
                        );
                      },
                    )),
                  ),
                ),
              )
            ],
          );
        },
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 0.7,
            color: Colors.grey.shade300,
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: lgScreenPadding,
          vertical: 11.5,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 16, color: greyTextColor),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const Icon(CarbonIcons.chevron_down)
          ],
        ),
      ),
    );
  }
}
