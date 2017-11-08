class NutritionixService

  def initialize
    @conn = Faraday.new(url: "https://trackapi.nutritionix.com") do |faraday|
      faraday.headers["x-app-id"] = "7be45d5d"
      faraday.headers["x-app-key"] = "cc8a1a599ca34b1802628887bd66d46f"
      faraday.headers["x-remote-user-id"] = "0"
      faraday.adapter  Faraday.default_adapter
    end

  end

  # def instant
  #   response = @conn.get("/v2/search/instant?query=tomato")
  #   json = JSON.parse(response.body)
  # end

  def nutrients(name)
    body = JSON.generate(:query => name)
    response = @conn.post do |req|
      req.url "/v2/natural/nutrients"
      req.headers["Content-Type"] = "application/json"
      req.body = body
    end
    response_json = JSON.parse(response.body, symbolize_names: true)[:foods].first
  end


end
