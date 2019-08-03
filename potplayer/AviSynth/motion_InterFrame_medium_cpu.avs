AddAutoloadDir("#SCRIPTDIR/plugins")
SetFilterMTMode("DEFAULT_MT_MODE", 2)

InterFrame(Preset="Medium", Tuning="Animation", GPU=false, Cores=#CPUS)

Prefetch(#CPUS)