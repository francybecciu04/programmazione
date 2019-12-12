import("stdfaust.lib");
process = no.noise : fi.lowpass(2,6000) : fi.highpass(2,6000);
