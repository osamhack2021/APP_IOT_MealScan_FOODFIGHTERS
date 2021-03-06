// 챌린지 카드를 눌렀을 시 팝업으로 뜨는 다이얼로그를 다루고 있음.
// 챌린지 관련 정보 (마감일, 지휘관 전파사항, 포상)을 보여줌
import 'package:flutter/material.dart';
import 'package:osam2021/models/challenge/challenge.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:ui';
import 'package:provider/provider.dart';
import 'package:osam2021/notifiers.dart';

class ChallengeInfo extends StatefulWidget {
  final Challenge challenge;
  const ChallengeInfo({required this.challenge});

  @override
  _ChallengeInfoState createState() => _ChallengeInfoState();
}
/// 다이얼로그 생성.
class _ChallengeInfoState extends State<ChallengeInfo> {
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          backgroundColor: Colors.white,
          child: Container(
            height: 450.0,
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      widget.challenge.name,
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)
                    ),
                    SizedBox(height: 5),
                    _buildSubtitle(),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _drawAnnouncement(),
                    SizedBox(height: 30),
                    _drawPrize(),
                    SizedBox(height: 80),
                    _drawTextButtons(),
                  ],
                ),
              ],
            ),
          ),
        ));
  }

  Widget _buildSubtitle() {
    var splitDate = widget.challenge.date.split('-');
    var formattedDate = splitDate[0] + "년 " + splitDate[1] + "월 " + splitDate[2].substring(0, 2) +"일";
    return Wrap(
      children: [
        Icon(FontAwesomeIcons.solidClock, color: Color(0xff5B5555), size: 15),
        SizedBox(
          width: 4,
        ),
        Text(formattedDate + " 종료   ", style: TextStyle(color: Color(0xff5B5555))),
        Icon(FontAwesomeIcons.solidUser, color: Color(0xff5B5555), size: 15),
        SizedBox(
          width: 4,
        ),
        Text(widget.challenge.attendants,
            style: TextStyle(color: Color(0xff5B5555))),
      ],
    );
  }

  Widget _drawAnnouncement() {
    String announcement = widget.challenge.announcement;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          children: [
            Icon(FontAwesomeIcons.bullhorn, color: Color(0xff5B5555), size: 15),
            Text('  지휘관 전파사항', style: TextStyle(color: Color(0xff5B5555),)),
          ],
        ),
        SizedBox(height: 5),
        Text('  $announcement', style: TextStyle(color: Color(0xff000000))),
        SizedBox(height: 10),
        
      ],
    );
  }

  Widget _drawPrize() {
    String prize = widget.challenge.prize;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          children: [
            Icon(FontAwesomeIcons.award, color: Color(0xff5B5555), size: 15),
            Text(' 포상', style: TextStyle(color: Color(0xff5B5555))),
          ],
        ),
        SizedBox(height: 5),
        Text('  $prize', style: TextStyle(color: Color(0xff000000)))
      ],
    );
  }

  Widget _drawTextButtons() {
    return Consumer<Notifiers>(
      builder: (context, notifiers, child) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                primary: Color(0xff5B5555),
                textStyle:
                    const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('닫기'),
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle:
                    const TextStyle(fontSize: 20),
              ),
              // 참가하기 버튼 누를 시 스낵바가 등장하여 유저를 참가중 탭으로 가이드함
              onPressed: () { 
                notifiers.addChallenge(widget.challenge);
                notifiers.closeChallenge(widget.challenge);
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text('참가등록 완료! 참가 중 탭에서 확인하세요.')));
              },
              child: const Text('참가하기'),
            )]
        );
      },
    );
  }
}
