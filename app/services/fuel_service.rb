class FuelService

  def initialize(zip_code)
    @zip_code = zip_code
  end

  def data
    JSON.parse(conn)
  end
private
  def conn
    response = Faraday.get "https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?api_key=RN8cRf53BdEbCW7oSpiFb69rWcTyCuLnODCRLfh8&location=#{@zip_code}"
    response.body
  end
end
