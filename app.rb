require "sinatra"
require "sinatra/reloader"

get("/") do
  redirect("/add")
end

get("/add") do
  erb(:add_form)
end

get("/wizard_add") do
  @first_num = params.fetch("first_number").to_f
  @second_num = params.fetch("second_number").to_f

  @result = @first_num + @second_num
  erb(:add_result)
end

get("/subtract") do
  erb(:sub_form)
end

get("/wizard_subtract") do
  @subtract_this = params.fetch("subtract_this").to_f
  @from_this = params.fetch("from_this").to_f

  @result = @from_this - @subtract_this

  erb(:sub_result)
end

get("/multiply") do
  erb(:mult_form)
end

get("/wizard_multiply") do
  @first_number = params.fetch("first_num").to_f
  @second_number = params.fetch("second_num").to_f

  @result = @first_number * @second_number

  erb(:mult_result)
end

get("/divide") do
  erb(:div_form)
end

get("/wizard_divide") do
  @dividend = params.fetch("dividend").to_f 
  @divisor = params.fetch("divisor").to_f

  @result = @dividend / @divisor

  erb(:div_result)
end
