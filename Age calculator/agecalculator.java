import java.util.*;
import java.time.*;

public class Agecalculator 
{
    public static void main(String args[])
    {
        Scanner sc = new Scanner(System.in);
        LocalDate cd = LocalDate.now();

        System.out.print("Enter year, month, day:");
        int y = sc.nextInt();
        int m = sc.nextInt();
        int d = sc.nextInt();

        LocalDate bd = LocalDate.of(y, m, d);
        int age = Period.between(bd, cd).getYears();
        System.out.println("Age:"+age);
    }

}
