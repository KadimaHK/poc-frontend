// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => 'POC';

  @override
  String get home => '首頁';

  @override
  String get explore => '探索';

  @override
  String get search => '搜尋';

  @override
  String get message => '訊息';

  @override
  String get profile => '個人資料';

  @override
  String get setting => '設定';

  @override
  String get logout => '登出';

  @override
  String booking(String isPlural) {
    return '預訂';
  }

  @override
  String bookings(num number) {
    return '訂單';
  }

  @override
  String get showAllReservations => '顯示所有預訂。';

  @override
  String storedLiqueur(String isPlural) {
    String _temp0 = intl.Intl.selectLogic(
      isPlural,
      {
        's': 'Stored Liqueurs',
        'other': 'Stored Liqueur',
      },
    );
    return '$_temp0';
  }

  @override
  String storedLiqueurs(num number) {
    return '儲存的酒類';
  }

  @override
  String get recordAndShowDetailsOfYourStoredLiqueurs => '記錄並顯示您儲存的酒類的詳細資料。';

  @override
  String voucher(String isPlural) {
    String _temp0 = intl.Intl.selectLogic(
      isPlural,
      {
        's': 'Vouchers',
        'other': 'Voucher',
      },
    );
    return '$_temp0';
  }

  @override
  String vouchers(num number) {
    return '禮券';
  }

  @override
  String get voucherDetails => 'Voucher Details';

  @override
  String get showAllVouchers => '顯示所有禮券。';

  @override
  String get browsingHistory => '瀏覽歷史';

  @override
  String get orderHistory => '訂單歷史';

  @override
  String get privacySetting => '隱私設定';

  @override
  String get needHelp => '需要幫助嗎？';

  @override
  String get aboutUs => '關於我們';

  @override
  String get whereIsMyVouchers => '我的禮券在哪裡？';

  @override
  String get qrCodeScanner => 'QR碼掃描器';

  @override
  String get scan => '掃描';

  @override
  String get show => '顯示';

  @override
  String get notification => '通知';

  @override
  String get personal => '個人';

  @override
  String get news => '新聞';

  @override
  String get order => '訂單';

  @override
  String get menu => '菜單';

  @override
  String get contact => '聯絡';

  @override
  String get notice => '通知';

  @override
  String benefit(String isPlural) {
    return '好處';
  }

  @override
  String benefits(num number) {
    return '好處';
  }

  @override
  String photos(num number) {
    return '照片';
  }

  @override
  String get about => '關於';

  @override
  String rating(String isPlural) {
    String _temp0 = intl.Intl.selectLogic(
      isPlural,
      {
        's': 'Ratings',
        'other': 'Rating',
      },
    );
    return '$_temp0';
  }

  @override
  String ratings(num number) {
    return '評分';
  }

  @override
  String get relatedNews => '相關新聞';

  @override
  String get suggestedBars => '建議的酒吧';

  @override
  String get distance => '距離';

  @override
  String get location => '地點';

  @override
  String get theme => '主題';

  @override
  String facility(String isPlural) {
    String _temp0 = intl.Intl.selectLogic(
      isPlural,
      {
        's': 'Facilities',
        'other': 'Facility',
      },
    );
    return '$_temp0';
  }

  @override
  String facilities(num number) {
    return '設施';
  }

  @override
  String get nearby => '附近';

  @override
  String get featured => '精選';

  @override
  String get pick => 'Pick';

  @override
  String get fridays => 'Friday\'s';

  @override
  String get daysLeft => 'Days Left';

  @override
  String get dayLeft => 'Day Left';

  @override
  String featuredOffer(String isPlural) {
    String _temp0 = intl.Intl.selectLogic(
      isPlural,
      {
        's': 'Featured Offers',
        'other': 'Featured Offer',
      },
    );
    return '$_temp0';
  }

  @override
  String featuredOffers(num number) {
    String _temp0 = intl.Intl.pluralLogic(
      number,
      locale: localeName,
      other: '$number featured offers',
      one: '1 featured offer',
      zero: 'No featured offers',
    );
    return '$_temp0';
  }

  @override
  String get restaurantInfo => 'Restaurant Info';

  @override
  String get buy => 'Buy';

  @override
  String get earn => 'Earn';

  @override
  String get pointsPerSeat => 'points per seat';

  @override
  String get global => 'Global';

  @override
  String get exclusive => 'Exclusive';

  @override
  String get login => 'Login';

  @override
  String get signUp => 'Sign Up';

  @override
  String get enterYourEmailToLoginForThisApp =>
      'Enter your email to login for this app';

  @override
  String get enterYourEmailToSignUpForThisApp =>
      'Enter your email to sign up for this app';

  @override
  String get email => 'Email';

  @override
  String get password => 'Password';

  @override
  String get forgotPassword => 'Forgot Password?';

  @override
  String get name => 'Name';

  @override
  String get confirmPassword => 'Confirm Password';

  @override
  String get alreadyHaveAnAccount => 'Already have an account?';

  @override
  String get newUser => 'New User?';

  @override
  String get createAccount => 'Create Account';

  @override
  String get byContinuingYouAgreeToOur => 'By continuing you agree to our';

  @override
  String get termsOfService => 'Terms of Service';

  @override
  String get and => 'and';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get passwordsDoNotMatch => 'Passwords do not match';

  @override
  String get passwordIsTooShort => 'Password is too short';

  @override
  String get emailIsInvalid => 'Email is invalid';

  @override
  String get emailIsRequired => 'Email is required';

  @override
  String get passwordIsRequired => 'Password is required';

  @override
  String get emailAlreadyInUse => 'Email is already in use';

  @override
  String get pleaseLoginToShowMoreFeatures =>
      'Please log in to access additional features';

  @override
  String follower(String isPlural) {
    String _temp0 = intl.Intl.selectLogic(
      isPlural,
      {
        's': 'Followers',
        'other': 'Follower',
      },
    );
    return '$_temp0';
  }

  @override
  String followers(num number) {
    String _temp0 = intl.Intl.pluralLogic(
      number,
      locale: localeName,
      other: '$number followers',
      one: '1 follower',
      zero: 'No followers',
    );
    return '$_temp0';
  }

  @override
  String get following => 'Following';

  @override
  String get edit => 'Edit';

  @override
  String get loading => 'Loading';

  @override
  String pointExpiredDate(Object date) {
    return 'Point Expired Date: $date';
  }

  @override
  String get viewSummary => 'View Summary';

  @override
  String earnPointsToRenewMembershipDesc(
      Object currentPoints, Object expirationDate, Object requiredPoints) {
    return 'Earn $currentPoints / $requiredPoints points by $expirationDate to renew your membership';
  }

  @override
  String membershipRemainingDays(Object date, num days, Object points) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days days',
      one: '1 day',
      zero: '0 day',
    );
    return '$_temp0 remaining in membership. Earn $points points by $date through using various services to extend membership.';
  }

  @override
  String get learnMore => 'Learn More';

  @override
  String get exclusiveBenefit => 'Exclusive Benefit';

  @override
  String get overview => 'Overview';

  @override
  String bookmark(String isPlural) {
    String _temp0 = intl.Intl.selectLogic(
      isPlural,
      {
        's': 'Bookmarks',
        'other': 'Bookmark',
      },
    );
    return '$_temp0';
  }

  @override
  String bookmarks(num number) {
    String _temp0 = intl.Intl.pluralLogic(
      number,
      locale: localeName,
      other: '$number bookmarks',
      one: '1 bookmark',
      zero: 'No bookmarks',
    );
    return '$_temp0';
  }

  @override
  String review(String isPlural) {
    String _temp0 = intl.Intl.selectLogic(
      isPlural,
      {
        's': 'Reviews',
        'other': 'Review',
      },
    );
    return '$_temp0';
  }

  @override
  String reviews(num number) {
    String _temp0 = intl.Intl.pluralLogic(
      number,
      locale: localeName,
      other: '$number reviews',
      one: '1 review',
      zero: 'No reviews',
    );
    return '$_temp0';
  }

  @override
  String photo(String isPlural) {
    String _temp0 = intl.Intl.selectLogic(
      isPlural,
      {
        's': 'Photos',
        'other': 'Photo',
      },
    );
    return '$_temp0';
  }

  @override
  String get theAboveReviewIsThePersonalOpinionOfAUserWhichDoesNotRepresentPOCsPointOfView =>
      '(The above review is the personal opinion of a user which does not represent POC’s point of view.)';

  @override
  String get dateOfVisit => 'Date of Visit';

  @override
  String get spendingPerHead => 'Spending per Head';

  @override
  String get taste => 'Taste';

  @override
  String get decor => 'Decor';

  @override
  String get service => 'Service';

  @override
  String get hygiene => 'Hygiene';

  @override
  String get value => 'Value';

  @override
  String get open => 'Open';

  @override
  String get closed => 'Closed';

  @override
  String get buyAndUseNow => 'Buy and use now';

  @override
  String get expiryDate => 'Expiry Date';

  @override
  String get description => 'Description';

  @override
  String get howToRedeem => 'How to Redeem';

  @override
  String get establishmentInfo => 'Establishment Info';

  @override
  String get publishedAReview => 'Published a review';

  @override
  String bookmarkedItems(num number) {
    String _temp0 = intl.Intl.pluralLogic(
      number,
      locale: localeName,
      other: 'Bookmarked $number items',
      one: 'Bookmarked $number item',
      zero: 'No bookmarked items',
    );
    return '$_temp0';
  }

  @override
  String get viewAll => 'View All';

  @override
  String get myExclusiveBenefit => 'My Exclusive Benefit';

  @override
  String get myVoucher => 'My Voucher';

  @override
  String get available => 'Available';

  @override
  String get redeemed => 'Redeemed';

  @override
  String get expired => 'Expired';

  @override
  String filters(String name) {
    String _temp0 = intl.Intl.selectLogic(
      name,
      {
        'distance': 'Distance',
        'location': 'Location',
        'theme': 'Theme',
        'facilities': 'Facilities',
        'other': 'Other',
      },
    );
    return '$_temp0';
  }

  @override
  String chatTypes(String type) {
    String _temp0 = intl.Intl.selectLogic(
      type,
      {
        'all': 'All',
        'primary': 'Primary',
        'general': 'General',
        'request': 'Request',
        'group': 'Group',
        'other': 'Other',
      },
    );
    return '$_temp0';
  }

  @override
  String result(num number) {
    String _temp0 = intl.Intl.pluralLogic(
      number,
      locale: localeName,
      other: '$number results',
      one: '1 result',
      zero: 'No results',
    );
    return '$_temp0';
  }

  @override
  String get newWord => 'New';

  @override
  String expiryOn(Object date) {
    return 'Expiry on $date';
  }

  @override
  String get viewDetails => 'View Details';

  @override
  String get redeemNow => 'Redeem Now';

  @override
  String get stored => 'Stored';

  @override
  String get transferred => 'Transferred';

  @override
  String get pending => 'Pending';

  @override
  String get storedLiqueurDetails => 'Stored Liqueur Details';

  @override
  String get showTheQRCodeToTheCashier => 'Show the QR code to the cashier';

  @override
  String get storedDate => 'Stored Date';

  @override
  String get transfer => 'Transfer';

  @override
  String get redeem => 'Redeem';

  @override
  String get whoWouldYouLikeToTransfer => 'Who would you like to transfer?';

  @override
  String get yourFollowing => 'Your Following';

  @override
  String get idNumber => 'ID Number';

  @override
  String get cancel => 'Cancel';

  @override
  String get next => 'Next';

  @override
  String get confirm => 'Confirm';

  @override
  String get sendRequest => 'Send Request';

  @override
  String get back => 'Back';

  @override
  String get confirmation => 'Confirmation';

  @override
  String get to => 'To';

  @override
  String get liqueurName => 'Liqueur Name';

  @override
  String get amount => 'Amount';

  @override
  String get online => 'Online';

  @override
  String get chat => 'Chat';

  @override
  String get recent => 'Recent';

  @override
  String get clear => 'Clear';

  @override
  String get follow => 'Follow';

  @override
  String get empty => '空';
}
