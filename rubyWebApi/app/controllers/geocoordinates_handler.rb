module GeocoordinatesHandler
  def find_hospitals(lat, long)
    @hopitals_list =  [{
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
    return @hopitals_list
  end

  def round_coordinate(coordinate)
    return coordinate.round(1)
  end
end