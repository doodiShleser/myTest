using GoogleMapsApi;
using GoogleMapsApi.Entities.Directions.Request;
using GoogleMapsApi.Entities.Directions.Response;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BL
{
    public enum TravelType
    {
        Walking,
        Driving
    }

    static public class GoogleApiFunc
    {


        //public static List<string> GetPlaceAutoComplete(string str)
        //{
        //    List<string> result = new List<string>();
        //    GoogleMapsApi.Entities.PlaceAutocomplete.Request.PlaceAutocompleteRequest request = new GoogleMapsApi.Entities.PlaceAutocomplete.Request.PlaceAutocompleteRequest();
        //    request.ApiKey = "";
        //    request.Input = str;

        //    var response = GoogleMaps.PlaceAutocomplete.Query(request);

        //    foreach (var item in response.Results)
        //    {
        //        result.Add(item.Description);
        //    }

        //    return result;
        //}

        public static double CalcDistance(string source, string dest, TravelType travelType)
        {
            Leg leg = null;
            try
            {
                var drivingDirectionRequest = new DirectionsRequest
                {
                    TravelMode = travelType == TravelType.Walking ? TravelMode.Walking : TravelMode.Driving,
                    Origin = source,
                    Destination = dest,
                };

                DirectionsResponse drivingDirections = GoogleMaps.Directions.Query(drivingDirectionRequest);
                Route route = drivingDirections.Routes.First();
                leg = route.Legs.First();
                return leg.Distance.Value;
            }
            catch (Exception)
            {
                return -1;
            }
        }

        public static TimeSpan CalcDuration(string source, string dest, TravelType travelType)
        {
            Leg leg = null;
            try
            {
                var drivingDirectionRequest = new DirectionsRequest
                {
                    TravelMode = travelType == TravelType.Walking ? TravelMode.Walking : TravelMode.Driving,
                    Origin = source,
                    Destination = dest,
                };

                DirectionsResponse drivingDirections = GoogleMaps.Directions.Query(drivingDirectionRequest);
                Route route = drivingDirections.Routes.First();
                leg = route.Legs.First();
                return leg.Duration.Value;
            }
            catch (Exception)
            {
                return default(TimeSpan);
            }
        }


    }
}

