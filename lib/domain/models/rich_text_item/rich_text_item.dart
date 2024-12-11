import 'dart:async';

import 'package:appflowy_board/appflowy_board.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

class RichTextItem extends AppFlowyGroupItem {
  @override
  final String id;
  final String title;
  final String desc;
  final String date;
  final String completionDate;
  final String projectName;
  String completionTime;
  final List<String> comments;
  Stopwatch stopwatch = Stopwatch();
  Duration elapsedTime = Duration.zero;
  Timer? _timer;

  RichTextItem({
    required this.title,
    required this.desc,
    required this.projectName,
    String? completionDate,
    String? date,
    String? id,
    String? completionTime,
    List<String>? comments,
  })  : id = id ?? const Uuid().v4(),
        date = date ?? DateFormat('MMM d, yyyy h:mm a').format(DateTime.now()),
        comments = comments ?? [],
        completionTime = completionTime ?? "",
        completionDate = completionDate ??
            DateFormat('MMM d, yyyy h:mm a').format(DateTime.now());

  void addComment(String comment) {
    comments.add(comment);
  }

  void startTimer() {
    stopwatch.start();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (stopwatch.isRunning) {
        elapsedTime = stopwatch.elapsed;
      }
    });
  }

  String get formattedElapsedTime {
    int hours = elapsedTime.inHours;
    int minutes = elapsedTime.inMinutes % 60;
    int seconds = elapsedTime.inSeconds % 60;
    return '$hours:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  void stopTimer() {
    stopwatch.stop();
    completionTime = formattedElapsedTime;
    _timer?.cancel();
  }

  void resetTimer() {
    stopwatch.reset();
    elapsedTime = Duration.zero;
    _timer?.cancel();
  }

  RichTextItem copyWith({
    String? id,
    String? title,
    String? desc,
    String? date,
    List<String>? comments,
    String? completionDate,
    String? completionTime,
    String? projectName,
  }) {
    return RichTextItem(
      id: id ?? this.id,
      title: title ?? this.title,
      desc: desc ?? this.desc,
      date: date ?? this.date,
      comments: comments ?? this.comments,
      completionDate: completionDate ?? this.completionDate,
      completionTime: completionTime ?? this.completionTime,
      projectName: projectName ?? this.projectName,
    );
  }
}
