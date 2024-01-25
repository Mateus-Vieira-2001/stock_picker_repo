def stock_picker(stock)
  profit = 0
  stock.each_with_index do |item,endereco|
    stock.each_with_index do |item2,endereco2|
      if item<item2 && endereco<endereco2
        buy_array << item
      end
    end
    buying_price = buy_array.min
  end
end

stock = [17,3,6,9,15,8,6,1,10]
stock_picker(stock)
