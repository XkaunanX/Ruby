class CuentaBancaria
    # Atributo privado
    attr_reader :balance
  
    def initialize(balance)
      @balance = balance
    end
  
    # Método público para acceder a balance
    def depositar(monto)
      if monto > 0
        @balance += monto
        puts "Has depositado $#{monto}. Nuevo balance: $#{@balance}"
      else
        puts "Monto inválido."
      end
    end
  
    # Método privado
    def mostrar_balance
      puts "Tu balance es: $#{@balance}"
    end
  end
  
  # Creación de objeto
  cuenta = CuentaBancaria.new(1000)
  cuenta.depositar(500)
  # cuenta.mostrar_balance  # Esto generaría un error porque es un método privado.
  