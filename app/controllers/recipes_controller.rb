class RecipesController < ApplicationController

  hobo_model_controller

  auto_actions :all

  def index
    hobo_index Recipe.apply_scopes(:search => [params[:search],:title,:body],:order_by => parse_sort_param(:title, :country, :count))
  end

end
