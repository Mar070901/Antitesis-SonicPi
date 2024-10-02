# Importo y cargo el archivo de audio desde la ruta local
audio3 = "C:/Users/mar_a/OneDrive/Escritorio/3º/audios_sonic/Audio3.wav"

#Sintetizador con la voz
live_loop :voz do
  
  # Aplico un efecto de reverberación
  with_fx :reverb, room: 0.8 do
    
    # Utilizo el efecto "slicer"
    with_fx :slicer, invert_wave: 1, phase: 0.5, mix: 0.7 do  # Inviero la onda y ajusto frecuencia
      # Controlo qué parte del sample quiero reproducir ajustando los parámetros
      sample audio3, start: 0.6, finish: 1, rate: 1, amp: 0
      sleep 6
    end
  end
end

