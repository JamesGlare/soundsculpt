# soundsculpt

A small lab for custom Ableton devices, starting with Max for Live and staying friendly to text-based DSP work.

## Repo shape

- `devices/` - self-contained devices
- `shared/` - reusable Max / gen building blocks
- `docs/` - design notes and conventions
- `experiments/` - sketches and rough tests
- `audio/` - test loops and renders
- `scripts/` - helper scripts for packaging and exports

## Current plan

Start with Max for Live devices built from:
- a thin `.maxpat` shell for Ableton integration and UI
- `gen~` / `genexpr` DSP cores for most of the audio logic

## First device

`devices/coloured-shift-reverb/`

A first-pass coloured reverb with a frequency-shifting tail. The goal is not perfection on day one, but a strong, iteratable prototype with clear signal flow and room for later analog-style colour.
