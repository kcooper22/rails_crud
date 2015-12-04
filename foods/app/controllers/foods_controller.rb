class FoodsController < ApplicationController

	skip_before_filter :verify_authenticity_token, :only => :create

	def index

		@user =  current_user

	end


	def new
    @food = Food.new

    @user =  current_user
  end


	def create
    @food = Food.new(food_params)
    @food.user_id = current_user.id

    if @food.save
        redirect_to(foods_path)
    else
        render :new
    end
  end


  private

  def food_params
      params.require(:food).permit(:name, :description, :thoughts, :img_url)
  end


end
