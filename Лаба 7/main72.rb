
class HouseA
    attr_accessor :year, :square, :price
    def initialize(year, square, price)
        @year = year
        @square = square
        @price = price
    end
end

class HouseB < HouseA
    attr_accessor :oneprice
    def initialize(year, square, price)
        super(year, square, price)
        @oneprice = price / square
    end
end


