class FacturaBot
    def initialize(cantidad, precioUnitario)
        @cantidad = cantidad
        @precioUnitario = precioUnitario
    end

    def calcular
        "Esta es cantidad: #{@cantidad} y este es precio unitario: #{@precioUnitario}"
    end
end

calculoBot = FacturaBot.new(ARGV[0], ARGV[1])

puts calculoBot.calcular()
