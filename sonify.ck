SndBuf normal => dac;
SndBuf anomaly => dac;

"normal.wav" => normal.read;
normal.samples() => normal.pos;

0 => normal.pos;
2.8 => normal.gain;
normal.length() => now;

