module HomeHelper
  def percent_of_total(population)
     (population.to_f / 3397314000.0 * 100.0).round(2)
  end

  def numanize(num)
    number_to_currency(num, unit: '', separator: ",", delimiter: ".")
  end
end
