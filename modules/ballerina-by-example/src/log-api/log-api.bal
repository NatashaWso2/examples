import ballerina.log;

function main(string[] args) {
    error err = {msg: "error occurred"};

    //The Ballerina log API provides functions to log at 5 levels:
    //DEBUG, ERROR, INFO, TRACE and WARN.
    //By default, all log messages are logged to the console at the INFO
    //level. In addition to these log levels, there are 2 additionals levels:
    //OFF and ALL. OFF turns off logging and ALL allows all log levels.
    //Log level can be configured through a Ballerina config file or CLI
    //parameters
    log:printDebug("debug log");
    log:printError("error log");
    log:printErrorCause("error log with cause", err);
    log:printInfo("info log");
    log:printTrace("trace log");
    log:printWarn("warn log");

    //To set the log level of the API use the CLI parameter:
    //-B[ballerina.log].level=[LOG_LEVEL]

    //To configure using a config file, place the entry given below in
    //the file: [ballerina.log]
    //level=[LOG_LEVEL]
}