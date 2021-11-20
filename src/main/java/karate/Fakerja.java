package karate;

import com.github.javafaker.Faker;

public class Fakerja {

    static Faker fake = new Faker();


    public static void main(String[] args) {
        String fakeName = fake.name().fullName();
        String fakePhone = fake.color().name();
        String fakeAdress = fake.address().fullAddress();
        String fakeData = fake.internet().url();
        String fake1 = fake.university().name();
        String fake2 = fake.internet().image();
        String fake3 = fake.animal().name();
        String fake4 = fake.app().name();
        String fake5 = fake.book().title();
        String fake6 = fake.date().birthday(18, 58).toString();
        String fake7 = fake.internet().password(3,45);


        System.out.println(fakeName);
        System.out.println(fakePhone);
        System.out.println(fakeAdress);
        System.out.println(fakeData);
        System.out.println(fake1);
        System.out.println(fake2);
        System.out.println(fake3);
        System.out.println(fake4);
        System.out.println(fake5);
        System.out.println(fake6);
        System.out.println(fake7);
    }
}
