Feature: Working with the global coordinates 

   This Feature will make sure the coordinates received are being handled
   properly.

    Scenario: Valid Geocode
        Given the user informed a latitude and longitude
        When the program receives the two values
        Then it should return the list of hospitals inside those coordinates
