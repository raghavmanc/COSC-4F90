SndBuf anomaly => dac;
FileIO io;

"anomaly.wav" => anomaly.read;
anomaly.samples() => anomaly.pos;

<<<io.open("predictions.txt", FileIO.READ) >>>;

while(io => int val){
    <<< val >>>;
        if(val == 0){
        0 => anomaly.pos;
        0.0 => anomaly.gain; 
        200::ms => now;
    }
    if(val == 1){
        0 => anomaly.pos;
        0.7 => anomaly.gain; 
        anomaly.length() => now;
    }

}