# Configs for PotPlayer to enable true motion

## Installation

Copy all from `potplayer/` to your `PotPlayer/` directory  

**Note:** `potplayer` directory has x64 versions of dlls (x86 ones can be extracted from `all_plugins`).

PotPlayer -> Preferences -> Video -> AviSynth:  
1. ✔ Enable AviSynth  
2. ✔ Add potplayer_source  
3. Select `motion_*` in `Load script`  

## Script selecting

**TL;DR**: I prefer `motion_MBlock2` with multiplier depending on monitor refresh rate.

Scripts `motion_MBlock*` works as multiplier fps (ex.: 24 -> 48, 72, 96, 120, 144).  
`motion_MBlock2` has better quality over `motion_MBlock`.  

Scripts `motion_InterFrame` always set rate to 60 fps.  

## Performance comparison

input: 1080p 24fps video

| Script | FPS | GPU Usage | CPU Usage |
| --- | --- | --- | --- |
| - | 24 | 9% | 1% |
| motion_InterFrame_fast_cpu | 60 | 12% | 2% |
| motion_InterFrame_medium_cpu | 60 | 12% | 4% |
| motion_InterFrame_fast_gpu | 60 | 20% | 2% |
| motion_InterFrame_medium_gpu | 60 | 21% | 2% |
| motion_MBlock_x2 | 48 | 15% | 2% |
| motion_MBlock_x4 | 96 | 18% | 4% |
| motion_MBlock_x6 | 144 | 18% | 7% |
| motion_MBlock2_x2 | 48 | 15% | 2% |
| motion_MBlock2_x4 | 96 | 17% | 7% |
| motion_MBlock2_x6 | 144 | 17% | 11% |

## Source 

- mvtools2.dll - https://github.com/pinterf/mvtools  
- AviSynth.dll - https://github.com/pinterf/AviSynthPlus  
- InterFrame2.avsi - https://www.spirton.com/interframe/  
- svpflow1_64.dll - https://www.svp-team.com/wiki/Download (Avisynth and Vapoursynth plugins)
