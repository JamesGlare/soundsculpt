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
- DSP core is a compact stereo smear / bloom with cross-channel feedback, not yet a full long-delay FDN
- frequency shifter is now a proper SSB Hilbert-pair design (4-section allpass network, Niemitalo coefficients) instead of the earlier ring-mod placeholder
- both gen~ modules are stereo (in 1, in 2 / out 1, out 2) and output 100% wet; the wrapper handles dry/wet mixing

## Later passes

- replace or extend the core with longer delay-based diffusion (delay lines + FDN matrix)
- analog-style warmth and instability (drift, bandwidth limits, soft-clip on feedback path)
- richer stereo decorrelation (Schroeder allpass chains, modulated diffusion)
- rhythmic modulation options
- presets for send-space, spectral smear, haunted plate, dubby ghost tail
