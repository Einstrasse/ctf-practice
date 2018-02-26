package pk01;

public class Main {

	static {
		try {
			System.load("/home/bobgil/Desktop/bobctf/cute-cat/lib/x86_64/libnative-lib.so");
			// System.loadLibrary("native-lib");
		} catch (UnsatisfiedLinkError e) {
			System.err.println("Native code library failed to load.\n" + e);
			// System.err.println("Java libpath:" + System.getProperty("java.library.path"));
			System.exit(1);
		}
	}
	public static void main(String[] args) {
		System.out.println("Hello world");
	}
}