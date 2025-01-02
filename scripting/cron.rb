# Crear un trabajo cron
cron_job = "0 * * * * /usr/bin/ruby /ruta/a/mi/script.rb"

# Guardar el cron job en un archivo temporal
File.open('/tmp/cron_job.txt', 'w') do |f|
  f.puts cron_job
end

# Agregar el trabajo cron al crontab
system('crontab /tmp/cron_job.txt')

puts "Trabajo cron agregado correctamente."
