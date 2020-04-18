// method 1 of writing a counter
counter1 = _ ~ +(1);

// method 2 of writing the same counter. The count function here is
// similar to the `raise` function in `atime` of `ar` function
counter2 = count ~ _
with {
  count(x) = x + 1;
};

// process = counter1 : *(0.01);
process = counter2 : *(0.01);
