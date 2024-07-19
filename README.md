
# 1.1 Switch Dark Theme to Light Theme

<div align="center">
  
<img src="https://github.com/sanjuafre123/adv_flutter_ch1/assets/148860124/92dab365-af06-44ef-bf33-bceaafe154dc" height ="550">
<img src="https://github.com/sanjuafre123/adv_flutter_ch1/assets/148860124/210e14f6-6f95-43e2-b3db-85785c09dbc7" height ="550">
<br><br>

</div>

# Example

```bash
theme: ThemeData.light(),
darkTheme: ThemeData.dark(),
themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
```
<br><br>

# 1.2 Create Registration Page using Stepper Widget

<div align="center">
  
<img src="https://github.com/sanjuafre123/adv_flutter_ch1/assets/148860124/1df742cc-c10b-4f6f-8305-91dc8ae31132" height ="550">
<img src="https://github.com/sanjuafre123/adv_flutter_ch1/assets/148860124/96d5713c-7219-47e9-bd22-1ffe964031df" height ="550">
<br><br>

</div>

## Description

Flutter Stepper widget! This widget provides a smooth, guided experience for multi-step forms, allowing users to navigate through each step with ease. Perfect for any app requiring structured data input, the Stepper widget enhances user experience with its intuitive design and seamless functionality.


 <h1 align="center">  1. Information of Provider With State Management </h1>

# ⚫ State Management :

- ```State management in Flutter is crucial for building responsive and dynamic applications.```

## ⚫ State :

- ```A state is information that can be read when the widget is built and might change or modified over a lifetime of the app.```

## ⚫ SetState :

- ```Rebuild the our stateful or stateless widget build method.```

# ⚫ Provider State Management :

- ```Provider is a powerful state management solution in Flutter, offering a simple way to manage and share state across your application.```

## ⚫ Provider package :

```
dependencies:

  flutter:
    sdk: flutter
  provider: ^6.0.0  # Check for the latest version

```

# ⚫ ChangeNotifier Class :

- ```ChangeNotifier is a simple class, which provides change notification to its listeners.```
  
- It is easy to understand, implement, and optimized for a small number of listeners.
- It is used for the listener to observe a model for changes.
- In this, we only use the notifyListener() method to inform the listeners.

## ⚫ ChangeNotifierProvider Widget :

- ```ChangeNotifierProvider is the widget that provides an instance of a ChangeNotifier to its descendants. It comes from the provider package.```
- The following code snippets help to understand the concept of ChangeNotifierProvider.

## ⚫ Consumer Widget :

- ```It is a type of provider that does not do any fancy work.```
- It just calls the provider in a new widget and delegates its build implementation to the builder.


## ⚫ Provider Tree :

<div align="center">
  <img height="550"  src="https://github.com/sanjuafre123/adv_flutter_ch1/assets/148860124/5dd9c104-239c-49ae-9af2-7b0753d3dbeb">
</div>

 <h1 align="center">  1.4 Provider & Change Theme using Provider </h1>

<div align="center">
  <img src="https://github.com/sanjuafre123/adv_flutter_ch1/assets/148860124/ffa27e41-bcc0-4eb9-88e8-508995b3519c" height ="550">
  <img src="https://github.com/sanjuafre123/adv_flutter_ch1/assets/148860124/c5e849a4-5291-42fc-b043-547ff58aef87" height ="550">

https://github.com/sanjuafre123/adv_flutter_ch1/assets/148860124/d22169ce-9da4-412a-aad9-c51e780eb2ce

## Description :

Explore our latest Flutter project featuring dynamic light and dark themes using the Provider package! This setup allows users to switch seamlessly between themes, enhancing accessibility and user preference. Provider ensures efficient state management, making theme changes smooth and responsive. Perfect for modern apps prioritizing user experience and customization.


</div>

 <h1 align="center">  1.5.1 Quotes Data Solving with Provider </h1>

<div align="center">
  <img src="https://github.com/sanjuafre123/adv_flutter_ch1/assets/148860124/86bed0e7-f34d-498c-9b77-31c7ad179b50" height ="550">
  <img src="https://github.com/sanjuafre123/adv_flutter_ch1/assets/148860124/4f4d5f66-0be0-4a96-abbd-0a2d03f8326b" height ="550">

https://github.com/sanjuafre123/adv_flutter_ch1/assets/148860124/f7784e85-ec83-4249-bfe5-9d23ba10d27c

</div>



</div>


 <h1 align="center">  1.5.2 One Time Intro Screen in Flutter  </h1>

<div align="center">
  <img src="https://github.com/user-attachments/assets/f85e2df7-8299-46fc-80c3-849cc5e6d44d" height ="550">
  <img src="https://github.com/user-attachments/assets/a82f0a1a-8ff7-4e91-a638-c50ffc464f75" height ="550">
  <img src="https://github.com/user-attachments/assets/74ac8389-2842-4dd3-8195-20f1e8afd9af" height ="550">
  <img src="https://github.com/user-attachments/assets/9e640a12-0750-49c5-bcc0-83c2e61f5e10" height ="550">


https://github.com/user-attachments/assets/1b364c13-3acc-446a-89b3-5e50f0f907c2

</div>
## Description:

A one-time intro screen implemented with SharedPreferences in Flutter ensures that users only see the introductory content the first time they open the app. SharedPreferences is used to store a flag indicating whether the intro has been shown. Upon subsequent app launches, the app checks this flag and bypasses the intro if it has already been viewed, providing a smoother user experience by taking users directly to the main content.

 <h1 align="center">  1.6 Contact Us Page With Interaction </h1>

<div align="center">
  <img src="https://github.com/user-attachments/assets/f306b1e8-7b1f-472c-b771-0e3d1471d971" height ="550">
  
https://github.com/user-attachments/assets/ef3e99d6-8c70-4599-b99e-1a6c5ccf9c74

</div>
- url_launcher Package :
 
In Flutter, url_launcher is a package that allows your app to open URLs in a browser or other apps.
- Open Web Links: It can open web pages in the default browser.
- Make Phone Calls: It can dial a phone number using the phone app.
- Send Emails: It can open the email app with a pre-filled email.
- Send SMS: It can open the messaging app to send a text message.

</div>
 <h1 align="center">  1.7 Photo Gallery With Biometric Authentication </h1>

<div align="center">
  <img src="https://github.com/user-attachments/assets/58e1a7b0-5544-4ad3-b202-812e23d188da" height ="550">
   <img src="https://github.com/user-attachments/assets/c31d4077-e682-432a-b8e1-d3bc39088fec" height ="550">

https://github.com/user-attachments/assets/6e8b4a6c-9dcc-465d-8bb7-98af1dd74405

</div>

## Example :

 ```bash

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class GalleryProvider extends ChangeNotifier {
  final localAuth = LocalAuthentication();
  bool didAuthenticate = false;

  Future<void> authication() async {
    List<BiometricType> availableBiometrics;
    try {
      availableBiometrics = await localAuth.getAvailableBiometrics();
    } on PlatformException catch (e) {
      'device not supported';
    }
    try {
      didAuthenticate = await localAuth.authenticate(
        localizedReason: 'Please authenticate to access secure data',
      );
      didAuthenticate = didAuthenticate;
      notifyListeners();
    } on PlatformException catch (e) {
      print(e);
    }
  }
}

 ```


