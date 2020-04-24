// AR envelop generator copied from standard library en.ar
//
// ```
// ar(an,rn,t) : _
// ```
//
// Where:
//
// * `an`: attack (samples)
// * `rn`: release (samples)
// * `t`: trigger signal (attack is triggered when `t>0`, release is triggered 
// when `t=0`)
//-----------------------------------------------------
ar(an,rn,gate) = AR : max(0) 
with {

    // Deltas per samples
    adelta = 1/an;
    rdelta = 1/rn;
    
    // Attack counter (starts at gate upfront and raises infinitely)
    atime = (raise*reset + upfront) ~ _
    with {
        upfront = gate > gate';
        reset = gate <= gate';
        raise(x) = (x + (x > 0));
    };

    // Attack curve
    A = atime * adelta;
    
    // Release curve start from the beginning of the trigger, but with
    // 1 + an*rdelta as the initial value and went down (by
    // step=rdelta) to 1 when the attack curve also reach to 1. at
    // this point release curve take over the output because of AR =
    // min(A, D). Try modify `process = D` to see the effect.
    D0 = 1 + an * rdelta;
    D = D0 - atime * rdelta;

    // AR part
    AR = min(A, D);
    
};

env1 = ar(3, 5) * 0.1;
env2 = ar(11, 3) * 0.1;
combined = _ <: env1, env2 : + ;

// switch env to see env1 and env2 running independently
// process = env1;
// process = env2;
process = combined;
