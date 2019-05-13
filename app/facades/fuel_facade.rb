require 'pry'
class FuelFacade
  def initialize(zip_code)
    @zip_code = zip_code
  end

  def total_results
    FuelService.new(zip_code)
    binding.pry
    results = FuelService.data
  end

  private




end
