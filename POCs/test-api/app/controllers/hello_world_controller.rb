class HelloWorldController < ApplicationController
  def index
    render json: { result: 'Hello World' }
  end
end
