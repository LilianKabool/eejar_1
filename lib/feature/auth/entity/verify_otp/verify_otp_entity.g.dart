// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyOtpEntity _$VerifyOtpEntityFromJson(Map<String, dynamic> json) =>
    VerifyOtpEntity(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      token: json['token'] as String?,
    );

Map<String, dynamic> _$VerifyOtpEntityToJson(VerifyOtpEntity instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'token': instance.token,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: (json['id'] as num?)?.toInt(),
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      gender: json['gender'] as String?,
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      address: json['address'] as String?,
      phone: json['phone'] as String?,
      facebook: json['facebook'],
      twiter: json['twiter'],
      instagram: json['instagram'],
      telegram: json['telegram'],
      active: (json['active'] as num?)?.toInt(),
      user: (json['user'] as num?)?.toInt(),
      company: (json['company'] as num?)?.toInt(),
      salon: (json['salon'] as num?)?.toInt(),
      email: json['email'] as String?,
      emailVerifiedAt: json['emailVerifiedAt'] == null
          ? null
          : DateTime.parse(json['emailVerifiedAt'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'gender': instance.gender,
      'birthday': instance.birthday?.toIso8601String(),
      'address': instance.address,
      'phone': instance.phone,
      'facebook': instance.facebook,
      'twiter': instance.twiter,
      'instagram': instance.instagram,
      'telegram': instance.telegram,
      'active': instance.active,
      'user': instance.user,
      'company': instance.company,
      'salon': instance.salon,
      'email': instance.email,
      'emailVerifiedAt': instance.emailVerifiedAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
