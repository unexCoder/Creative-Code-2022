s.boot

s.makeWindow

3.class

3.sqrt

[60,62,64,67,69].choose

[60,62,64,67,69].scramble.invert

[60,62,64,67,69].invert


a = [60,62,64,67,69]

a = a.rotate

// s = server >> variable de entorno

a >> z (-s) son todas variables de entorno >> environment variables

///////////////

{ var num = 15;postln(num);}.value
{ arg num = 15;postln(num);}.value(3)
{ |num = 15| postln(num);}.value(39)


// funcion de audio
// UGENS >> Units Generators

{ SinOsc.ar(200,0,0.2) !2 }.play
{ Saw.ar(300,0.6) !2 }.play
{ Pulse.ar(200,0.5,0.7) !2 }.play

{ Pulse.ar(200,0.05,0.7) !2 }.plot

{ Pulse.ar(width:0.05,freq:188) !2 }.plot


Saw
Pulse
CombC
Delay1
RLPF


// modulate frequency
{ Pulse.ar(XLine.kr(40, 4000, 6), 0.1, 0.2) !2}.play;

// modulate pulse width
{ Pulse.ar(200, SinOsc.ar(20).range(0.01, 0.99), 0.5) !2}.play;

// two band limited square waves thru a resonant low pass filter
{ RLPF.ar(Pulse.ar([100, 250], 0.5, 0.1), XLine.kr(8000, 400, 5), 0.05) !2}.play;




{ SinOsc.ar(200,0,0.8) * Env.perc(releaseTime:5).ar(2)    !2 }.play

Env.new([0,1,0.5,0.75,0.25,0.6,0],[0.5,0.05,2,0.1,0.5,3],{8.rand -4}!6).plot


{ SinOsc.ar(200,0,0.8) * Env.new([0,1,0.5,0.75,0.25,0.6,0],{2.0.rand}!6,{4.rand2}!6).ar(2)    !2 }.play

2.0.rand
rand(2.0)
4.0.rand2
{4.0.rand2}!50
4.0.rand2!50

{ SinOsc.ar(600.rand,0,0.8) * Env.perc.ar(2)    !2 }.play
{ SinOsc.ar({1600.rand}!8,0,0.1) * Env.perc(releaseTime:5.0.rand).kr(doneAction:2)    !2 }.play

// MULTICHANNEL EXPANSION

{funcion  !2}.play

{funcion([x1,x2])}

// FM > FREQ MODULATION
{ SinOsc.ar(167 + SinOsc.ar(111,0,60000) ,0 ,0.5) * Env.perc(releaseTime:0.4).ar(2)   }.play(s,1)

{ FreeVerb.ar(SinOsc.ar(167 + SinOsc.ar(111,0,60000) ,0 ,0.5) * Env.perc(releaseTime:0.4).ar,0.5,5,4)   }.play(s,1)

// DetectSilence


// PM > PHASE MODULATION
{ SinOsc.ar(200 ,0 + SinOsc.ar(123,0,5) ,0.5).range(-pi,pi) * Env.perc.ar(2)  !2 }.play

{ SinOsc.ar(200,0,1+ SinOsc.ar(456,0,1).range(0.1,1))  * Env.perc.ar(2)  !2 }.play
