ifdef USE_IBEX
PULP_LDFLAGS      +=
PULP_CFLAGS       +=  -D__ibex__ -U__riscv__ -UARCHI_CORE_HAS_PULPV2 -DRV_ISA_RV32
PULP_ARCH_CFLAGS ?=  -march=rv32imc
PULP_ARCH_LDFLAGS ?=  -march=rv32imc
PULP_ARCH_OBJDFLAGS ?= -Mmarch=rv32imc
else
PULP_LDFLAGS      +=
PULP_CFLAGS       +=  -D__riscv__
PULP_ARCH_CFLAGS ?=  -march=rv32imcxgap9
PULP_ARCH_LDFLAGS ?=  -march=rv32imcxgap9
PULP_ARCH_OBJDFLAGS ?= -Mmarch=rv32imcxgap9
endif

PULP_CFLAGS    += -fdata-sections -ffunction-sections -include chips/siracusa/config.h -I$(PULPRT_HOME)/include/chips/siracusa -I$(PULPRT_HOME)/drivers/i3c/include -I$(PULPRT_HOME)/drivers/siracusa_padmux/include
PULP_OMP_CFLAGS    += -fopenmp -mnativeomp
PULP_LDFLAGS += -nostartfiles -nostdlib -Wl,--gc-sections -L$(PULPRT_HOME)/kernel -Tchips/pulp/link.ld -lgcc

PULP_CC = riscv32-unknown-elf-gcc
PULP_AR ?= riscv32-unknown-elf-ar
PULP_LD ?= riscv32-unknown-elf-gcc
PULP_OBJDUMP ?= riscv32-unknown-elf-objdump

fc/archi=riscv
pe/archi=riscv
pulp_chip=siracusa
pulp_chip_family=pulp
cluster/version=5
fc_itc/version=1
udma/cpi/version=1
udma/i2c/version=2
soc/fll/version=1
udma/i2s/version=2
udma/uart/version=1
event_unit/version=3
perf_counters=True
fll/version=1
padframe/version=1
udma/spim/version=3
gpio/version=3
udma/archi=3
udma/version=3
soc_eu/version=2


# FLL
PULP_SRCS     += kernel/chips/siracusa/pll.c
PULP_SRCS     += kernel/chips/siracusa/soc.c

# I3C driver
PULP_SRCS     += $(PULPRT_HOME)/drivers/i3c/src/cdn_print.c
PULP_SRCS     += $(PULPRT_HOME)/drivers/i3c/src/command_list.c
PULP_SRCS     += $(PULPRT_HOME)/drivers/i3c/src/i3c.c
PULP_SRCS     += $(PULPRT_HOME)/drivers/i3c/src/i3c_obj_if.c
PULP_SRCS     += $(PULPRT_HOME)/drivers/i3c/src/cps_impl.c

# Padmultiplexing


include $(PULPRT_HOME)/rules/pulpos/configs/default.mk

ifeq '$(platform)' 'fpga'
CONFIG_IO_UART=1
endif

include $(PULPRT_HOME)/rules/pulpos/default_rules.mk
