// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i8;

import 'core/api/api_consumer.dart' as _i12;
import 'core/api/dio_consumer.dart' as _i7;
import 'core/api/logging_interceptor.dart' as _i9;
import 'core/network/network_info.dart' as _i10;
import 'core/third_party_injection.dart' as _i44;
import 'feature/auth/presentation/manager/check_box/check_box_cubit.dart'
    as _i4;
import 'feature/auth/presentation/manager/forget_password/forget_password_cubit.dart'
    as _i18;
import 'feature/auth/presentation/manager/login/auth_log_in_cubit.dart' as _i32;
import 'feature/auth/presentation/manager/register/register_cubit.dart' as _i23;
import 'feature/auth/presentation/manager/resend_otp/resend_otp_cubit.dart'
    as _i24;
import 'feature/auth/presentation/manager/reset_password/reset_password_cubit.dart'
    as _i25;
import 'feature/auth/presentation/manager/verify_code/verifiy_code_cubit.dart'
    as _i33;
import 'feature/auth/presentation/manager/visibality_password/visibility_password_cubit.dart'
    as _i11;
import 'feature/auth/repository/auth_repository.dart' as _i17;
import 'feature/auth/web_services/auth_web_services.dart' as _i13;
import 'feature/order_user/presentation/manager/cubit/rate_product_cubit.dart'
    as _i22;
import 'feature/order_user/presentation/manager/store_order_cubit.dart' as _i27;
import 'feature/order_user/repository/order_repository.dart' as _i19;
import 'feature/order_user/web_service/order_web_service.dart' as _i14;
import 'feature/owner/presentation/manager/active_subscription_cubit.dart'
    as _i34;
import 'feature/owner/presentation/manager/add_photo_to_product_cubit.dart'
    as _i35;
import 'feature/owner/presentation/manager/edit_controller_cubit.dart' as _i6;
import 'feature/owner/presentation/manager/edit_info_for_product/change_info_cubit.dart'
    as _i3;
import 'feature/owner/presentation/manager/get_category_attributes_cubit.dart'
    as _i36;
import 'feature/owner/presentation/manager/my_products_cubit.dart' as _i42;
import 'feature/owner/presentation/manager/my_subscription_cubit.dart' as _i43;
import 'feature/owner/presentation/manager/processing_orders_cubit.dart'
    as _i21;
import 'feature/owner/presentation/manager/set_card_info_cubit.dart' as _i26;
import 'feature/owner/presentation/manager/subscripe_cubit.dart' as _i28;
import 'feature/owner/presentation/manager/subscription_cubit.dart' as _i29;
import 'feature/owner/presentation/manager/update_product_cubit.dart' as _i30;
import 'feature/owner/repository/owner_respository.dart' as _i20;
import 'feature/owner/web_services/owner_web_services.dart' as _i15;
import 'feature/user/presentation/manager/get_full_city_cubit.dart' as _i37;
import 'feature/user/presentation/manager/get_full_countries_cubit.dart'
    as _i38;
import 'feature/user/presentation/manager/get_full_country_cubit.dart' as _i39;
import 'feature/user/presentation/manager/get_full_currencies_cubit.dart'
    as _i40;
import 'feature/user/presentation/manager/get_profile_cubit.dart' as _i41;
import 'feature/user/repository/user_repository.dart' as _i31;
import 'feature/user/web_service/user_web_service.dart' as _i16;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final thirdPartyInjection = _$ThirdPartyInjection();
    gh.factory<_i3.ChangeInfoCobit>(() => _i3.ChangeInfoCobit());
    gh.factory<_i4.CheckBoxCubit>(() => _i4.CheckBoxCubit());
    gh.singleton<_i5.Dio>(() => thirdPartyInjection.dio);
    gh.factory<_i6.EditControllerCubit>(() => _i6.EditControllerCubit());
    gh.singleton<_i7.ErrorInterceptor>(() => _i7.ErrorInterceptor());
    gh.singleton<_i8.InternetConnectionChecker>(
        () => thirdPartyInjection.internetConnectionChecker);
    gh.singleton<_i9.LoggingInterceptor>(() => _i9.LoggingInterceptor());
    gh.lazySingleton<_i10.NetworkInfo>(() => _i10.NetworkInfoImpl(
        connectionChecker: gh<_i8.InternetConnectionChecker>()));
    gh.factory<_i11.VisibilityPasswordCubit>(
        () => _i11.VisibilityPasswordCubit());
    gh.singleton<_i12.ApiConsumer>(() => _i7.DioConsumer(gh<_i5.Dio>()));
    gh.singleton<_i13.AuthBaseWebServices>(
        () => _i13.AuthWebServicesImpl(apiConsumer: gh<_i12.ApiConsumer>()));
    gh.singleton<_i14.OrderBaseWebServices>(
        () => _i14.OrderWebServicesImpl(apiConsumer: gh<_i12.ApiConsumer>()));
    gh.singleton<_i15.OwnerBaseWebServices>(
        () => _i15.OwnerWebServicesImpl(apiConsumer: gh<_i12.ApiConsumer>()));
    gh.singleton<_i16.UserBaseWebServices>(
        () => _i16.UserWebServicesImpl(apiConsumer: gh<_i12.ApiConsumer>()));
    gh.singleton<_i17.AuthBaseRepository>(() => _i17.AuthRepositoryImpl(
          authBaseWebServices: gh<_i13.AuthBaseWebServices>(),
          networkInfo: gh<_i10.NetworkInfo>(),
        ));
    gh.factory<_i18.ForgetPasswordCubit>(
        () => _i18.ForgetPasswordCubit(gh<_i17.AuthBaseRepository>()));
    gh.singleton<_i19.OrderBaseRepository>(() => _i19.OrderRepositoryImpl(
          networkInfo: gh<_i10.NetworkInfo>(),
          orderBaseWebServices: gh<_i14.OrderBaseWebServices>(),
        ));
    gh.singleton<_i20.OwnerBaseRepository>(() => _i20.OwnerRepositoryImpl(
          ownerBaseWebServices: gh<_i15.OwnerBaseWebServices>(),
          networkInfo: gh<_i10.NetworkInfo>(),
        ));
    gh.factory<_i21.ProcessingOrdersCubit>(
        () => _i21.ProcessingOrdersCubit(gh<_i20.OwnerBaseRepository>()));
    gh.factory<_i22.RateProductCubit>(
        () => _i22.RateProductCubit(gh<_i19.OrderBaseRepository>()));
    gh.factory<_i23.RegisterCubit>(
        () => _i23.RegisterCubit(gh<_i17.AuthBaseRepository>()));
    gh.factory<_i24.ResendOtpCubit>(
        () => _i24.ResendOtpCubit(gh<_i17.AuthBaseRepository>()));
    gh.factory<_i25.ResetPasswordCubit>(
        () => _i25.ResetPasswordCubit(gh<_i17.AuthBaseRepository>()));
    gh.factory<_i26.SetCardInfoCubit>(
        () => _i26.SetCardInfoCubit(gh<_i20.OwnerBaseRepository>()));
    gh.factory<_i27.StoreOrderCubit>(
        () => _i27.StoreOrderCubit(gh<_i19.OrderBaseRepository>()));
    gh.factory<_i28.SubscripeCubit>(
        () => _i28.SubscripeCubit(gh<_i20.OwnerBaseRepository>()));
    gh.factory<_i29.SubscriptionCubit>(
        () => _i29.SubscriptionCubit(gh<_i20.OwnerBaseRepository>()));
    gh.factory<_i30.UpdateProductCubit>(
        () => _i30.UpdateProductCubit(gh<_i20.OwnerBaseRepository>()));
    gh.singleton<_i31.UserBaseRepository>(() => _i31.UserRepositoryImpl(
          userBaseWebServices: gh<_i16.UserBaseWebServices>(),
          networkInfo: gh<_i10.NetworkInfo>(),
        ));
    gh.factory<_i32.UserLogInCubit>(
        () => _i32.UserLogInCubit(gh<_i17.AuthBaseRepository>()));
    gh.factory<_i33.VerifiyCodeCubit>(
        () => _i33.VerifiyCodeCubit(gh<_i17.AuthBaseRepository>()));
    gh.factory<_i34.ActiveSubscriptionCubit>(
        () => _i34.ActiveSubscriptionCubit(gh<_i20.OwnerBaseRepository>()));
    gh.factory<_i35.AddPhotoToProductCubit>(
        () => _i35.AddPhotoToProductCubit(gh<_i20.OwnerBaseRepository>()));
    gh.factory<_i36.GetCategoryAttributesCubit>(
        () => _i36.GetCategoryAttributesCubit(gh<_i20.OwnerBaseRepository>()));
    gh.factory<_i37.GetFullCityCubit>(
        () => _i37.GetFullCityCubit(gh<_i31.UserBaseRepository>()));
    gh.factory<_i38.GetFullCountriesCubit>(
        () => _i38.GetFullCountriesCubit(gh<_i31.UserBaseRepository>()));
    gh.factory<_i39.GetFullCountryCubit>(
        () => _i39.GetFullCountryCubit(gh<_i31.UserBaseRepository>()));
    gh.factory<_i40.GetFullCurrenciesCubit>(
        () => _i40.GetFullCurrenciesCubit(gh<_i31.UserBaseRepository>()));
    gh.factory<_i41.GetProfileCubit>(
        () => _i41.GetProfileCubit(gh<_i31.UserBaseRepository>()));
    gh.factory<_i42.MyProductsCubit>(
        () => _i42.MyProductsCubit(gh<_i20.OwnerBaseRepository>()));
    gh.factory<_i43.MySubscriptionCubit>(
        () => _i43.MySubscriptionCubit(gh<_i20.OwnerBaseRepository>()));
    return this;
  }
}

class _$ThirdPartyInjection extends _i44.ThirdPartyInjection {}
