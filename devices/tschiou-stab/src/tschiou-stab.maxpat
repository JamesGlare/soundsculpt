{
  "patcher": {
    "fileversion": 1,
    "appversion": {
      "major": 8,
      "minor": 0,
      "revision": 0,
      "architecture": "x64"
    },
    "classnamespace": "box",
    "rect": [34.0, 79.0, 920.0, 620.0],
    "bglocked": 0,
    "openinpresentation": 0,
    "default_fontsize": 12.0,
    "default_fontface": 0,
    "default_fontname": "Arial",
    "gridonopen": 1,
    "gridsize": [15.0, 15.0],
    "gridsnaponopen": 1,
    "toolbarvisible": 1,
    "boxes": [
      {
        "box": {
          "id": "obj-1",
          "maxclass": "comment",
          "text": "tschiou-stab shell scaffold",
          "patching_rect": [30.0, 24.0, 220.0, 20.0]
        }
      },
      {
        "box": {
          "id": "obj-2",
          "maxclass": "comment",
          "linecount": 5,
          "text": "Outer Max for Live shell for a short cinematic electric stab generator.\nRecommended wrapper: notein -> stripnote -> trigger/click~ + mtof + velocity normalisation -> gen~ voice -> level/output.\nCore DSP lives in src/gen/tschiou_core.genexpr.\nKeep wrapper thin; expose only the main macro controls.",
          "patching_rect": [30.0, 54.0, 470.0, 74.0]
        }
      },
      {
        "box": {
          "id": "obj-3",
          "maxclass": "comment",
          "text": "Suggested controls: Zap / Drop / Body / Bite / Width / Tail / Length / Tone / Output",
          "patching_rect": [30.0, 146.0, 520.0, 20.0]
        }
      },
      {
        "box": {
          "id": "obj-4",
          "maxclass": "comment",
          "linecount": 10,
          "text": "Suggested object layout:\n1. notein -> stripnote\n2. pitch -> trigger b i -> click~ + mtof -> sig~\n3. velocity -> / 127. -> sig~\n4. feed freq / trig / vel into a gen~ voice built from tschiou_core.genexpr\n5. post voice: live.gain~ -> plugout~\n6. optionally duplicate later as poly~ if a future pass wants overlap\n\nThis file is a scaffold placeholder so the repo has a named shell ready for Live wiring.",
          "patching_rect": [30.0, 188.0, 520.0, 145.0]
        }
      }
    ],
    "lines": []
  }
}
