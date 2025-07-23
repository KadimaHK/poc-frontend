import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('zh')
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'POC'**
  String get appTitle;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @explore.
  ///
  /// In en, this message translates to:
  /// **'Explore'**
  String get explore;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @message.
  ///
  /// In en, this message translates to:
  /// **'Message'**
  String get message;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @setting.
  ///
  /// In en, this message translates to:
  /// **'Setting'**
  String get setting;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @booking.
  ///
  /// In en, this message translates to:
  /// **'{isPlural, select, s {Bookings} other {Booking}}'**
  String booking(String isPlural);

  /// No description provided for @bookings.
  ///
  /// In en, this message translates to:
  /// **'{number, plural, =0 {No bookings} =1 {1 booking} other {{number} bookings}}'**
  String bookings(num number);

  /// No description provided for @showAllReservations.
  ///
  /// In en, this message translates to:
  /// **'Show all reservations.'**
  String get showAllReservations;

  /// No description provided for @storedLiqueur.
  ///
  /// In en, this message translates to:
  /// **'{isPlural, select, s {Stored Liqueurs} other {Stored Liqueur}}'**
  String storedLiqueur(String isPlural);

  /// No description provided for @storedLiqueurs.
  ///
  /// In en, this message translates to:
  /// **'{number, plural, =0 {No stored liqueurs} =1 {1 stored liqueur} other {{number} stored liqueurs}}'**
  String storedLiqueurs(num number);

  /// No description provided for @recordAndShowDetailsOfYourStoredLiqueurs.
  ///
  /// In en, this message translates to:
  /// **'Record and show details of your stored liqueurs.'**
  String get recordAndShowDetailsOfYourStoredLiqueurs;

  /// No description provided for @voucher.
  ///
  /// In en, this message translates to:
  /// **'{isPlural, select, s {Vouchers} other {Voucher}}'**
  String voucher(String isPlural);

  /// No description provided for @vouchers.
  ///
  /// In en, this message translates to:
  /// **'{number, plural, =0 {No vouchers} =1 {1 voucher} other {{number} vouchers}}'**
  String vouchers(num number);

  /// No description provided for @voucherDetails.
  ///
  /// In en, this message translates to:
  /// **'Voucher Details'**
  String get voucherDetails;

  /// No description provided for @showAllVouchers.
  ///
  /// In en, this message translates to:
  /// **'Show all vouchers.'**
  String get showAllVouchers;

  /// No description provided for @browsingHistory.
  ///
  /// In en, this message translates to:
  /// **'Browsing History'**
  String get browsingHistory;

  /// No description provided for @orderHistory.
  ///
  /// In en, this message translates to:
  /// **'Order History'**
  String get orderHistory;

  /// No description provided for @privacySetting.
  ///
  /// In en, this message translates to:
  /// **'Privacy Setting'**
  String get privacySetting;

  /// No description provided for @needHelp.
  ///
  /// In en, this message translates to:
  /// **'Need Help?'**
  String get needHelp;

  /// No description provided for @aboutUs.
  ///
  /// In en, this message translates to:
  /// **'About Us'**
  String get aboutUs;

  /// No description provided for @whereIsMyVouchers.
  ///
  /// In en, this message translates to:
  /// **'Where is my vouchers?'**
  String get whereIsMyVouchers;

  /// No description provided for @qrCodeScanner.
  ///
  /// In en, this message translates to:
  /// **'QR Code Scanner'**
  String get qrCodeScanner;

  /// No description provided for @scan.
  ///
  /// In en, this message translates to:
  /// **'Scan'**
  String get scan;

  /// No description provided for @show.
  ///
  /// In en, this message translates to:
  /// **'Show'**
  String get show;

  /// No description provided for @notification.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification;

  /// No description provided for @personal.
  ///
  /// In en, this message translates to:
  /// **'Personal'**
  String get personal;

  /// No description provided for @news.
  ///
  /// In en, this message translates to:
  /// **'News'**
  String get news;

  /// No description provided for @order.
  ///
  /// In en, this message translates to:
  /// **'Order'**
  String get order;

  /// No description provided for @menu.
  ///
  /// In en, this message translates to:
  /// **'Menu'**
  String get menu;

  /// No description provided for @contact.
  ///
  /// In en, this message translates to:
  /// **'Contact'**
  String get contact;

  /// No description provided for @notice.
  ///
  /// In en, this message translates to:
  /// **'Notice'**
  String get notice;

  /// No description provided for @benefit.
  ///
  /// In en, this message translates to:
  /// **'{isPlural, select, s {Benefits} other {Benefit}}'**
  String benefit(String isPlural);

  /// No description provided for @benefits.
  ///
  /// In en, this message translates to:
  /// **'{number, plural, =0 {No benefits} =1 {1 benefit} other {{number} benefits}}'**
  String benefits(num number);

  /// No description provided for @photos.
  ///
  /// In en, this message translates to:
  /// **'{number, plural, =0 {No photos} =1 {1 photo} other {{number} photos}}'**
  String photos(num number);

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @rating.
  ///
  /// In en, this message translates to:
  /// **'{isPlural, select, s {Ratings} other {Rating}}'**
  String rating(String isPlural);

  /// No description provided for @ratings.
  ///
  /// In en, this message translates to:
  /// **'{number, plural, =0 {No ratings} =1 {1 rating} other {{number} ratings}}'**
  String ratings(num number);

  /// No description provided for @relatedNews.
  ///
  /// In en, this message translates to:
  /// **'Related News'**
  String get relatedNews;

  /// No description provided for @suggestedBars.
  ///
  /// In en, this message translates to:
  /// **'Suggested Bars'**
  String get suggestedBars;

  /// No description provided for @distance.
  ///
  /// In en, this message translates to:
  /// **'Distance'**
  String get distance;

  /// No description provided for @location.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get location;

  /// No description provided for @theme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// No description provided for @facility.
  ///
  /// In en, this message translates to:
  /// **'{isPlural, select, s {Facilities} other {Facility}}'**
  String facility(String isPlural);

  /// No description provided for @facilities.
  ///
  /// In en, this message translates to:
  /// **'{number, plural, =0 {No facilities} =1 {1 facility} other {{number} facilities}}'**
  String facilities(num number);

  /// No description provided for @nearby.
  ///
  /// In en, this message translates to:
  /// **'Nearby'**
  String get nearby;

  /// No description provided for @featured.
  ///
  /// In en, this message translates to:
  /// **'Featured'**
  String get featured;

  /// No description provided for @pick.
  ///
  /// In en, this message translates to:
  /// **'Pick'**
  String get pick;

  /// No description provided for @fridays.
  ///
  /// In en, this message translates to:
  /// **'Friday\'s'**
  String get fridays;

  /// No description provided for @daysLeft.
  ///
  /// In en, this message translates to:
  /// **'Days Left'**
  String get daysLeft;

  /// No description provided for @dayLeft.
  ///
  /// In en, this message translates to:
  /// **'Day Left'**
  String get dayLeft;

  /// No description provided for @featuredOffer.
  ///
  /// In en, this message translates to:
  /// **'{isPlural, select, s {Featured Offers} other {Featured Offer}}'**
  String featuredOffer(String isPlural);

  /// No description provided for @featuredOffers.
  ///
  /// In en, this message translates to:
  /// **'{number, plural, =0 {No featured offers} =1 {1 featured offer} other {{number} featured offers}}'**
  String featuredOffers(num number);

  /// No description provided for @restaurantInfo.
  ///
  /// In en, this message translates to:
  /// **'Restaurant Info'**
  String get restaurantInfo;

  /// No description provided for @buy.
  ///
  /// In en, this message translates to:
  /// **'Buy'**
  String get buy;

  /// No description provided for @earn.
  ///
  /// In en, this message translates to:
  /// **'Earn'**
  String get earn;

  /// No description provided for @pointsPerSeat.
  ///
  /// In en, this message translates to:
  /// **'points per seat'**
  String get pointsPerSeat;

  /// No description provided for @global.
  ///
  /// In en, this message translates to:
  /// **'Global'**
  String get global;

  /// No description provided for @exclusive.
  ///
  /// In en, this message translates to:
  /// **'Exclusive'**
  String get exclusive;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signUp;

  /// No description provided for @enterYourEmailToLoginForThisApp.
  ///
  /// In en, this message translates to:
  /// **'Enter your email to login for this app'**
  String get enterYourEmailToLoginForThisApp;

  /// No description provided for @enterYourEmailToSignUpForThisApp.
  ///
  /// In en, this message translates to:
  /// **'Enter your email to sign up for this app'**
  String get enterYourEmailToSignUpForThisApp;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @forgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password?'**
  String get forgotPassword;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @confirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirmPassword;

  /// No description provided for @alreadyHaveAnAccount.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get alreadyHaveAnAccount;

  /// No description provided for @newUser.
  ///
  /// In en, this message translates to:
  /// **'New User?'**
  String get newUser;

  /// No description provided for @createAccount.
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get createAccount;

  /// No description provided for @byContinuingYouAgreeToOur.
  ///
  /// In en, this message translates to:
  /// **'By continuing you agree to our'**
  String get byContinuingYouAgreeToOur;

  /// No description provided for @termsOfService.
  ///
  /// In en, this message translates to:
  /// **'Terms of Service'**
  String get termsOfService;

  /// No description provided for @and.
  ///
  /// In en, this message translates to:
  /// **'and'**
  String get and;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @passwordsDoNotMatch.
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match'**
  String get passwordsDoNotMatch;

  /// No description provided for @passwordIsTooShort.
  ///
  /// In en, this message translates to:
  /// **'Password is too short'**
  String get passwordIsTooShort;

  /// No description provided for @emailIsInvalid.
  ///
  /// In en, this message translates to:
  /// **'Email is invalid'**
  String get emailIsInvalid;

  /// No description provided for @emailIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Email is required'**
  String get emailIsRequired;

  /// No description provided for @passwordIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Password is required'**
  String get passwordIsRequired;

  /// No description provided for @emailAlreadyInUse.
  ///
  /// In en, this message translates to:
  /// **'Email is already in use'**
  String get emailAlreadyInUse;

  /// No description provided for @pleaseLoginToShowMoreFeatures.
  ///
  /// In en, this message translates to:
  /// **'Please log in to access additional features'**
  String get pleaseLoginToShowMoreFeatures;

  /// No description provided for @follower.
  ///
  /// In en, this message translates to:
  /// **'{isPlural, select, s {Followers} other {Follower}}'**
  String follower(String isPlural);

  /// No description provided for @followers.
  ///
  /// In en, this message translates to:
  /// **'{number, plural, =0 {No followers} =1 {1 follower} other {{number} followers}}'**
  String followers(num number);

  /// No description provided for @following.
  ///
  /// In en, this message translates to:
  /// **'Following'**
  String get following;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading'**
  String get loading;

  /// No description provided for @pointExpiredDate.
  ///
  /// In en, this message translates to:
  /// **'Point Expired Date: {date}'**
  String pointExpiredDate(Object date);

  /// No description provided for @viewSummary.
  ///
  /// In en, this message translates to:
  /// **'View Summary'**
  String get viewSummary;

  /// No description provided for @earnPointsToRenewMembershipDesc.
  ///
  /// In en, this message translates to:
  /// **'Earn {currentPoints} / {requiredPoints} points by {expirationDate} to renew your membership'**
  String earnPointsToRenewMembershipDesc(
      Object currentPoints, Object expirationDate, Object requiredPoints);

  /// No description provided for @membershipRemainingDays.
  ///
  /// In en, this message translates to:
  /// **'{days,plural, =0 {0 day} =1 {1 day} other {{days} days}} remaining in membership. Earn {points} points by {date} through using various services to extend membership.'**
  String membershipRemainingDays(Object date, num days, Object points);

  /// No description provided for @learnMore.
  ///
  /// In en, this message translates to:
  /// **'Learn More'**
  String get learnMore;

  /// No description provided for @exclusiveBenefit.
  ///
  /// In en, this message translates to:
  /// **'Exclusive Benefit'**
  String get exclusiveBenefit;

  /// No description provided for @overview.
  ///
  /// In en, this message translates to:
  /// **'Overview'**
  String get overview;

  /// No description provided for @bookmark.
  ///
  /// In en, this message translates to:
  /// **'{isPlural, select, s {Bookmarks} other {Bookmark}}'**
  String bookmark(String isPlural);

  /// No description provided for @bookmarks.
  ///
  /// In en, this message translates to:
  /// **'{number, plural, =0 {No bookmarks} =1 {1 bookmark} other {{number} bookmarks}}'**
  String bookmarks(num number);

  /// No description provided for @review.
  ///
  /// In en, this message translates to:
  /// **'{isPlural, select, s {Reviews} other {Review}}'**
  String review(String isPlural);

  /// No description provided for @reviews.
  ///
  /// In en, this message translates to:
  /// **'{number, plural, =0 {No reviews} =1 {1 review} other {{number} reviews}}'**
  String reviews(num number);

  /// No description provided for @photo.
  ///
  /// In en, this message translates to:
  /// **'{isPlural, select, s {Photos} other {Photo}}'**
  String photo(String isPlural);

  /// No description provided for @theAboveReviewIsThePersonalOpinionOfAUserWhichDoesNotRepresentPOCsPointOfView.
  ///
  /// In en, this message translates to:
  /// **'(The above review is the personal opinion of a user which does not represent POC’s point of view.)'**
  String
      get theAboveReviewIsThePersonalOpinionOfAUserWhichDoesNotRepresentPOCsPointOfView;

  /// No description provided for @dateOfVisit.
  ///
  /// In en, this message translates to:
  /// **'Date of Visit'**
  String get dateOfVisit;

  /// No description provided for @spendingPerHead.
  ///
  /// In en, this message translates to:
  /// **'Spending per Head'**
  String get spendingPerHead;

  /// No description provided for @taste.
  ///
  /// In en, this message translates to:
  /// **'Taste'**
  String get taste;

  /// No description provided for @decor.
  ///
  /// In en, this message translates to:
  /// **'Decor'**
  String get decor;

  /// No description provided for @service.
  ///
  /// In en, this message translates to:
  /// **'Service'**
  String get service;

  /// No description provided for @hygiene.
  ///
  /// In en, this message translates to:
  /// **'Hygiene'**
  String get hygiene;

  /// No description provided for @value.
  ///
  /// In en, this message translates to:
  /// **'Value'**
  String get value;

  /// No description provided for @open.
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get open;

  /// No description provided for @closed.
  ///
  /// In en, this message translates to:
  /// **'Closed'**
  String get closed;

  /// No description provided for @buyAndUseNow.
  ///
  /// In en, this message translates to:
  /// **'Buy and use now'**
  String get buyAndUseNow;

  /// No description provided for @expiryDate.
  ///
  /// In en, this message translates to:
  /// **'Expiry Date'**
  String get expiryDate;

  /// No description provided for @description.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get description;

  /// No description provided for @howToRedeem.
  ///
  /// In en, this message translates to:
  /// **'How to Redeem'**
  String get howToRedeem;

  /// No description provided for @establishmentInfo.
  ///
  /// In en, this message translates to:
  /// **'Establishment Info'**
  String get establishmentInfo;

  /// No description provided for @publishedAReview.
  ///
  /// In en, this message translates to:
  /// **'Published a review'**
  String get publishedAReview;

  /// No description provided for @bookmarkedItems.
  ///
  /// In en, this message translates to:
  /// **'{number, plural, =0{No bookmarked items} =1{Bookmarked {number} item} other{Bookmarked {number} items}}'**
  String bookmarkedItems(num number);

  /// No description provided for @viewAll.
  ///
  /// In en, this message translates to:
  /// **'View All'**
  String get viewAll;

  /// No description provided for @myExclusiveBenefit.
  ///
  /// In en, this message translates to:
  /// **'My Exclusive Benefit'**
  String get myExclusiveBenefit;

  /// No description provided for @myVoucher.
  ///
  /// In en, this message translates to:
  /// **'My Voucher'**
  String get myVoucher;

  /// No description provided for @available.
  ///
  /// In en, this message translates to:
  /// **'Available'**
  String get available;

  /// No description provided for @redeemed.
  ///
  /// In en, this message translates to:
  /// **'Redeemed'**
  String get redeemed;

  /// No description provided for @expired.
  ///
  /// In en, this message translates to:
  /// **'Expired'**
  String get expired;

  /// No description provided for @filters.
  ///
  /// In en, this message translates to:
  /// **'{name, select, distance {Distance} location {Location} theme {Theme} facilities {Facilities} other {Other}}'**
  String filters(String name);

  /// No description provided for @chatTypes.
  ///
  /// In en, this message translates to:
  /// **'{type, select, all {All} primary {Primary} general {General} request {Request} group {Group} other {Other}}'**
  String chatTypes(String type);

  /// No description provided for @result.
  ///
  /// In en, this message translates to:
  /// **'{number, plural, =0 {No results} =1 {1 result} other {{number} results}}'**
  String result(num number);

  /// No description provided for @newWord.
  ///
  /// In en, this message translates to:
  /// **'New'**
  String get newWord;

  /// No description provided for @expiryOn.
  ///
  /// In en, this message translates to:
  /// **'Expiry on {date}'**
  String expiryOn(Object date);

  /// No description provided for @viewDetails.
  ///
  /// In en, this message translates to:
  /// **'View Details'**
  String get viewDetails;

  /// No description provided for @redeemNow.
  ///
  /// In en, this message translates to:
  /// **'Redeem Now'**
  String get redeemNow;

  /// No description provided for @stored.
  ///
  /// In en, this message translates to:
  /// **'Stored'**
  String get stored;

  /// No description provided for @transferred.
  ///
  /// In en, this message translates to:
  /// **'Transferred'**
  String get transferred;

  /// No description provided for @pending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get pending;

  /// No description provided for @storedLiqueurDetails.
  ///
  /// In en, this message translates to:
  /// **'Stored Liqueur Details'**
  String get storedLiqueurDetails;

  /// No description provided for @showTheQRCodeToTheCashier.
  ///
  /// In en, this message translates to:
  /// **'Show the QR code to the cashier'**
  String get showTheQRCodeToTheCashier;

  /// No description provided for @storedDate.
  ///
  /// In en, this message translates to:
  /// **'Stored Date'**
  String get storedDate;

  /// No description provided for @transfer.
  ///
  /// In en, this message translates to:
  /// **'Transfer'**
  String get transfer;

  /// No description provided for @redeem.
  ///
  /// In en, this message translates to:
  /// **'Redeem'**
  String get redeem;

  /// No description provided for @whoWouldYouLikeToTransfer.
  ///
  /// In en, this message translates to:
  /// **'Who would you like to transfer?'**
  String get whoWouldYouLikeToTransfer;

  /// No description provided for @yourFollowing.
  ///
  /// In en, this message translates to:
  /// **'Your Following'**
  String get yourFollowing;

  /// No description provided for @idNumber.
  ///
  /// In en, this message translates to:
  /// **'ID Number'**
  String get idNumber;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @sendRequest.
  ///
  /// In en, this message translates to:
  /// **'Send Request'**
  String get sendRequest;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @confirmation.
  ///
  /// In en, this message translates to:
  /// **'Confirmation'**
  String get confirmation;

  /// No description provided for @to.
  ///
  /// In en, this message translates to:
  /// **'To'**
  String get to;

  /// No description provided for @liqueurName.
  ///
  /// In en, this message translates to:
  /// **'Liqueur Name'**
  String get liqueurName;

  /// No description provided for @amount.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get amount;

  /// No description provided for @online.
  ///
  /// In en, this message translates to:
  /// **'Online'**
  String get online;

  /// No description provided for @chat.
  ///
  /// In en, this message translates to:
  /// **'Chat'**
  String get chat;

  /// No description provided for @recent.
  ///
  /// In en, this message translates to:
  /// **'Recent'**
  String get recent;

  /// No description provided for @clear.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get clear;

  /// No description provided for @follow.
  ///
  /// In en, this message translates to:
  /// **'Follow'**
  String get follow;

  /// No description provided for @empty.
  ///
  /// In en, this message translates to:
  /// **'empty'**
  String get empty;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'zh'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
