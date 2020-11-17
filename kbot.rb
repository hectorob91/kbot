class FacturaBot
    def initialize(cantidad, precioUnitario, estado)
        @cantidad = cantidad.to_i
        @precioUnitario = precioUnitario.to_f
        @estado = estado
    end

    def calcular
        txt = "Esta es cantidad: #{@cantidad}\n
        Este es precio unitario: #{@precioUnitario}\n
        Este es el estado: #{@estado}"
        subtotal = "# #{@cantidad} * $#{@precioUnitario} = $#{subtotal()}"
    end

    def subtotal
        @cantidad * @precioUnitario
    end
end

calculoBot = FacturaBot.new(ARGV[0], ARGV[1], ARGV[2])

puts calculoBot.calcular()
