import java.util.Random;

public class Main {
    public static void main2(String[] args) {
        long multiplier = 0x5DEECE66DL;
        long addend = 0xBL;
        long mask = (1L << 48) - 1;

        Random random = new Random();
        long v1 = Integer.toUnsignedLong(random.nextInt());
        long v2 = Integer.toUnsignedLong(random.nextInt());

        

        long seed = 0;
        for (int i = 0; i < 65536; i++) {
            seed = (v1 << 16) | i;
            if ((((seed * multiplier + addend) & mask) >>> 16) == v2) {
                break;
            }
        }

        System.out.println("Seed found: " + seed);
        System.out.println("rand: " + random.nextInt());
        seed = (seed * multiplier + addend) & mask;
        System.out.println("predict: " + (int)(((seed * multiplier + addend) & mask) >>> 16));
    }

    public static void main(String[] args) {
        long multiplier = 0x5DEECE66DL;
        long addend = 0xBL;
        long mask = (1L << 48) - 1;

        Random random = new Random();

        byte[] oneByte = new byte[1];
        random.nextBytes(oneByte);
        long v1 = oneByte[0];

        oneByte = new byte[1];
        random.nextBytes(oneByte);
        long v2 = oneByte[0];        

        long seed = 0;
        for (int i = 0; i < 65536; i++) {
            seed = (v1 << 16) | i;
            if ((((seed * multiplier + addend) & mask) >>> 16) == v2) {
                break;
            }
        }

        System.out.println("Seed found: " + seed);
        System.out.println("rand: " + random.nextInt());
        seed = (seed * multiplier + addend) & mask;
        System.out.println("predict: " + (int)(((seed * multiplier + addend) & mask) >>> 16));
    }
}