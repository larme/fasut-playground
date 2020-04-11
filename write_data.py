import struct, wave

data = [i * 0.01 + 0.005 for i in range(10)]
factor = 2 ** 15

def main():
    ints = [int(round(v * factor)) for v in data]
    n = len(ints)

    with wave.open('data.wav', 'wb') as f:
        f.setnchannels(1)
        f.setsampwidth(2)
        f.setframerate(44100)
        f.setnframes(n)
        bs = struct.pack('<' + 'h' * n, *ints)
        f.writeframesraw(bs)

if __name__ == '__main__':
    main()
