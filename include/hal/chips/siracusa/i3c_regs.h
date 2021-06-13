// Generated register defines for i3c_config

#ifndef _I3C_CONFIG_REG_DEFS_
#define _I3C_CONFIG_REG_DEFS_

#ifdef __cplusplus
extern "C" {
#endif
// Register width
#define I3C_CONFIG_PARAM_REG_WIDTH 32

// Change the I3C device role and perform software reset of the whole IP
#define I3C_CONFIG_MODERST_REG_OFFSET 0x0
#define I3C_CONFIG_MODERST_GLOBRST_BIT 0
#define I3C_CONFIG_MODERST_LOCRST_BIT 1

// Configure Device Role and reset duration
#define I3C_CONFIG_CFG1_REG_OFFSET 0x4
#define I3C_CONFIG_CFG1_RSTCYCLES_MASK 0xff
#define I3C_CONFIG_CFG1_RSTCYCLES_OFFSET 0
#define I3C_CONFIG_CFG1_RSTCYCLES_FIELD \
  ((bitfield_field32_t) { .mask = I3C_CONFIG_CFG1_RSTCYCLES_MASK, .index = I3C_CONFIG_CFG1_RSTCYCLES_OFFSET })

#ifdef __cplusplus
}  // extern "C"
#endif
#endif  // _I3C_CONFIG_REG_DEFS_
// End generated register defines for i3c_config