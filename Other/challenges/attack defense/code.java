class Foo {
  static int i = 123;
  static char[] msg = {'h', 'i', ' ', 'w', 'o', 'r', 'l', 'd'};

  static native void print(int x);
  static native void print(char[] x);

  static int add(int a, int b) {
    return a + b;
  }

  static void main(String[] args) {
    print(msg);
  }
}