use_bpm 200 #Compás
# Intro
live_loop :intro do
  use_synth :piano  # Sintetizador
  amp = 0.3  # Amplitud inicial
  6.times do  # Repite 4 veces para crear la progresión
    play :e4, release: 2, amp: amp
    sleep 2
    play :g4, release: 2, amp: amp
    sleep 2
    play chord(:a3, :minor), release: 3, amp: amp
    sleep 3
    play :b3, release: 2, amp: amp
    sleep 2
    amp += 0.1  # Aumenta la amplitud progresivamente
  end
end