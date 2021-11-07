from pyo import *
s = Server().boot()
s.start()
snd = SndTable("/Users/johnnyca15/Documents/GitHub/lmsc261fa21/110Debugging/Assignment-Pyo/dulcimer.aiff")
env = HannTable()
pos = Phasor(freq=snd.getRate()*.25, mul=snd.getSize())
dur = Noise(mul=.001, add=.1)
g = Granulator(snd, env, [1, 1.001], pos, dur, 32, mul=.1).out()
