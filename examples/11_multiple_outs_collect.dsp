import("stdfaust.lib");

out3(in) = par(i, 3, (i + in) * 0.01);

// this will actually output ((1, 2, 3), 5, 6, 7)
// only the last group will be unpacked
out = out3(1), out3(5);

// this works
// process = ba.take(2, ba.take(1, out));

// this won't work
// process = ba.take(2, ba.take(2, out));

// this will work
// process = ba.take(2, out);

// this also works
process = ba.take(3, out);
