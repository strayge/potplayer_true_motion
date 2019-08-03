AddAutoloadDir("#SCRIPTDIR/plugins")
SetFilterMTMode("DEFAULT_MT_MODE", 2)

InterFrame(Preset="Medium", Tuning="Animation", GPU=true, Cores=#CPUS)

Prefetch(#CPUS)