AddAutoloadDir("#SCRIPTDIR/plugins")
SetFilterMTMode("DEFAULT_MT_MODE", 2)
Setmemorymax(384)

InterFrame(Preset="Fast", Tuning="Animation", GPU=false, Cores=#CPUS)

Prefetch(#CPUS)