import 'package:aqua_workout_pro/core.dart';
import 'package:get/get.dart';

class TrainController extends GetxController {
  static TrainController to = Get.find();
  List<Exercise> exercises = [];

  @override
  void onInit() async {
    super.onInit();
    await loadData();
  }

  loadData() {
    exercises = ExerciseService().getExercises();
  }

  @override
  void onReady() async {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
