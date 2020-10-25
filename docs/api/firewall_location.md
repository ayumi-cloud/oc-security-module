## Firewall Location API

Summer CMS records the following location data in the firewall.

Value | Description
---|---
cityName | A string containing details about the city associated with the IP address.
continentName | A string containing information about the continent associated with the IP address.
countryIsInEuropeanUnion | A boolean this is **true** if the country is a member state of the European Union. Otherwise, it returns a **false** value.
countryName | A string containing details about the country where MaxMind believes the end user is located.
locationAccuracyRadius | An integer containing the approximate accuracy radius, in kilometers, around the latitude and longitude for the geographical entity (country, subdivision, city or postal code) associated with the IP address. We have a 67% confidence that the location of the end-user falls within the area defined by the accuracy radius and the latitude and longitude coordinates.
locationLatitude | A decimal containing the approximate latitude of the postal code, city, subdivision or country associated with the IP address.
locationLongitude | A decimal containing the approximate longitude of the postal code, city, subdivision or country associated with the IP address.
locationMetroCode | An integer containing the metro code associated with the IP address. These are only available for IP addresses in the US.
locationTimeZone | A string containing the time zone associated with location, as specified by the [IANA Time Zone Database](https://www.iana.org/time-zones), e.g., 'America/New_York'.
postalCode | A string containing details about the postal code associated with the IP address.
autonomousSystemNumber | A string containing the [autonomous system number](https://en.wikipedia.org/wiki/Autonomous_system_(Internet)) associated with the IP address.
autonomousSystemOrganization | A string containing the organization associated with the registered [autonomous system number](https://en.wikipedia.org/wiki/Autonomous_system_(Internet)) for the IP address.
