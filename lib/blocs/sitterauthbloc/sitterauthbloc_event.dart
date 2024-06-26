part of 'sitterauthbloc_bloc.dart';

abstract class SitterauthblocEvent extends Equatable {}

class SitterLogoutEvent extends SitterauthblocEvent {
  @override
  List<Object?> get props => [];
}

class SitterSendOtpToPhoneNumber extends SitterauthblocEvent {
  final String phoneNumber;
  final String userName;
  final String password;
  final String email;
  SitterSendOtpToPhoneNumber(
      {required this.phoneNumber,
      required this.userName,
      required this.email,
      required this.password});
  @override
  List<Object?> get props => [phoneNumber];
}

class SitterOnPhoneOtpSend extends SitterauthblocEvent {
  final String verificationId;
  final int token;

  SitterOnPhoneOtpSend({required this.verificationId, required this.token});
  @override
  List<Object?> get props => [verificationId, token];
}

class SitterVerifyOtp extends SitterauthblocEvent {
  final String otp;
  final String verificationId;
  final String phoneNumber;
  final String userName;
  final String password;
  final String email;
  SitterVerifyOtp({
    required this.otp,
    required this.password,
    required this.verificationId,
    required this.phoneNumber,
    required this.userName,
    required this.email,
  });
  @override
  List<Object?> get props => [otp];
}

class SitterOnPhoneAuthErrorEvent extends SitterauthblocEvent {
  final String err;

  SitterOnPhoneAuthErrorEvent({required this.err});

  @override
  List<Object?> get props => [err];
}

class OnPhoneAuhtSuccess extends SitterauthblocEvent {
  final String userName;
  final String phone;
  final String password;
  final String email;
  final AuthCredential credential;
  OnPhoneAuhtSuccess({
    required this.password,
    required this.userName,
    required this.phone,
    required this.credential,
    required this.email,
  });

  @override
  List<Object?> get props => [credential];
}

class SitterLoginEventTest extends SitterauthblocEvent {
  final String sitterPhone;
  final String sitterEmail;
  final String sitterPassword;

  SitterLoginEventTest(
      {required this.sitterPhone,
      required this.sitterPassword,
      required this.sitterEmail});
  @override
  List<Object?> get props => [sitterPhone, sitterPassword];
}

class SitterNavigateToLogin extends SitterauthblocEvent {
  @override
  List<Object?> get props => [];
}

class SitterNavigateToUpdateScreen extends SitterauthblocEvent {
  final int sitterid;

  SitterNavigateToUpdateScreen({required this.sitterid});
  @override
  List<Object?> get props => [sitterid];
}

class UpdateSitterImgAndLoc extends SitterauthblocEvent {
  final XFile? sitterimg;
  final String sitteradress;
  final int sitterId;
  final String latitude;
  final String longitude;

  UpdateSitterImgAndLoc({
    required this.sitterId,
    required this.sitterimg,
    required this.sitteradress,
    required this.latitude,
    required this.longitude,
  });
  @override
  List<Object?> get props =>
      [sitterimg, sitteradress, sitterId, latitude, longitude];
}

class UpdateSitterBioAndExperience extends SitterauthblocEvent {
  final String bio;
  final int sitterId;
  final String experience;

  UpdateSitterBioAndExperience(
      {required this.bio, required this.experience, required this.sitterId});

  @override
  List<Object?> get props => [];
}

// class UpdateSitterSkills extends SitterauthblocEvent {
//   final int sitterId;
//   final List<String> skills;

//   UpdateSitterSkills({required this.sitterId, required this.skills});
//   @override
//   List<Object?> get props => [sitterId,skills];
// }

class SendFrontAndBackIdCardsEvent extends SitterauthblocEvent {
  SendFrontAndBackIdCardsEvent();
  @override
  List<Object?> get props => [];
}
