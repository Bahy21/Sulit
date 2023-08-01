part of 'sale_details_w_imports.dart';

class BuildTimer extends StatefulWidget {
  final DateTime time;

  const BuildTimer({Key? key, required this.time}) : super(key: key);

  @override
  State<BuildTimer> createState() => _BuildTimerState();
}

class _BuildTimerState extends State<BuildTimer> {
  Timer? countdownTimer;
  Duration myDuration = const Duration(days: 5);

  @override
  void initState() {
    DateTime time = widget.time;
    DateTime timeNow = DateTime.now();
    Duration diff = time.difference(timeNow);
    myDuration = diff ;
    startTimer();
    super.initState();
  }

  void startTimer() {
    countdownTimer =
        Timer.periodic(const Duration(seconds: 1), (_) => setCountDown());
  }

  void stopTimer() {
    setState(() => countdownTimer!.cancel());
  }

  void resetTimer() {
    stopTimer();
    setState(() => myDuration = const Duration(days: 5));
  }

  void setCountDown() {
    const reduceSecondsBy = 1;
    setState(
      () {
        final seconds = myDuration.inSeconds - reduceSecondsBy;
        if (seconds < 0) {
          countdownTimer!.cancel();
        } else {
          myDuration = Duration(seconds: seconds);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    String strDigits(int n) => n.toString().padLeft(2, '0');
    final days = strDigits(myDuration.inDays);
    final hours = strDigits(myDuration.inHours.remainder(24));
    final minutes = strDigits(myDuration.inMinutes.remainder(60));
    final seconds = strDigits(myDuration.inSeconds.remainder(60));
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BuildTimeItem(time: days,),
        BuildTimeItem(time: hours,),
        BuildTimeItem(time: minutes,),
        BuildTimeItem(time: seconds,),
      ],
    );
  }
}
