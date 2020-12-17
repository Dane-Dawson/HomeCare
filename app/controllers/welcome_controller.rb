class WelcomeController < ApplicationController
  def index
    render json: {users: User.all, areas: Area.all, features: Feature.all}
  end
end
