# tschiou-stab

Short cinematic electric stab generator for Max for Live.

## Intent

Create a sharp, wide, tasteful synthetic stab that feels like a burst of electricity collapsing from high to low: a bright `tsch` transient into a falling resonant `iou` body, with just enough stereo tail to feel cinematic rather than gimmicky.

## Signal flow

`MIDI pitch/velocity -> zap exciter + tonal body + sub support -> pitch drop -> colour/saturation -> short stereo tail -> output`

## v1 goals

- convincing short electric stab core
- strong downward pitch gesture
- bright noisy transient plus tonal body
- wide tail while keeping the center powerful
- small set of macro controls that move musically

## Core controls

- Zap — noisy electrical transient amount
- Drop — depth of the downward pitch sweep
- Body — tonal weight / low-mid support
- Bite — FM edge + saturation + transient sharpness
- Width — stereo spread of the tail/high layer
- Tail — amount and regeneration of the short cinematic tail
- Length — overall stab decay
- Tone — dark to bright spectral tilt
- Output — final trim

## Files

- `src/tschiou-stab.maxpat` — outer M4L shell scaffold
- `src/gen/tschiou_core.genexpr` — core DSP voice sketch in text form

## Notes

v1 is intentionally built as a single distinct device rather than a huge synth. The core is biased toward hypnotic-techno-friendly articulation: short, tense, dramatic, and easy to automate.
