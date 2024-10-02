use_bpm 128  # Establezco un tempo más rápido para cambiar el estilo

# Importo y cargo el archivo de audio desde la ruta local
audio1 = "C:/Users/mar_a/OneDrive/Escritorio/3º/audios_sonic/Audio1.wav"

#Sintetizador con la voz
#Un loop vacío que sirve para sincronizar con el loop de voz
live_loop :mel2 do
  sleep 1
end

# Loop que reproduce la voz sincronizado con el loop anterior (:mel2)
live_loop :voz2, seed: 21, sync: :mel2 do
  stop
  # Aplico un efecto de eco al sample
  with_fx :echo, phase: 0.5, decay: 4, mix: 0.75 do
    # Utilizo el efecto "slicer"
    with_fx :slicer, invert_wave: 1, phase: 0.5, mix: 0.8, wave: 1, smooth: 0.01 do
      am = 4  #Amplitud
      c = 120  # Cutoff
      # Genero un número aleatorio para seleccionar una parte del sample
      slice = rand_i(16*2)
      # Divido el sample en trozos que se repitirán
      slice_size = 0.125/2/2
      s = slice * slice_size  # Calcula el punto de inicio del trozo
      f = s + slice_size  # Calcula el punto final del trozo
      # Reproduzco el sample con los efectos aplicados
      sample audio1, start: s, finish: f, amp: 3, cutoff: c, rate: 1
      sleep 1
    end
  end
end
