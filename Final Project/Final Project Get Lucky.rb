use_bpm 60


#Chords
use_synth :tb303
use_synth_defaults release: 2.5, cutoff: 75, amp: 1.5
1.times do
  play chord(:A3, :m7)
  sleep 2
  play (chord_invert (chord :C3, :M7), 3)
  sleep 2
  play (chord_invert (chord :E3, :m7), 2)
  sleep 2
  play (chord_invert (chord :D3, '7'), 2)
  sleep 2
end

in_thread do
  2.times do
    play chord(:A3, :m7)
    play :A2
    sleep 2
    play (chord_invert (chord :C3, :M7), 3)
    play :C3
    sleep 2
    play (chord_invert (chord :E3, :m7), 2)
    play :E3
    sleep 2
    play (chord_invert (chord :D3, '7'), 2)
    play :D3
    sleep 2
    play chord(:A3, :m7)
    play :A2
    sleep 2
    play (chord_invert (chord :C3, :M7), 3)
    play :C3
    sleep 2
    play (chord_invert (chord :E3, :m7), 2)
    play :E3
    sleep 2
    play (chord_invert (chord :D3, '7'), 2)
    play :Gb3
    sleep 2
  end
end





#Melody (Part1)
in_thread do
  use_synth :dsaw
  use_synth_defaults amp: 1
  1.times do
    play :c5, release: 1.75
    sleep 1.25
    play :b4, release: 0.75
    sleep 0.25
    play :c5, release: 0.5
    sleep 0.25
    play :e5, release: 1.75
    sleep 1.50
    play :e5, release: 0.75
    sleep 0.25
    play :fs5, release: 0.5
    sleep 0.25
    play :g5, release: 1.75
    sleep 1.50
    play :g5, release: 0.75
    sleep 0.25
    play :a5, release: 0.5
    sleep 0.25
    play :fs5, release: 1.5
    sleep 2
    play :a4, release: 0.5
    sleep 0.25
    play :c5, release: 1.75
    sleep 1.25
    play :b4, release: 0.75
    sleep 0.25
    play :c5, release: 0.5
    sleep 0.25
    play :e5, release: 1.75
    sleep 1.50
    play :e5, release: 0.75
    sleep 0.25
    play :fs5, release: 0.5
    sleep 0.25
    play :g5, release: 1.75
    sleep 1.50
    play :e5, release: 0.75
    sleep 0.25
    play :b5, release: 0.5
    sleep 0.25
    play :a5, release: 2
    sleep 2.25
  end
  
  #Melody (Part2)
  2.times do
    use_synth :dsaw
    use_synth_defaults release: 0.25, amp: 1
    1.times do
      sleep 0.25
      play :c5
      sleep 0.25
      play :c5
      sleep 0.25
      play :c5
      sleep 0.125
      play :c5
      sleep 0.25
      play :c5
      sleep 0.125
      play :c5
      sleep 0.25
      play :d5, release: 0.5
      sleep 0.75
      play_pattern_timed [:c5,:c5,:c5,:c5,:c5,:c5,:d5],
        [0.25,0.25,0.125,0.25,0.125,0.25,0.5]
    end
    sleep 0.25
    play :b4
    sleep 0.25
    play :b4
    sleep 0.25
    play :b4
    sleep 0.125
    play :b4
    sleep 0.25
    play :b4
    sleep 0.125
    play :b4
    sleep 0.25
    play :d5, release: 0.50
    sleep 0.75
    play :a4
    sleep 0.25
    play :a4
    sleep 0.25
    play :a4
    sleep 0.125
    play :a4
    sleep 0.25
    play :a4
    sleep 0.125
    play :b4
    sleep 0.25
    play :a4
    sleep 0.25
    play :g4
    sleep 0.25
  end
end






#Drums
in_thread do
  4.times do
    3.times do
      sample :drum_bass_hard
      sleep 0.25
      sample :drum_cymbal_closed
      sleep 0.25
      sample :drum_snare_hard
      sleep 0.25
      sample :drum_cymbal_closed
      sleep 0.25
      sample :drum_bass_hard
      sleep 0.25
      sample :drum_cymbal_closed
      sleep 0.25
      sample :drum_snare_hard
      sleep 0.25
      sample :drum_cymbal_closed
      sleep 0.25
    end
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_cymbal_closed
    sleep 0.25
    sample :drum_snare_hard
    sleep 0.25
    sample :drum_cymbal_closed
    sleep 0.25
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_snare_hard
    sample :drum_cymbal_closed
    sleep 0.25
    sample :drum_snare_hard
    sample :drum_cymbal_closed
    sleep 0.25
    sample :drum_snare_hard
    sample :drum_cymbal_closed
    sleep 0.25
  end
end






