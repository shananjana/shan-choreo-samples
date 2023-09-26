import ballerina/http;

type Greeting record {
    string 'from;
    string to;
    string message;
};

service / on new http:Listener(8090) {
    resource function get .(string name) returns Greeting {
        Greeting greetingMessage = {"from" : "Shan", "to" : name, "message" : "Welcome to Choreo's Own Kingdom!"};
        return greetingMessage;
    }
}
