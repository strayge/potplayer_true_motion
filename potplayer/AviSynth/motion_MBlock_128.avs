﻿AddAutoloadDir("#SCRIPTDIR/plugins")
SetFilterMTMode("DEFAULT_MT_MODE", 2)
SetMemoryMax(128)

super=MSuper(pel=1, hpad=0, vpad=0, chroma=true, sharp=0, rfilter=0)
backward=MAnalyse(super, chroma=false, isb=true, search=2, searchparam=0, pelsearch=0, truemotion=true, blksize=16, blksizev=16)
forward=MAnalyse(super, chroma=false, isb=false, search=2, searchparam=0, pelsearch=0, truemotion=true, blksize=16, blksizev=16)
MBlockFps(super, backward, forward, num=FramerateNumerator(last)*2, den=FramerateDenominator(last)*1)

Prefetch(#CPUS)