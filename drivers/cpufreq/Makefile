# CPUfreq core
obj-$(CONFIG_CPU_FREQ)			+= cpufreq.o
# CPUfreq stats
obj-$(CONFIG_CPU_FREQ_STAT)             += cpufreq_stats.o

# CPU-boost framework
obj-$(CONFIG_CPU_BOOST_FRAMEWORK)	+= cpu_boost.o

# Retain CPU Freqs after hotplug
obj-$(CONFIG_CPU_FREQ_RETAIN_MIN_MAX)	+= retain_cpu_freq.o

# CPUfreq governors 
obj-$(CONFIG_CPU_FREQ_GOV_PERFORMANCE)	+= cpufreq_performance.o
obj-$(CONFIG_CPU_FREQ_GOV_POWERSAVE)	+= cpufreq_powersave.o
obj-$(CONFIG_CPU_FREQ_GOV_USERSPACE)	+= cpufreq_userspace.o
obj-$(CONFIG_CPU_FREQ_GOV_ONDEMAND)	+= cpufreq_ondemand.o
obj-$(CONFIG_CPU_FREQ_GOV_CONSERVATIVE)	+= cpufreq_conservative.o
obj-$(CONFIG_CPU_FREQ_GOV_INTERACTIVE)	+= cpufreq_interactive.o
obj-$(CONFIG_CPU_FREQ_GOV_SMARTASS2)    += cpufreq_smartass2.o
obj-$(CONFIG_CPU_FREQ_GOV_LULZACTIVEW)  += cpufreq_lulzactivew.o
obj-$(CONFIG_CPU_FREQ_GOV_LULZACTIVE)   += cpufreq_lulzactive.o
obj-$(CONFIG_CPU_FREQ_GOV_SCARY)	+= cpufreq_scary.o

# CPUfreq cross-arch helpers
obj-$(CONFIG_CPU_FREQ_TABLE)		+= freq_table.o

