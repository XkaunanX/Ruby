# Creación de un hilo simple
thread = Thread.new do
    5.times do |i|
      puts "Hilo: #{i}"
      sleep(1)
    end
  end
  
  # Espera a que el hilo termine antes de continuar
  thread.join
  
  # Hilos con paso de parámetros
  def tarea_con_hilo(tarea)
    thread = Thread.new do
      puts "Realizando tarea: #{tarea}"
      sleep(2)
    end
    thread
  end
  
  hilo1 = tarea_con_hilo("Tarea 1")
  hilo2 = tarea_con_hilo("Tarea 2")
  
  # Esperar que ambos hilos terminen
  hilo1.join
  hilo2.join
  puts "Todas las tareas completadas."
  