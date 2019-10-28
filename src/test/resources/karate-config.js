function () {
    var env = karate.env; // get java system property 'karate.env'
    karate.log('karate.env system property is:', env);
    karate.configure('headers', { username: 'sample-user@test.com'});
    var config = {
        baseServiceUrl: "http://localhost:8080",
    }
    return config;
};