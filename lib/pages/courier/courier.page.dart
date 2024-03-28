import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mainuse/helpers/constants.dart';
import 'package:mainuse/pages/dialogs/pick_image_options.dialog.dart';
import 'package:mainuse/viewmodels/courier.viewmodel.dart';
import 'package:mainuse/widgets/app_bar.widget.dart';
import 'package:video_player/video_player.dart';

class CourierPage extends ConsumerStatefulWidget {
  const CourierPage({super.key});

  @override
  ConsumerState<CourierPage> createState() => _CourierPageState();
}

class _CourierPageState extends ConsumerState<CourierPage> {
  late VideoPlayerController _controller;

  @override
  Widget build(context) {
    var medias = ref.watch(makeCourierRequestProvider);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Appbar(
          title: "Courier",
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 25),
          GestureDetector(
            onTap: () => showCupertinoModalPopup(
              context: context,
              builder: (context) => PickImageOptions(
                onSelected: (file) {
                  if (file!.path.endsWith('.mp4')) {
                    _controller = VideoPlayerController.file(file);
                  }
                  ref.read(makeCourierRequestProvider.notifier).addMedia(file);
                  setState(() {});
                },
              ),
            ),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Icon(Iconsax.camera, color: greyTextColor),
              ),
            ),
          ),
          // Image.file(medias![0]),
          _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              : Container(),
        ],
      ),
    );
  }
}
