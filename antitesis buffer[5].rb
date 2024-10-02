use_bpm 136  # Compás para un ritmo común en música más moderna.

# Batería
live_loop :kick do
  sample :bd_tek, amp: 2  # Reproduzco un sample de bombo
  sleep 1  # Pausa
end

live_loop :snare do
  sync :kick  # Sincronizo el inicio de la caja con el bombo
  sleep 1  # Pausa
  sample :sn_dub, amp: 1.5  # Reproduzco un sample de caja
  sleep 1  # Pausa de otro pulso creando un ritmo básico 
end

live_loop :hats do
  sync :kick  # Sincronizo los hi-hats con el bombo
  sample :drum_cymbal_closed, amp: 0.5  # Reproduzco un hi-hat cerrado
  sleep 0.25  #Pausa
end

# Melodía que acompañara a la voz
live_loop :melodia do
  use_synth :saw  # Utilizo el sintetizador saw
  # Reproduzco una secuencia de notas
  play_pattern_timed [:c5, :e5, :g5, :f5, :e5, :d5, :c5],
    [0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1],  # Duración de cada nota.
    release: 0.1,  # Notas con un release corto
    cutoff: rrand(80, 130)  # Filtro de corte aleatorio
    end
