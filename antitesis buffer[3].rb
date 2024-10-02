use_bpm 180 #Compas
#Melodia principal de juego de tronos
live_loop :principal do
  use_synth :blade #Uso el sintetizador blade
  play :e3, release: 1 
  sleep 1
  play :a2, release: 1
  sleep 1
  play :c3, release: 0.5
  sleep 0.5
  play :d3, release: 0.5
  sleep 0.5
end