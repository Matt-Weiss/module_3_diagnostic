require 'pry'
class FuelFacade
  def initialize(zip_code)
    @zip_code = zip_code
  end

  def total_results
    fuel_data.get_station_count
  end

  private

  def fuel_data
    @_fuel_data ||= FuelService.new(@zip_code)
  end



end
