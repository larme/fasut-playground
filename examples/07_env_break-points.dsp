import("stdfaust.lib");

// break-point copied from basics.bpf

mybpf = environment
	{
	  start(x0, y0) = \(x).(x0, y0, x, y0);
	  point(x1, y1) = \(x0, y0, x, y).(x1, y1, x,
					   ba.if(x < x0,
						 y,
						 ba.if(x < x1,
						       y0 + (x - x0)*(y1 - y0)/(x1 -x0),
						       y1)));
	  end(x1, y1) = \(x0, y0, x, y).(ba.if(x < x0,
					       y,
					       ba.if(x < x1,
						     y0 + (x - x0)*(y1 - y0)/(x1 - x0),
						     y1)));
	};

// counter with trigger
counter(gate) = (raise*reset + upfront) ~ _ : -(1)
with {
  reset = gate <= gate';
  upfront = gate > gate';
  raise(x) = (x + (x > 0));
};

// process = counter : *(0.01);
process = counter : mybpf.start(0, 0.0) : mybpf.point(2, 1.0) : mybpf.point(4, 0.5) : mybpf.end(8, 0.0);
