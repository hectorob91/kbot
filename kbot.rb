class FacturaBot
    def initialize(cantidad, precioUnitario, estado)
        @cantidad = cantidad
        @precioUnitario = precioUnitario
        @estado = estado
    end

    def calcular
        "Esta es cantidad: #{@cantidad}\n
        Este es precio unitario: #{@precioUnitario}\n
        Este es el estado: #{@estado}"
    end
end

calculoBot = FacturaBot.new(ARGV[0], ARGV[1], ARGV[2])

puts calculoBot.calcular()
