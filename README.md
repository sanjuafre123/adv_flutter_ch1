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

</div>


 <h1 align="center">  1.4 Provider & Change Theme using Provider </h1>

<div align="center">
  <img src="https://github.com/sanjuafre123/adv_flutter_ch1/assets/148860124/86bed0e7-f34d-498c-9b77-31c7ad179b50" height ="550">
  <img src="https://github.com/sanjuafre123/adv_flutter_ch1/assets/148860124/4f4d5f66-0be0-4a96-abbd-0a2d03f8326b" height ="550">

https://github.com/sanjuafre123/adv_flutter_ch1/assets/148860124/f7784e85-ec83-4249-bfe5-9d23ba10d27c

</div>


