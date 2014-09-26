import java.lang.reflect.Field;

public class Obfuscated_Health {
    public static void main(String[] args) throws NoSuchFieldException, SecurityException, IllegalArgumentException,
            IllegalAccessException {
        Field c = Character.class.getDeclaredClasses()[0].getDeclaredField("cache");
        c.setAccessible(true);
        processArray((Character[]) c.get(Character.class.getDeclaredClasses()[0]));
        for (char ch : "cyb4ycc84yb0ucvmwu".toCharArray())
            System.out.printf("%c", ch);
    }

    private static void processArray(Character[] array) {
        int i = 117, counter = 1;
        while (i < 120)
            array[i++] = (char) (13 * Math.pow(i - 1, 2) + -3062 * (i - 1) + 180401);
        array[++i] = array[110];
        i = 98;
        while (i <= 109) {
            array[i] = (char) Math.ceil((13402.0 / 5.0 - (5539.0 * i) / 110.0 + (27.0 * i * i) / 110.0));
            i += counter;
            counter += 9;
        }
        i = 48;
        while (i <= 56) {
            array[i] = (char) (-2 * i * i + (873.0 * i) / 4.0 - 5836);
            i += 4;
        }
    }
}