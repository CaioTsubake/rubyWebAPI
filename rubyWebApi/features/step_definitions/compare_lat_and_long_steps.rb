require_relative "../../app/controllers/geocoordinates_handler"

include GeocoordinatesHandler

Given("the user informed a latitude and longitude") do
  @latitude = -23.604936
  @longitude = -46.692999
end

When("the program receives the two values") do
  @result = find_hospitals(@latitude, @longitude)
end

Then("it should return the list of hospitals inside those coordinates") do
  @expected_result = [{
    id: 39860,
    name: "UBS REAL PQ PAULO MANGABEIRA ALBERNAZ FILHO",
    address: "RUA BARAO MELGACO",
    city: "São Paulo",
    phone: "1137582329",
    geocode: {
    lat: -23.6099946498864,
    long: -46.7057347297655
    },
    scores: {
    size: 3,
    adaptation_for_seniors: 3,
    medical_equipment: 1,
    medicine: 3
    }
    }]

    assert_equal @result, @expected_result
end

Given("the user has coordinate values with a great number of decimal places") do
  @latitude = -23.604936
  @longitude = -46.692999
end

When("the program receives these values") do
  @latitude = round_coordinate(@latitude)
  @longitude = round_coordinate(@longitude)  
end

Then("the values should be rounded-up from the second decimal place") do
  @expected_latitude = -23.60
  @expected_longitude = -46.70

  assert_equal @latitude, @expected_latitude
  assert_equal @longitude, @expected_longitude
end