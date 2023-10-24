package Runner;

import com.intuit.karate.junit5.Karate;
public class TestRunner {
    @Karate.Test
    Karate run(){
        return Karate.run("src/test/java/lab_Session")
                .outputCucumberJson(true);
    }
}
