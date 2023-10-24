package DataGenerator;

public class EmailGenerator {

    public static String getEmail(){
        String name ="";

        String[] firstName = {"Farzana", "Shadab", "Farahnaz", "Bob", "Sarah"};
        String[] lastNAme = {"Afzali", "HAshimi", "Isaac", "Madray", "Ali"};

        for (int x= 0; x < firstName.length; x++){
            int index = (int) (Math.random() * firstName.length);
            int num = (int) (Math.random() * lastNAme.length);
                    name = firstName[index] + lastNAme[num];
        }
        int randomNum = (int) (Math.random()*321);
        return name + randomNum + "@gmail.com";
    }
}
