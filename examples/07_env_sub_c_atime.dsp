// `atime` works as a counter that will be triggered and re-triggered
// by the gate input

atime(gate) = (raise*reset + upfront) ~ _
with {

  // if triggered, reset counter to 0
  reset = gate <= gate';

  // then immediately increase the counter by one
  upfront = gate > gate';

  // a counter, see 07_env_sub_a_counter.dsp
  raise(x) = (x + (x > 0));

  // uncomment following 2 lines, comment upfront and raise lines
  // above to see why you need a upfront. The reason is when gate is
  // open, reset = gate <= gate' = 0, that means the overall counter
  // will be delayed by one sample. run 07_env_sub_b_reset.dsp and
  // observe the output

  // upfront = 0;
  // raise(x) = (x + 1);
};

process = atime : *(0.01) ;
