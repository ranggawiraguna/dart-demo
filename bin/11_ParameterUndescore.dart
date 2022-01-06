// ignore_for_file: file_names

void main(List<String> args) {
  // Definition function with name required (parameter store at memory)
  sayWelcome((name) {
    print("Hello, Welcome Back " + name);
  }, "Rangga");

  // Definition function with underscore (parameter not stored at memory)
  sayWelcome((_) {
    print("Hello, Welcome Back ");
  });
}

// Initialize function with required parameter name
void sayWelcome(Function(String name) generateWelcome, [String name = ""]) {
  generateWelcome(name);
}
