// demo multiple access to a single rdtable in one sample period

wave = waveform{0.0, 0.1, 0.2};
reader = rdtable(wave, _);

process = reader(1), reader(2) : + ;
