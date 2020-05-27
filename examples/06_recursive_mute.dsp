// you can mute one or some branch(es) of a recursive output if the
// only purpose of this branch is used inside the recursive loop

process = out : *(0.001)
with {
  out2(in1, in2) = in1 + in2, in2 + 0.2;
  acc(in1, in2) = in1 + 0.3, in2 + 0.5;
  out = out2 ~ acc : _, !;
};
