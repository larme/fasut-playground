// `atime` works as a counter that will be triggered and re-triggered
// by the gate input

atime(gate) = (raise*reset + upfront) ~ _
with {

  // reset = 0 only at the sample where gate is triggered, otherwise
  // reset = 1 so raise(x) continue having effect on the output
  reset = gate <= gate';

  // when gate is triggered, immediately increase the counter by one
  upfront = gate > gate';

  // a counter, see 07_env_sub_a_counter.dsp
  raise(x) = (x + (x > 0));

  // when gate is triggered, reset = 0, which discard raise(x) hence
  // whatever the unit produce earlier (the unit output is routed back
  // to raise(x) as the "x" using ~ operator). upfront = 1 so the
  // counter start back from 1, which will push raise(x) keep adding
  // 1s (the x > 0 part).

  // after gate triggered, reset = 1, which will keep the output of
  // raise(x), upfront = 0 because we don't need it anymore

  // uncomment following 2 lines, comment upfront and raise lines
  // above to see why you need a upfront. The reason is when gate is
  // open, reset = gate <= gate' = 0, that means the overall counter
  // will be delayed by one sample. run 07_env_sub_b_reset.dsp and
  // observe the output

  // upfront = 0;
  // raise(x) = (x + 1);
};

process = atime : *(0.01) ;
