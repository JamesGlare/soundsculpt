# Device Template

## Name

Short, distinctive, slightly evocative.

## Intent

What this device is for in one or two sentences.

## Signal flow

Write the chain explicitly, for example:

`input -> colour -> diffusion -> reverb tank -> frequency shifter -> damping -> output`

## Core controls

- Dry/Wet
- Input
- Output
- 5 to 10 device-specific controls max for v1

## DSP split

### Max shell
- UI
- parameter mapping
- sync and modulation plumbing
- packaging as `.amxd`

### gen~ / genexpr
- sample-level DSP
- delay lines
- diffusion
- filters
- shifters
- saturators

## Later passes

- analog character
- preset curation
- UI polish
- gain staging and edge-case tuning
