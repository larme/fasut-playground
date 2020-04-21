val = vslider("write_value", 0.0, 0.0, 0.5, 0.01);
widx = vslider("write_idx", 0, 0, 19, 1);
ridx = vslider("read_idx", 0, 0, 19, 1);

tbl = rwtable(21, 0.0, int(widx), float(val), _);

// multiple read again
process = int(ridx) <: tbl, tbl(_ + 1) : + ;
