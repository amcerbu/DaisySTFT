# DaisySTFT

## A minimial short-time Fourier transform example for the Daisy Seed

As configured, the Seed listens for audio, feeds it to a `Fourier<T, N>` instance (which handles the buffering, windowing, forward FFT, frequency-domain processing, inverse FFT), and then outputs the processed audio. The example frequency-domain process is defined in the `denoise` method. Try modifying it!

I've found the program works well when `N = 4096` and `laps = 4` (higher frequency resolution, greater latency), or when `N = 2048` and `laps = 8` (higher time resolution, less latency). 

To compile, make sure you modify the Makefile so that the definitions of `DAISYSP_DIR` and `LIBDAISY_DIR` point to your installations of DaisySP and libDaisy. Then, as usual,

    make clean && make && make program-dfu