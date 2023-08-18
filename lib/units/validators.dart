class Validators {
  static final RegExp _emailRegExp = RegExp(
    r'\S+@\S+\.\S+',
  );

  static String? firstNameValidator(String? name) {
    if (name!.isEmpty) {
      return 'Enter first name';
    }
    return null;
  }

  static String? lastNameValidator(String? name) {
    if (name!.isEmpty) {
      return 'Enter last name';
    }
    return null;
  }

  static String? oldPassValidator(String? oldPass) {
    if (oldPass!.isEmpty) {
      return 'Enter old password';
    }
    return null;
  }

  static String? newPassValidator(String? newPass) {
    if (newPass!.isEmpty) {
      return 'Enter new password';
    }
    return null;
  }

  static String? addressValidator(String? name) {
    if (name!.isEmpty) {
      return 'Enter address';
    }
    return null;
  }

  static String? dobValidator(String? dob) {
    if (dob!.isEmpty) {
      return 'Enter date of birth';
    }
    return null;
  }

  static String? titleValidator(String? name) {
    if (name!.isEmpty) {
      return 'Title cannot be blank';
    }
    return null;
  }

  static String? otpValidator(String? otp) {
    if (otp!.isEmpty) {
      return 'Enter OTP';
    } else if (otp.length != 4) {
      return 'Pin is incorrect';
    }
    return null;
  }

  static String? emailValidator(String? email) {
    if (email!.isEmpty) {
      return 'Enter email';
    } else if (!_emailRegExp.hasMatch(email)) {
      return 'Invalid email. Please try again';
    }
    return null;
  }

  static String? descValidator(String? description) {
    // Indian Mobile number are of 10 digit only

    if (description!.isEmpty) {
      return 'Please enter a caption';
    }
    if (description.isNotEmpty) {
      List l = description.split(" ");
      print("jkgdkjgdk" + l.length.toString());
      if (l.length >= 49) {
        return 'Caption must be < 50 words';
      }
      return null;
    }

    return null;
  }

  static String? profilebio(String? bio) {
    // Indian Mobile number are of 10 digit only
    if (bio!.isEmpty) {
      return 'Enter mini bio';
    }
    if (bio!.isNotEmpty) {
      List l = bio.split(" ");
      if (l.length >= 30) {
        return 'Bio must be < 30 words.';
      }
      return null;
    }

    return null;
  }

  static String? phoneValidator(String? phone) {
    // Indian Mobile number are of 10 digit only
    if (phone!.isEmpty) {
      return 'Enter mobile number';
    } else if (phone.length <= 10 && phone.length >= 12) {
      return 'Number is not valid';
    }
    return null;
  }

  static String? passwordValidator(String? password) {
    if (password!.isEmpty) {
      return 'Enter password';
    } else if (password.length < 8) {
      return 'Password too short';
    }
    return null;
  }

  static String? cnfPasswordValidator(String? password) {
    if (password!.isEmpty) {
      return 'Enter confirm password';
    }
    return null;
  }

  static String? pincodeValidation(String? pincode) {
    if (pincode!.isEmpty) {
      return 'Enter pincode';
    }
    return null;
  }

  static String? accNumberValidation(String? pincode) {
    if (pincode!.isEmpty) {
      return 'Enter account number';
    }
    return null;
  }

  static String? ifcsValidation(String? pincode) {
    if (pincode!.isEmpty) {
      return 'Enter IFSC code';
    }
    return null;
  }

  static String? bankNameValidation(String? pincode) {
    if (pincode!.isEmpty) {
      return 'Enter bank name';
    }
    return null;
  }

  static String? panCardValidation(String? pincode) {
    if (pincode!.isEmpty) {
      return 'Enter pan card';
    }
    return null;
  }

  //Driver Details

  static String? licensePlate(String? name) {
    if (name!.isEmpty) {
      return 'Enter license plate number';
    }
    return null;
  }

  static String? vehicleBrand(String? name) {
    if (name!.isEmpty) {
      return 'Enter vehicle Brand';
    }
    return null;
  }

  static String? vehicleColor(String? name) {
    if (name!.isEmpty) {
      return 'Enter vehicle color';
    }
    return null;
  }

  static String? vehicleModel(String? name) {
    if (name!.isEmpty) {
      return 'Enter vehicle model';
    }
    return null;
  }

  static String? carMade(String? name) {
    if (name!.isEmpty) {
      return 'Enter car made';
    }
    return null;
  }

  static String? kindOfVehicle(String? name) {
    if (name!.isEmpty) {
      return 'Enter kind of vehicle';
    }
    return null;
  }

  static String? notEmpty(String? name) {
    if (name!.isEmpty) {
      return '''Field can't be empty''';
    }
    return null;
  }
}
