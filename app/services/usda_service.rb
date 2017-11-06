class UsdaService
  def initialize
    # conn = Faraday.new(url: "https://api.data.gov/nrel/alt-fuel-stations/v1/nearest.json?api_key=qlOyI3FdXsp0BnFMNtyfylw00jQWOue4MoNRgVMm&location=Denver+CO")
    @conn = Faraday.new(url: "https://api.nal.usda.gov")
    # conn = Faraday.new(url: "https://api.nal.usda.gov/ndb/reports/V2?ndbno=01009&ndbno=45202763&ndbno=35193&type=b&format=xml&api_key=#{ENV[usda_api_key]}")
  end

  def find_ndbno(name)
    response = conn.get("/ndb/search/?format=json&q=#{name}&max=1&offset=0&api_key=#{ENV['usda_api_key']}")
    ndbno = JSON.parse(response.body)["list"]["item"].first["ndbno"]
  end

  def nutrition(ndbno)
    response = conn.get("/ndb/reports/V2?ndbno=#{ndbno}&type=b&format=json&api_key=#{ENV['usda_api_key']}")
    nutrition = JSON.parse(response.body)
    binding.pry
  end

  private
    attr_reader :conn

end
