import ballerina.net.http;

//Consumes and Produces annotations contain MIME types as an array of
// strings
service<http> infoService {

    @http:resourceConfig {
        methods:["POST"],
        path:"/",
        consumes:["text/json", "application/json"],
        produces:["application/xml"]
    }
    //Resource can consume/accept text/json and application/json media
    //types only.
    //Therefore Content-Type header must have one of the types.
    //Resource can produce application/xml payloads. So accept header
    //should be set accordingly.
    resource student (http:Request req, http:Response res) {
        //Get JSON payload from the request message.
        json jsonMsg = req.getJsonPayload();
        //Get the string value relevant to the key "name".
        string nameString;
        nameString, _ = (string)jsonMsg["name"];
        //Create XML payload and respond back.
        string payload = "<name>" + nameString + "</name>";
        var name, _ = <xml>payload;
        res.setXmlPayload(name);
        _ = res.send();
    }
}