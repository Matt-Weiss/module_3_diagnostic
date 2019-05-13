require 'pry'
class FuelFacade
  def initialize(zip_code)
    @zip_code = zip_code
  end

  def total_results
    fuel_data.get_station_count
  end

  def top_15_stations
    stations
  end

  def stations
    fuel_data.stations.each do |station|
      binding.pry
      Station.create!(name: station.station_name,
                  address: station.street_address,
               fuel_types: station.fuel_type_code,
                 distance: station.distance.to_s,
             access_times: station.access_days_time)
    end
  end

  private


  def fuel_data
    @_fuel_data ||= FuelService.new(@zip_code)
  end



end
