

def stock_picker(stock)
  profit = 0
  profit_sub = 0
  buy_array =[]
  stock.each_with_index do |item,endereco|
    stock.each_with_index do |item2,endereco2|
      if item<item2 && endereco<endereco2
        profit_sub= item2-item
        #puts profit_sub


        if item2-item>profit
          profit = profit_sub
          buy_array =[endereco,endereco2]
        end
      end
    end


  end
  return buy_array
end

stock = [17,3,6,9,15,8,6,1,10]
puts stock_picker(stock)
