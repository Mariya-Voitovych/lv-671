puts "This program count how much client will save money with discount.\n\n"

def duty_free(price, discount, holiday_cost)
  save = (holiday_cost.to_f/(price.to_f * discount.to_f / 100)).to_i
end

duty_free(17, 10, 500)
