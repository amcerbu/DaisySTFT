# DaisySTFT

## A minimial short-time Fourier transform example for the Daisy Seed. 

As configured, the Seed listens for audio, feeds it to a `Fourier<T, N>` instance, and then sends the processed samples to analog audio out. The frequency-domain processing is defined in the `denoise` method. Try modifying it!

I've found the program works well when `N = 4096` and `laps = 4` (higher frequency resolution, greater latency), or when `N = 2048` and `laps = 8` (higher time resolution, less latency). 