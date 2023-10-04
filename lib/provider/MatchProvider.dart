import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MatchProvider extends ChangeNotifier {
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  String? _battingTeam;
  String? _bowlingTeam;
  String? _batsman1;
  String? _batsman2;
  String? _bowler;

  String? get battingTeamm => _battingTeam;
  String? get bowlingTeam => _bowlingTeam;
  String? get batsman1 => _batsman1;
  String? get batsman2 => _batsman2;
  String? get bowler => _bowler;

  int runsBatsman1 = 0;
  int runsBatsman2 = 0;
  int teamRuns = 0;
  int teamWickets = 0;
  int runsBowler = 0;
  int bowlerWickets = 0;

  int batsman1_4s = 0;
  int batsman2_4s = 0;

  int batsman1_6s = 0;
  int batsman2_6s = 0;

  int ballsPlayer1 = 0;
  int ballsPlayer2 = 0;
  int ballsBowler = 0;

  bool? _isSelectedPlayer1 = false;
  bool? _isSelectedPlayer2 = false;

  bool? get isSelectedPlayer1 => _isSelectedPlayer1;
  bool? get isSelectedPlayer2 => _isSelectedPlayer2;

  setSelectedPlayer1(bool? value) {
    _isSelectedPlayer1 = value;
    _isSelectedPlayer2 = false;
  }

  setSelectedPlayer2(bool? value) {
    _isSelectedPlayer2 = value;
    _isSelectedPlayer1 = false;
  }

  setBattingTeam(String teamName) {
    _battingTeam = teamName;
    notifyListeners();
  }

  setBowlingTeam(String teamName) {
    _bowlingTeam = teamName;
    notifyListeners();
  }

  setBatsman1(String name) {
    _batsman1 = name;
    notifyListeners();
  }

  setBatsman2(String name) {
    _batsman2 = name;
    notifyListeners();
  }

  setBowler(String name) {
    _bowler = name;
    notifyListeners();
  }

  Future<void> updateBatsman1(
      String mainId, String matchId, String batsman1) async {
    ballsPlayer1 = 0;
    runsBatsman1 = 0;
    batsman1_4s = 0;
    batsman1_6s = 0;
    firebaseFirestore
        .collection('series_new')
        .doc(mainId)
        .collection('matches')
        .doc(matchId)
        .collection('match_details')
        .doc('match_details')
        .update({
      'batsman1_name': batsman1,
      'batsman1_runs': runsBatsman1,
      'batsman1_balls': ballsPlayer1,
      'batsman1_4s':batsman1_4s,
      'batsman1_6s':batsman1_6s
    });

    notifyListeners();
  }

  Future<void> updateBatsman2(
      String mainId, String matchId, String batsman2) async {
    ballsPlayer2 = 0;
    runsBatsman2 = 0;
    batsman2_4s = 0;
    batsman2_6s = 0;
    firebaseFirestore
        .collection('series_new')
        .doc(mainId)
        .collection('matches')
        .doc(matchId)
        .collection('match_details')
        .doc('match_details')
        .update({
      'batsman2_name': batsman2,
      'batsman2_runs': runsBatsman2,
      'batsman2_balls': ballsPlayer2,
      'batsman2_4s':batsman2_4s,
      'batsman2_6s':batsman2_6s
    });

    notifyListeners();
  }

  Future<void> updateBowler(
      String mainId, String matchId, String bowler) async {
    runsBowler = 0;
    ballsBowler = 0;
    bowlerWickets = 0;
    await firebaseFirestore
        .collection('series_new')
        .doc(mainId)
        .collection('matches')
        .doc(matchId)
        .collection('match_details')
        .doc('match_details')
        .update({
      'bowler_name': bowler,
      "bowler_wickets": bowlerWickets,
      'bowler_runs': runsBowler,
      'bowler_balls': ballsBowler,
    });

    notifyListeners();
  }

  Future<void> updatePlayer1RunsBy1(String mainId, String matchId) async {
    runsBatsman1 = runsBatsman1 + 1;
    teamRuns = teamRuns + runsBatsman1;
    runsBowler = runsBowler + 1;
    await firebaseFirestore
        .collection('series_new')
        .doc(mainId)
        .collection('matches')
        .doc(matchId)
        .collection('match_details')
        .doc('match_details')
        .update({
      'team_runs': teamRuns,
      'batsman1_runs': runsBatsman1,
      'bowler_runs': runsBowler
    });

    notifyListeners();
  }

  Future<void> updatePlayer1RunsBy2(String mainId, String matchId) async {
    runsBatsman1 = runsBatsman1 + 2;
    teamRuns = teamRuns + runsBatsman1;
    runsBowler = runsBowler + 2;
    await firebaseFirestore
        .collection('series_new')
        .doc(mainId)
        .collection('matches')
        .doc(matchId)
        .collection('match_details')
        .doc('match_details')
        .update({
      'team_runs': teamRuns,
      'batsman1_runs': runsBatsman1,
      'bowler_runs': runsBowler
    });

    notifyListeners();
  }

  Future<void> updatePlayer1RunsBy3(String mainId, String matchId) async {
    runsBatsman1 = runsBatsman1 + 3;
    teamRuns = teamRuns + runsBatsman1;
    runsBowler = runsBowler + 3;
    await firebaseFirestore
        .collection('series_new')
        .doc(mainId)
        .collection('matches')
        .doc(matchId)
        .collection('match_details')
        .doc('match_details')
        .update({
      'team_runs': teamRuns,
      'batsman1_runs': runsBatsman1,
      'bowler_runs': runsBowler
    });

    notifyListeners();
  }

  Future<void> updatePlayer1RunsBy4(String mainId, String matchId) async {
    runsBatsman1 = runsBatsman1 + 4;
    teamRuns = teamRuns + runsBatsman1;
    runsBowler = runsBowler + 4;
    await firebaseFirestore
        .collection('series_new')
        .doc(mainId)
        .collection('matches')
        .doc(matchId)
        .collection('match_details')
        .doc('match_details')
        .update({
      'team_runs': teamRuns,
      'batsman1_runs': runsBatsman1,
      'bowler_runs': runsBowler
    });

    notifyListeners();
  }

  Future<void> updatePlayer1RunsBy6(String mainId, String matchId) async {
    runsBatsman1 = runsBatsman1 + 6;
    teamRuns = teamRuns + runsBatsman1;
    runsBowler = runsBowler + 6;
    await firebaseFirestore
        .collection('series_new')
        .doc(mainId)
        .collection('matches')
        .doc(matchId)
        .collection('match_details')
        .doc('match_details')
        .update({
      'team_runs': teamRuns,
      'batsman1_runs': runsBatsman1,
      'bowler_runs': runsBowler
    });

    notifyListeners();
  }

  //Batsman 2 controlsss.....................................................
  Future<void> updatePlayer2RunsBy1(String mainId, String matchId) async {
    runsBatsman2 = runsBatsman2 + 1;
    teamRuns = teamRuns + runsBatsman2;
    runsBowler = runsBowler + 1;
    await firebaseFirestore
        .collection('series_new')
        .doc(mainId)
        .collection('matches')
        .doc(matchId)
        .collection('match_details')
        .doc('match_details')
        .update({
      'team_runs': teamRuns,
      'batsman2_runs': runsBatsman2,
      'bowler_runs': runsBowler
    });

    notifyListeners();
  }

  Future<void> updatePlayer2RunsBy2(String mainId, String matchId) async {
    runsBatsman2 = runsBatsman2 + 2;
    teamRuns = teamRuns + runsBatsman2;
    runsBowler = runsBowler + 2;
    await firebaseFirestore
        .collection('series_new')
        .doc(mainId)
        .collection('matches')
        .doc(matchId)
        .collection('match_details')
        .doc('match_details')
        .update({
      'team_runs': teamRuns,
      'batsman2_runs': runsBatsman2,
      'bowler_runs': runsBowler
    });

    notifyListeners();
  }

  Future<void> updatePlayer2RunsBy3(String mainId, String matchId) async {
    runsBatsman2 = runsBatsman2 + 3;
    teamRuns = teamRuns + runsBatsman2;
    runsBowler = runsBowler + 3;
    await firebaseFirestore
        .collection('series_new')
        .doc(mainId)
        .collection('matches')
        .doc(matchId)
        .collection('match_details')
        .doc('match_details')
        .update({
      'team_runs': teamRuns,
      'batsman2_runs': runsBatsman2,
      'bowler_runs': runsBowler
    });

    notifyListeners();
  }

  Future<void> updatePlayer2RunsBy4(String mainId, String matchId) async {
    runsBatsman2 = runsBatsman2 + 4;
    teamRuns = teamRuns + runsBatsman2;
    runsBowler = runsBowler + 4;
    await firebaseFirestore
        .collection('series_new')
        .doc(mainId)
        .collection('matches')
        .doc(matchId)
        .collection('match_details')
        .doc('match_details')
        .update({
      'team_runs': teamRuns,
      'batsman2_runs': runsBatsman2,
      'bowler_runs': runsBowler
    });

    notifyListeners();
  }

  Future<void> updatePlayer2RunsBy6(String mainId, String matchId) async {
    runsBatsman2 = runsBatsman2 + 6;
    teamRuns = teamRuns + runsBatsman2;
    runsBowler = runsBowler + 6;
    await firebaseFirestore
        .collection('series_new')
        .doc(mainId)
        .collection('matches')
        .doc(matchId)
        .collection('match_details')
        .doc('match_details')
        .update({
      'team_runs': teamRuns,
      'batsman2_runs': runsBatsman2,
      'bowler_runs': runsBowler
    });

    notifyListeners();
  }

  //Bowling part................................................................

  Future<void> incrementBallsPlayer1(String mainId, String matchId) async {
    ballsPlayer1 = ballsPlayer1 + 1;
    ballsBowler = ballsBowler + 1;
    await firebaseFirestore
        .collection('series_new')
        .doc(mainId)
        .collection('matches')
        .doc(matchId)
        .collection('match_details')
        .doc('match_details')
        .update({
      'batsman1_balls': ballsPlayer1,
      'bowler_balls': ballsBowler,
    });

    notifyListeners();
  }

  Future<void> incrementBallsPlayer2(String mainId, String matchId) async {
    ballsPlayer2 = ballsPlayer2 + 1;
    ballsBowler = ballsBowler + 1;
    await firebaseFirestore
        .collection('series_new')
        .doc(mainId)
        .collection('matches')
        .doc(matchId)
        .collection('match_details')
        .doc('match_details')
        .update({
      'batsman2_balls': ballsPlayer1,
      'bowler_balls': ballsBowler,
    });

    notifyListeners();
  }

  //6s and 4s updation at batsmans side.........................................
  Future<void> update4sforPlayer1(String mainId, String matchId) async {
    batsman1_4s = batsman1_4s + 1;
    await firebaseFirestore
        .collection('series_new')
        .doc(mainId)
        .collection('matches')
        .doc(matchId)
        .collection('match_details')
        .doc('match_details')
        .update({
      'batsman1_4s': batsman1_4s,
    });

    notifyListeners();
  }

  Future<void> update4sforPlayer2(String mainId, String matchId) async {
    batsman2_4s = batsman2_4s + 1;
    await firebaseFirestore
        .collection('series_new')
        .doc(mainId)
        .collection('matches')
        .doc(matchId)
        .collection('match_details')
        .doc('match_details')
        .update({
      'batsman2_4s': batsman2_4s,
    });

    notifyListeners();
  }

  Future<void> update6sforPlayer1(String mainId, String matchId) async {
    batsman1_6s = batsman1_6s + 1;
    await firebaseFirestore
        .collection('series_new')
        .doc(mainId)
        .collection('matches')
        .doc(matchId)
        .collection('match_details')
        .doc('match_details')
        .update({
      'batsman1_6s': batsman1_6s,
    });

    notifyListeners();
  }

  Future<void> update6sforPlayer2(String mainId, String matchId) async {
    batsman2_6s = batsman2_6s + 1;
    await firebaseFirestore
        .collection('series_new')
        .doc(mainId)
        .collection('matches')
        .doc(matchId)
        .collection('match_details')
        .doc('match_details')
        .update({
      'batsman2_6s': batsman2_6s,
    });

    notifyListeners();
  }

  //Bowler Controls.............................................................

//NoBall..........................
  Future<void> noBall(String mainId, String matchId) async {
    teamRuns = teamRuns + 1;
    runsBowler = runsBowler + 1;

    await firebaseFirestore
        .collection('series_new')
        .doc(mainId)
        .collection('matches')
        .doc(matchId)
        .collection('match_details')
        .doc('match_details')
        .update({'team_runs': teamRuns, 'bowler_runs': runsBowler});

    notifyListeners();
  }

//WideBall.................................................
  Future<void> wideBall(String mainId, String matchId) async {
    teamRuns = teamRuns + 1;
    runsBowler = runsBowler + 1;

    await firebaseFirestore
        .collection('series_new')
        .doc(mainId)
        .collection('matches')
        .doc(matchId)
        .collection('match_details')
        .doc('match_details')
        .update({'team_runs': teamRuns, 'bowler_runs': runsBowler});

    notifyListeners();
  }

//Dot Ball..........................................
  Future<void> dotBallPlayer1(String mainId, String matchId) async {
    ballsBowler = ballsBowler + 1;
    ballsPlayer1 = ballsPlayer1 + 1;

    await firebaseFirestore
        .collection('series_new')
        .doc(mainId)
        .collection('matches')
        .doc(matchId)
        .collection('match_details')
        .doc('match_details')
        .update({'bowler_balls': ballsBowler, 'batsman1_balls': ballsPlayer1});

    notifyListeners();
  }

  Future<void> dotBallPlayer2(String mainId, String matchId) async {
    ballsBowler = ballsBowler + 1;
    ballsPlayer2 = ballsPlayer2 + 1;

    await firebaseFirestore
        .collection('series_new')
        .doc(mainId)
        .collection('matches')
        .doc(matchId)
        .collection('match_details')
        .doc('match_details')
        .update({'bowler_balls': ballsBowler, 'batsman2_balls': ballsPlayer2});

    notifyListeners();
  }

  //Wickets.....................................................
  Future<void> wicket(String mainId, String matchId) async {
    teamWickets = teamWickets + 1;
    bowlerWickets = bowlerWickets + 1;
    ballsBowler = ballsBowler + 1;

    await firebaseFirestore
        .collection('series_new')
        .doc(mainId)
        .collection('matches')
        .doc(matchId)
        .collection('match_details')
        .doc('match_details')
        .update({
      'bowler_wickets': bowlerWickets,
      'team_wickets': teamWickets,
      'bowler_balls': ballsBowler
    });

    notifyListeners();
  }
}
