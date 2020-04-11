// recursive is a composition operations like : , and :<.

// process1: we have a simple operator of +(0.01) A. Then we connect
// output of A back to the input of previous stage. Because the
// previous stage only have one input, the output of A is connect to
// that input and previous stage has no extra input for the actual
// input signal. Hence the actual input signal is discarded. The
// initial value of previous stage is 0.0

process1 = _ ~ +(0.01);

// process2: in this version we want to accept the actual input and
// add a feedback loop which will also add the output signal by 0.01
// (the same operator A in process1). The first stage will just accept
// the actual input signal. the second stage has 2 inputs. the first
// input just accept the actual input signal while the second input is
// connected to the output of operator A, hence the feedback
// signal. the second stage will sum 2 signals and send to operator A.

process2 = _ : _ + _ ~ +(0.01);

// process3: a more concise version of process2

process3 = + ~ +(0.01);

// process4: change feedback modification function a little bit

process4 = + ~ *(0.1);

// now you can see how si.smooth works

my_smooth(s) = *(1.0 - s) : + ~ *(s);

// switch between these process functions to see the difference

process = process2;
