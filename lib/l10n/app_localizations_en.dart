// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'POC';

  @override
  String get home => 'Home';

  @override
  String get explore => 'Explore';

  @override
  String get search => 'Search';

  @override
  String get message => 'Message';

  @override
  String get profile => 'Profile';

  @override
  String get setting => 'Setting';

  @override
  String get logout => 'Logout';

  @override
  String booking(String isPlural) {
    String _temp0 = intl.Intl.selectLogic(
      isPlural,
      {
        's': 'Bookings',
        'other': 'Booking',
      },
    );
    return '$_temp0';
  }

  @override
  String bookings(num number) {
    String _temp0 = intl.Intl.pluralLogic(
      number,
      locale: localeName,
      other: '$number bookings',
      one: '1 booking',
      zero: 'No bookings',
    );
    return '$_temp0';
  }

  @override
  String get showAllReservations => 'Show all reservations.';

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
    String _temp0 = intl.Intl.pluralLogic(
      number,
      locale: localeName,
      other: '$number stored liqueurs',
      one: '1 stored liqueur',
      zero: 'No stored liqueurs',
    );
    return '$_temp0';
  }

  @override
  String get recordAndShowDetailsOfYourStoredLiqueurs =>
      'Record and show details of your stored liqueurs.';

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
    String _temp0 = intl.Intl.pluralLogic(
      number,
      locale: localeName,
      other: '$number vouchers',
      one: '1 voucher',
      zero: 'No vouchers',
    );
    return '$_temp0';
  }

  @override
  String get voucherDetails => 'Voucher Details';

  @override
  String get showAllVouchers => 'Show all vouchers.';

  @override
  String get browsingHistory => 'Browsing History';

  @override
  String get orderHistory => 'Order History';

  @override
  String get privacySetting => 'Privacy Setting';

  @override
  String get needHelp => 'Need Help?';

  @override
  String get aboutUs => 'About Us';

  @override
  String get whereIsMyVouchers => 'Where is my vouchers?';

  @override
  String get qrCodeScanner => 'QR Code Scanner';

  @override
  String get scan => 'Scan';

  @override
  String get show => 'Show';

  @override
  String get notification => 'Notification';

  @override
  String get personal => 'Personal';

  @override
  String get news => 'News';

  @override
  String get order => 'Order';

  @override
  String get menu => 'Menu';

  @override
  String get contact => 'Contact';

  @override
  String get notice => 'Notice';

  @override
  String benefit(String isPlural) {
    String _temp0 = intl.Intl.selectLogic(
      isPlural,
      {
        's': 'Benefits',
        'other': 'Benefit',
      },
    );
    return '$_temp0';
  }

  @override
  String benefits(num number) {
    String _temp0 = intl.Intl.pluralLogic(
      number,
      locale: localeName,
      other: '$number benefits',
      one: '1 benefit',
      zero: 'No benefits',
    );
    return '$_temp0';
  }

  @override
  String photos(num number) {
    String _temp0 = intl.Intl.pluralLogic(
      number,
      locale: localeName,
      other: '$number photos',
      one: '1 photo',
      zero: 'No photos',
    );
    return '$_temp0';
  }

  @override
  String get about => 'About';

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
    String _temp0 = intl.Intl.pluralLogic(
      number,
      locale: localeName,
      other: '$number ratings',
      one: '1 rating',
      zero: 'No ratings',
    );
    return '$_temp0';
  }

  @override
  String get relatedNews => 'Related News';

  @override
  String get suggestedBars => 'Suggested Bars';

  @override
  String get distance => 'Distance';

  @override
  String get location => 'Location';

  @override
  String get theme => 'Theme';

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
    String _temp0 = intl.Intl.pluralLogic(
      number,
      locale: localeName,
      other: '$number facilities',
      one: '1 facility',
      zero: 'No facilities',
    );
    return '$_temp0';
  }

  @override
  String get nearby => 'Nearby';

  @override
  String get featured => 'Featured';

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
  String get empty => 'empty';
}
