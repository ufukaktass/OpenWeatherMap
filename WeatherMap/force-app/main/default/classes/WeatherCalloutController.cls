public class WeatherCalloutController {
    public WeatherConditionWrapper weatherWrapper {get;set;}
    //public Apexpages.StandardController stdController {get;set;}
    public String city {get;set;}
    public String country {get;set;} 
    //public static String imageName {get;set;}
    public Object iconName {get;set;}
    public String iconUrl {get;set;}
    

    public WeatherCalloutController(ApexPages.StandardController controller){
        city = [SELECT BillingCity FROM Account WHERE Id = :Apexpages.CurrentPage().getParameters().get('id')].BillingCity;
        country = [SELECT BillingCountry FROM Account WHERE Id=:Apexpages.CurrentPage().getParameters().get('id')].BillingCountry;
        //weatherWrapper = new WeatherConditionWrapper();
        getCityWeatherWrapper();
    }
    public WeatherConditionWrapper getCityWeatherWrapper(){
        Http http = new Http();
        HttpResponse response;
        HttpRequest request = new HttpRequest();

        request.setEndPoint('https://api.openweathermap.org/data/2.5/weather?q='+city+','+country+'&appid=c5b1a557e4da7611d3e675c5e3208b35');
        request.setHeader('Content-type','application/json');
        request.setMethod('GET');
        response = http.send(request);

        if(response.getStatusCode() == 200 && response.getBody() != null){
            weatherWrapper =(WeatherConditionWrapper)JSON.deserialize(response.getBody(),WeatherConditionWrapper.class);
            iconName = weatherWrapper.weather[0].icon;
            iconUrl = 'http://openweathermap.org/img/wn/'+iconName+'@2x.png';
        }

        System.debug('Result : '+response.getStatusCode());
        return weatherWrapper;
        
    }

}
