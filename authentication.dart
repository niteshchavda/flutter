class AuthMethod {
  // Dummy constructor to replace Firebase instances
  AuthMethod();

  // SignUp User
  Future<String> signupUser({
    required String email,
    required String password,
    required String name,
  }) async {
    String res = "Some error occurred";
    try {
      if (email.isNotEmpty || password.isNotEmpty || name.isNotEmpty) {
        // Placeholder for registering user (replace with actual logic)
        print("User registered with email: $email, name: $name");

        res = "success";
      } else {
        res = "Please fill in all fields";
      }
    } catch (err) {
      return err.toString();
    }
    return res;
  }

  // LogIn User
  Future<String> loginUser({
    required String email,
    required String password,
  }) async {
    String res = "Some error occurred";
    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        // Placeholder for logging in user (replace with actual logic)
        print("User logged in with email: $email");

        res = "success";
      } else {
        res = "Please enter all the fields";
      }
    } catch (err) {
      return err.toString();
    }
    return res;
  }

  // Sign out
  Future<void> signOut() async {
    // Placeholder for sign out logic (replace with actual logic)
    print("User signed out");
  }
}
