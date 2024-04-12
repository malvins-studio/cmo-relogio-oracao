class HomeController < ApplicationController
  def index
    @pnas = lazy_load_pnas[0..3]
  end
end
