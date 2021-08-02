class User{
  final String uid;
  User({required this.uid});
}

class UserData {
  final String uid;
  final String firstName;
  final String lastName;
  final String userLocation;
  final String email;
  final String age;

  UserData(
  {
    required this.uid,
    required this.firstName,
    required this.lastName,
    required this.userLocation,
    required this.email,
    required this.age});
}