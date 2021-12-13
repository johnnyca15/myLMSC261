use_bpm 120

live_loop :beat do
  sample :drum_heavy_kick
  sleep 1
  sample :drum_snare_hard
  sleep 1
end

live_loop :hihat do
  sample :drum_cymbal_closed
  sleep 1
  sample :drum_cymbal_pedal
  #sleep 0.5
end

live_loop :chords do
  2.times do
    sleep 1
    use_synth :dsaw
    play chord(:A4, :m)
    sleep 1
  end
  2.times do
    sleep 1
    play chord(:g4, :M)
    sleep 1
  end
  2.times do
    sleep 1
    play chord(:f4, :M7)
    sleep 1
  end
  2.times do
    sleep 1
    play chord(:e4, '7')
    sleep 1
  end
end

