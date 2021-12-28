// SynthDef

SynthDef(\PMNoise,{
	|out = 0, amp = 1,pan=0, freq = 200,ratio = 0.65,index = 5,detune=1.01,atack=0.05,release = 1| // lista de argumentos

	var snd =  SinOsc.ar([freq,freq*detune],0 + SinOsc.ar(freq*ratio,0,index)).range(-pi,pi)
	* Env.perc(atack,release).ar(2);

	snd = snd * amp;
	snd = Pan2.ar(snd.sum,pan);
	Out.ar(out,snd);

}).add

~escala = [60,62,64,[66,68],67,69]

Synth(\PMNoise,[\pan,0,\freq,(~escala+19).choose.midicps,\ratio,1,\amp,0.25,\detune,5.5,\release,0.5,\atack,0.001,\index,50]);

Synth(\PMNoise,[\pan,0,\freq,~escala.choose.midicps,\ratio,1,\amp,0.25,\detune,1.01,\release,1.5,\atack,0.1])

////

// Patterns

(
var a, b;
a = Pseq([1, 2, 3], inf);    // repeat twice
b = a.asStream;
7.do({ b.next.postln; });
)


Pbind( \instrument,\PMNoise,
	\amp, 0.1,
//	\midinote,Pseq(~escala,inf),
	//\midinote,Prand(~escala,inf),
//	\midinote,Pxrand(~escala,inf),
	\midinote,Pwrand(~escala,[0.4,0.05,0.05,0.4,0.05,0.05],inf),
	\dur,Pseq([1,0.5,0.25],inf),
//	\dur,Pwhite(0.05,0.25),
	\release,2.5,
	\atack,0.01,
	\detune,1.01,
	\ratio,1
).play

Pbind( \instrument, Pseq([\PMNoise,\default],inf),
	\amp, 0.05,
//	\midinote,Pseq(~escala,inf),
	//\midinote,Prand(~escala,inf),
//	\midinote,Pxrand(~escala,inf),
	\midinote,Pwrand(~escala,[0.4,0.05,0.05,0.4,0.05,0.05],inf),
	\dur,Pseq([1,0.5,0.25],inf),
//	\dur,Pwhite(0.05,0.25),
	\release,2.5,
	\atack,0.25,
	\detune,1.01,
	\ratio,1
).play(~metro);


Pbind( \instrument,\PMNoise,
	\amp, 0.05,
	\midinote,Pseq(~escala++[71],inf),
	\dur,Pseq([1,0.5,0.25],inf),
	\release,2.5,
	\atack,0.01,
	\detune,1.01,
	\ratio,1
//	\stretch,0.5
).play(~metro,quant:1);

Pbind( \instrument,\PMNoise,
	\amp, 0.05,
	\midinote,Pseq(~escala++[71],inf),
	\dur,Pseq([1,0.5,0.25],inf),
	\release,2.5,
	\atack,0.01,
	\detune,1.01,
	\ratio,1
//	\stretch,0.5
).play(~metro,quant:1);

TempoClock.default.tempo = 1.0

TempoClock.default.tempo = 120/60

~metro = TempoClock.new(90/60)
~metro.tempo = 90/120 