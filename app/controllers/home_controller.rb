class HomeController < ApplicationController
  def index
    @pnas = lazy_load_pnas[0..23]
  end
end
