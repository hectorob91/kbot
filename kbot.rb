class FacturaBot
    def initialize(cantidad)
        @cantidad = cantidad
    end

    def calcular
        @cantidad
    end
end

calculoBot = FacturaBot.new(ARGV[0])

puts calculoBot.calcular()
