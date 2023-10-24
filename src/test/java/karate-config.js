function fn() {
    var env = karate.env;
    karate.log("karate.env system property was: " , env);

    var config = {
    // default BASE_URL, if it is not set the default URL will be below one:
        BASE_URL: "https://qa.insurance-api.tekschool-students.com"
    }

    if (env === 'dev') {
        config.BASE_URL = "https://dev.insurance-api.tekschool-students.com";
    }

    if (env === 'qa') {
        config.BASE_URL = "https://qa.insurance-api.tekschool-students.com";
    }
    karate.log("karate config: " , config);
    return config;
}