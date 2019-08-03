AddAutoloadDir("#SCRIPTDIR/plugins")
SetFilterMTMode("DEFAULT_MT_MODE", 2)
SetMemoryMax(128)

super=MSuper(pel=1, hpad=0, vpad=0)
backward_1=MAnalyse(super, chroma=false, isb=true, blksize=32, blksizev=32, searchparam=3, plevel=0, search=3, badrange=(-24))
forward_1=MAnalyse(super, chroma=false, isb=false, blksize=32, blksizev=32, searchparam=3, plevel=0, search=3, badrange=(-24))
backward_2 = MRecalculate(super, chroma=false, backward_1, blksize=8, blksizev=8, searchparam=0, search=3)
forward_2 = MRecalculate(super, chroma=false, forward_1, blksize=8, blksizev=8, searchparam=0, search=3)
MBlockFps(super, backward_2, forward_2, num=FramerateNumerator(last)*2, den=FramerateDenominator(last)*1, mode=2)

Prefetch(#CPUS)