import 'package:bloc/bloc.dart';
import 'package:eejar/feature/auth/presentation/screens/splash_screen.dart';
import 'package:eejar/feature/owner/entity/my_products_entity.dart';
import 'package:eejar/feature/owner/presentation/widgets/profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nested/nested.dart';
import 'feature/auth/presentation/manager/check_box/check_box_cubit.dart';
import 'feature/auth/presentation/manager/drop_down_button/drop_down_button_cubit.dart';
import 'feature/auth/presentation/manager/forget_password/forget_password_cubit.dart';
import 'feature/auth/presentation/manager/login/auth_log_in_cubit.dart';
import 'feature/auth/presentation/manager/register/register_cubit.dart';
import 'feature/auth/presentation/manager/resend_otp/resend_otp_cubit.dart';
import 'feature/auth/presentation/manager/reset_password/reset_password_cubit.dart';
import 'feature/auth/presentation/manager/verify_code/verifiy_code_cubit.dart';
import 'feature/auth/presentation/manager/visibality_password/visibility_password_cubit.dart';
import 'feature/owner/presentation/manager/active_subscription_cubit.dart';
import 'feature/owner/presentation/manager/add_photo_to_product_cubit.dart';
import 'feature/owner/presentation/manager/edit_info_for_product/change_info_cubit.dart';
import 'feature/owner/presentation/manager/get_category_attributes_cubit.dart';
import 'feature/owner/presentation/manager/my_products_cubit.dart';
import 'feature/owner/presentation/manager/my_subscription_cubit.dart';
import 'feature/owner/presentation/manager/processing_orders_cubit.dart';
import 'feature/owner/presentation/manager/set_card_info_cubit.dart';
import 'feature/owner/presentation/manager/subscripe_cubit.dart';
import 'feature/owner/presentation/manager/subscription_cubit.dart';
import 'feature/owner/presentation/manager/update_product_cubit.dart';
import 'feature/owner/presentation/screens/add_post_screen.dart';
import 'feature/owner/presentation/screens/update_product.dart';
import 'feature/user/presentation/manager/get_full_countries_cubit.dart';
import 'feature/user/presentation/manager/get_full_country_cubit.dart';
import 'feature/user/presentation/manager/get_profile_cubit.dart';
import 'injection_container.dart';
import 'observer.dart';

void main() async {
  Bloc.observer = AppBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();


  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 590),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MultiBlocProvider(

        providers: <SingleChildWidget>[
          BlocProvider(
            create: (context) => getItMhamad<UserLogInCubit>(),
          ),
          BlocProvider(
            create: (context) => getItMhamad<VisibilityPasswordCubit>(),
          ),
          BlocProvider(
            create: (context) => getItMhamad<SubscriptionCubit>(),
          ),
          BlocProvider(
            create: (context) => getItMhamad<MySubscriptionCubit>(),
          ),
          BlocProvider(
            create: (context) => getItMhamad<MyProductsCubit>(),
          ),
          BlocProvider(
            create: (context) => getItMhamad<ProcessingOrdersCubit>(),
          ),
          BlocProvider(
            create: (context) => getItMhamad<VerifiyCodeCubit>(),
          ),
          BlocProvider(
            create: (context) => getItMhamad<ForgetPasswordCubit>(),
          ),
          BlocProvider(
            create: (context) => getItMhamad<ResendOtpCubit>(),
          ),
          BlocProvider(
            create: (context) => getItMhamad<ResetPasswordCubit>(),
          ),
          BlocProvider(
            create: (context) => getItMhamad<CheckBoxCubit>(),
          ),
          BlocProvider(
            create: (context) => getItMhamad<DropDownButtonCubit>(),
          ),
          BlocProvider(
            create: (context) => getItMhamad<RegisterCubit>(),
          ),
          BlocProvider(
            create: (context) => getItMhamad<SubscripeCubit>(),
          ),
          BlocProvider(
            create: (context) => getItMhamad<ActiveSubscriptionCubit>(),
          ),
          BlocProvider(
            create: (context) => getItMhamad<SetCardInfoCubit>(),
          ),
          BlocProvider(
            create: (context) => getItMhamad<AddPhotoToProductCubit>(),
          ),
          BlocProvider(
            create: (context) => getItMhamad<GetCategoryAttributesCubit>(),
          ),
          BlocProvider(
            create: (context) => getItMhamad<UpdateProductCubit>(),
          ),
          BlocProvider(
            create: (context) => getItMhamad<ChangeInfoCobit>(),
          ),
          BlocProvider(
            create: (context) => getItMhamad<GetProfileCubit>(),
          ),
          BlocProvider(
            create: (context) => getItMhamad<VisibilityPasswordCubit>(),
          ),
          BlocProvider(create: (context) => getItMhamad<GetFullCountriesCubit>(),),
          BlocProvider(create: (context) => getItMhamad<GetFullCountryCubit>(),),

        ],
        child: MaterialApp(
          home:AddPostScreen(),
        ),
      ),
    );
  }
}
