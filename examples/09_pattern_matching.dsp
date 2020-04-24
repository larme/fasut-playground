// use pattern matching to accept variable number of arguments

summing((x, y)) = x + summing(y);
summing(x) = x;

//process = summing(3) : *(0.1);
process = summing((_, 2, 3)) : *(0.1);
