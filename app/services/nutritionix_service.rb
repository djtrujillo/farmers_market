class NutritionixService

  def initialize
    @conn = Faraday.new(url: "https://trackapi.nutritionix.com/v2") do |faraday|
      faraday.headers["x-app-id"] = ENV["nutrition_application_id"]
      faraday.headers["x-app-key"] = ENV["nutrition_application_key"]
      faraday.headers["x-remote-user-id"] = 0
    end
  end

  def nutrients(name)
    response = @conn.post do |req|
      req.url "/natural/nutrients"
      req.headers["Content-Type"] = "application/json"
      req.body = '{ "query":"tomato" }'.to_json
    end
    response_json = JSON.parse(response.body)

  end


end
