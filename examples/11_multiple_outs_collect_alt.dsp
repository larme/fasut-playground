import("stdfaust.lib");

out3(in) = par(i, 3, (i + in) * 0.01);

// use a dummy to make first 2 output as list
out = out3(1), out3(5), 0;

// this works
process = ba.take(2, ba.take(2, out));
