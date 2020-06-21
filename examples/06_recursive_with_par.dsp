import("stdfaust.lib");

iter_num = 2;

add(a, b) = par(i, iter_num, a + b + i);

mid = out
with {
  phase1 = par(i, iter_num, add(i+1));
  phase2(in1, in2, in3, in4) = in4, in1;

  raw_outs = phase1 ~ phase2;
  out = raw_outs;
};

process = mid : _, !, !, ! : *(0.01);
