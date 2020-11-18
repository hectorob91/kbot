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
        impuesto = "CA (%8.25) = $#{calcularImpuesto()}"
        return "#{subtotal}\n#{impuesto}"
    end

    def subtotal
        @cantidad * @precioUnitario
    end

    def calcularImpuesto
        # Regresa impuesto de California
        subtotal() * 0.0825
    end
end

calculoBot = FacturaBot.new(ARGV[0], ARGV[1], ARGV[2])

puts calculoBot.calcular()
