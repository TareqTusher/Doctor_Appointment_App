import 'package:docotor_appointment_app/config/router/app_routes.dart';
import 'package:docotor_appointment_app/view/screens/doctor_appointment_booking/book_appointment.dart';
import 'package:docotor_appointment_app/view/screens/doctor_appointment_booking/doctor_details.dart';
import 'package:docotor_appointment_app/view/screens/favorites/favorites_page.dart';
import 'package:docotor_appointment_app/view/screens/home_action/all_doctors_page.dart';
import 'package:docotor_appointment_app/view/screens/home_action/home_page.dart';
import 'package:docotor_appointment_app/view/screens/login_page/create_account.dart';
import 'package:docotor_appointment_app/view/screens/login_page/forgot_password.dart';
import 'package:docotor_appointment_app/view/screens/login_page/login_page.dart';
import 'package:docotor_appointment_app/view/screens/login_page/verify_email_page.dart';
import 'package:docotor_appointment_app/view/screens/onboarding/doctors_online.dart';
import 'package:docotor_appointment_app/view/screens/onboarding/splash_screens.dart';
import 'package:docotor_appointment_app/view/screens/profile/notification_page.dart';
import 'package:docotor_appointment_app/view/screens/profile/profile_page.dart';
import 'package:docotor_appointment_app/view/widgets/login_page/set_new_password.dart';
import 'package:go_router/go_router.dart';

GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: AppRoutesPath.splashScreen,

      name: AppRoutesName.splashScreen,
      pageBuilder: (context, state) => NoTransitionPage(child: SplashScreen()),
    ),
    GoRoute(
      path: AppRoutesPath.homePage,

      name: AppRoutesName.homePage,
      pageBuilder: (context, state) => NoTransitionPage(child: HomePage()),
    ),

    GoRoute(
      path: AppRoutesPath.allDocotor,

      name: AppRoutesName.allDocotor,
      pageBuilder: (context, state) =>
          NoTransitionPage(child: AllDoctorsPage()),
    ),

    GoRoute(
      path: AppRoutesPath.doctorDetails,

      name: AppRoutesName.doctorDetails,
      pageBuilder: (context, state) =>
          NoTransitionPage(child: DoctorDetailspage()),
    ),

    GoRoute(
      path: AppRoutesPath.bookAppointMent,

      name: AppRoutesName.bookAppointMent,
      pageBuilder: (context, state) {
        return NoTransitionPage(child: BookAppointmentPage());
      },
    ),
    GoRoute(
      path: AppRoutesPath.doctorsOnline,

      name: AppRoutesName.doctorsOnline,
      pageBuilder: (context, state) => NoTransitionPage(child: DoctorsOnline()),
    ),
    GoRoute(
      path: AppRoutesPath.createAccount,

      name: AppRoutesName.createAccount,
      pageBuilder: (context, state) => NoTransitionPage(child: CreateAccount()),
    ),
    GoRoute(
      path: AppRoutesPath.loginPage,

      name: AppRoutesName.loginPage,
      pageBuilder: (context, state) => NoTransitionPage(child: LoginPage()),
    ),
    GoRoute(
      path: AppRoutesPath.setNewPassword,

      name: AppRoutesName.setNewPassword,
      pageBuilder: (context, state) =>
          NoTransitionPage(child: SetNewPassword()),
    ),
    GoRoute(
      path: AppRoutesPath.forgotPassword,

      name: AppRoutesName.forgotPassword,
      pageBuilder: (context, state) =>
          NoTransitionPage(child: ForgotPassword()),
    ),
    GoRoute(
      path: AppRoutesPath.verifyEmailPage,

      name: AppRoutesName.verifyEmailPage,
      pageBuilder: (context, state) =>
          NoTransitionPage(child: VerifyEmailPage()),
    ),
    GoRoute(
      path: AppRoutesPath.favorites,

      name: AppRoutesName.favorites,
      pageBuilder: (context, state) => NoTransitionPage(child: FavoritesPage()),
    ),
    GoRoute(
      path: AppRoutesPath.notification,

      name: AppRoutesName.notification,
      pageBuilder: (context, state) =>
          NoTransitionPage(child: NotificationPage()),
    ),
     GoRoute(
      path: AppRoutesPath.profilePage,

      name: AppRoutesName.profilePage,
      pageBuilder: (context, state) =>
          NoTransitionPage(child: ProfilePage()),
    ),
  ],
);
