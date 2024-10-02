# Para cambiar a otro ritmo, añadiendo coros y batería
use_bpm 136
# Live loop del coro que acompaña la melodía
live_loop :coro do
  
  sleep 3  # Pausa para sincronizarse con la melodía principal
  use_synth :dark_ambience  
  play :a2, release: 2
  sleep 1  
  play :e2, release: 2
  sleep 1  
end

# Live loop de la batería, que crea el ritmo de fondo
live_loop :bateria do
 
  sample :bd_haus, amp: 2
  sleep 1  
  # Reproduce un sample de caja 
  sample :sn_dolf, amp: 1.5
  sleep 1  # Pausa de 1 beat antes de repetir el loop
end
