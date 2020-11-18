class FacturaBot
    def initialize(cantidad, precioUnitario, estado)
        @cantidad = cantidad.to_i
        @precioUnitario = precioUnitario.to_f
        @estado = estado
    end

    def subtotal
        @cantidad * @precioUnitario
    end

    def calcularImpuesto
        # Regresa impuesto de California
        subtotal() * 0.0825
    end

    def calcularDescuento
        descuento = {}
        @totalAntesDescuento = subtotal() + calcularImpuesto()
        if @totalAntesDescuento > 1000
            descuento['porcentaje'] = 3
            descuento['cantidad'] = @totalAntesDescuento * 0.03
        else
            descuento['porcentaje'] = 0
            descuento['cantidad'] = 0
        end
        return descuento
    end

    def calcularTotal
        subtotal() + calcularImpuesto() - calcularDescuento()['cantidad']
    end

    def calcular
        txt = "Esta es cantidad: #{@cantidad}\n
        Este es precio unitario: #{@precioUnitario}\n
        Este es el estado: #{@estado}"
        subtotalTxt = "# #{@cantidad} * $#{@precioUnitario} = $#{subtotal()}"
        impuestoTxt = "CA (%8.25) = $#{calcularImpuesto()}"
        descuentoTxt = "DTO(%#{calcularDescuento()['porcentaje']}) = $#{calcularDescuento()['cantidad']}"
        totalTxt = "Total = $#{calcularTotal()}"
        return "#{subtotalTxt}\n#{impuestoTxt}\n#{descuentoTxt}\n#{totalTxt}"
    end
end

calculoBot = FacturaBot.new(ARGV[0], ARGV[1], ARGV[2])

puts calculoBot.calcular()
