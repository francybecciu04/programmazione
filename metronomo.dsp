import("stdfaust.lib");
bpm2samp(t) = (60*ma.SR)/(t); 
frec = vslider("frequenza[stayl:knov]",1000,1000,5000,1.0);
beat = bpm2samp (vslider ("tempo[stayl:knov]", 60,32,44,0.1));
process = ba.pulsen(1,beat) : fi.highpass(128,frec); 

//stiamo navigando a 44100 al secondo, ba.pulsen genera un clic di durata stabilita ogni beat. Il beat è una funzione che utilizza bpm2samp che converte in campioni una durata espressa la funzione beat per minuto. 
