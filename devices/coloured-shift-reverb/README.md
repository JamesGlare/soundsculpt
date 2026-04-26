# coloured-shift-reverb

First-pass Max for Live device concept: a coloured reverb with a frequency-shifting tail.

## Intent

Create a reverb that can move from dark and textural to more uncanny, spectral space. The first version should already feel musically useful on sends, percussion, stabs, and atmospheric layers.

## Signal flow

`input -> pre-colour -> diffusion -> reverb tank -> tail tone shaping -> frequency shifter -> wet mix / duck / output`

## v1 goals

- musically usable reverb core
- controllable colour before and after the tank
- frequency shift in the tail, from subtle to clearly audible
- basic ducking or pulse option later if useful
- stable gain staging

## Likely controls

- Dry/Wet
- Input Drive
- Tone
- Size
- Diffusion
- Decay
- Damping
- Shift Amount
- Shift Blend
- Duck
- Output

## Development approach

- thin Max shell for parameters and Ableton integration
- gen~ / genexpr for DSP core
- keep the first pass simple enough to iterate fast
- first DSP draft is intentionally a compact smear / bloom core plus sideband-style tail motion, not yet a full long-delay FDN or pure quadrature shifter

## Later passes

- replace or extend the core with longer delay-based diffusion
- upgrade the shifter to a more proper quadrature / Hilbert approach
- analog-style warmth and instability
- stereo decorrelation tricks
- rhythmic modulation options
- presets for send-space, spectral smear, haunted plate, dubby ghost tail
