Feature: Working with the global coordinates

    This Feature will make sure the coordinates received are being handled
    properly.

    Scenario: Valid Geocode
        Given the user informed a latitude and longitude
        When the program receives the two values
        Then it should return the list of hospitals inside those coordinates

    Scenario: Rounding the coordinates
        Given the user has coordinate values with a great number of decimal places
        When the program receives these values
        Then the values should be rounded-up from the second decimal place