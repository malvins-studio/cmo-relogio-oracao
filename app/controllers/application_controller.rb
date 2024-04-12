class ApplicationController < ActionController::Base
  def lazy_load_pnas
    require 'csv'
    $pnas ||= CSV.read 'unreached_peoples.csv', headers: true, header_converters: :symbol, converters: [:all]
  end
end
