wave1 = waveform{0, 0.05, 0.1, 0.05, 0, 0.05, 0.1, 0.05};
table_1_reader = rdtable(wave1, _);

wave2 = waveform{0.2, 0.03, 0.12, 0.15};
table_2_reader = rdtable(wave2, _);

wave_idx = waveform{0, 1, 2, 3, 4};
idx = wave_idx : !, _;

wrapper(tb_reader) = tb_reader : +(0.07);

process = idx : wrapper(table_1_reader);
