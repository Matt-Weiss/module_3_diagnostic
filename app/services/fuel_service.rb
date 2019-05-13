class FuelService

  def initialize(zip_code)
    @zip_code = zip_code
  end

  def get_station_count
    data["total_results"]
  end

  private
  def data
    JSON.parse(conn)
  end
  def conn
    response = Faraday.get "https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?api_key=RN8cRf53BdEbCW7oSpiFb69rWcTyCuLnODCRLfh8&location=#{@zip_code}&fuel_type=ELEC,LPG&status=E&access=public"
    response.body
  end
end
