Http http = new Http();
HttpRequest request = new HttpRequest();

request.setEndpoint();
request.setMethod();
HttpResponse response = hrttp.send(request);

if (response.getStatusCode() == 200) {
    YouTubeApiClass result = YouTubeApiClass.parse(response.getBody()); 
    // This parse class uses the deserialize method in JSON class to deserielize the json into the YouTubeApiClass
    for(YouTubeApiClass.Items itm: result.items) {
        System.debug(itm.statistics)
    }
}

// If we are not using the APEX class like YouTubeApiClass we can use this approach
if (response.getStatusCode() == 200) {
    Map<String, Object> results = (map<String, Object>) JSON.deserializationUntyped(response.getBody());

    List<Object items = (List<Object>) results.get('items');

    for(Object item:items) {
        Map<String, Object> childItems = (Map<String, Object>)item;
        System.debug(childItems.get('statistics'))
    }
}