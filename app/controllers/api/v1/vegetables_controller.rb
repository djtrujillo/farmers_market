class Api::V1::VegetablesController < Api::V1::BaseController
  def index
    respond_with json: Vegetable.all
  end

  def create
    respond_with :api, :v1, Vegetable.create(vegetable_params)
  end

  def destroy
    respond_with json: Vegetable.destroy(params[:id])
  end

  def update
    vegetable = Vegetable.find(params["id"])
    vegetable.update_attributes(vegetable_params)
    respond_with vegetable, json: vegetable
  end

  private

    def vegetable_params
      params.require(:vegetable).permit(:id, :name, :description, :price, :unit_measurement, :days_to_maturity, :role)
    end

end
