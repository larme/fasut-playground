import("stdfaust.lib");

add1(x) = 0.1 + x;
add2(x) = 0.2 + x;
add(f, x) = x: f;
process = add(add1);
