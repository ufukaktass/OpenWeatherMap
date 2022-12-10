public class WeatherConditionWrapper {
    public coordWrapper coord {get;set;}
    public List<weatherWrapper> weather {get;set;}
    public mainWrapper main {get; set;}
    public windWrapper wind {get;set;}
    public Map<String, Double> rain {get;set;}
    public cloudsWrapper clouds {get;set;}
    public sysWrapper sys {get;set;}
    public class coordWrapper {
        public Double lon {get;set;}
        public Double lat {get; set;}
    }

    public class weatherWrapper{
        public Integer id {get;set;}
        public String main {get;set;}
        public String description {get;set;}
        public String icon {get;set;}
    }
    public String base {get;set;}
    public class mainWrapper{
        public Double temp {get;set;}
        public Double feels_like {get;set;}
        public Double temp_min {get;set;}
        public Double temp_max {get;set;}
        public Double pressure {get;set;}
        public Double humidity {get;set;}
        public Double sea_level {get;set;}
        public Double grnd_level {get;set;}
    }
    public Integer visibility {get;set;}
    public class windWrapper{
        public Double speed {get;set;}
        public Integer deg {get;set;}
        public Double gust {get;set;}
    }

    public class cloudsWrapper{
        public Integer all {get;set;}
    }
    public Integer dt {get;set;}
    public class sysWrapper{
        public Integer type {get;set;}
        public Integer id {get;set;}
        public String country {get;set;}
        public Integer sunrise {get;set;}
        public Integer sunset {get;set;}
    }
    public Integer timezone {get;set;}
    public Integer id {get;set;}
    public String name {get;set;}
    public Integer cod {get;set;}

}
