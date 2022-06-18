
#ifndef _V_GAMMA_LUT_CONFIG_H_
#define _V_GAMMA_LUT_CONFIG_H_

#define SAMPLES_PER_CLOCK       1
#define MAX_COLS                2048
#define MAX_ROWS                1024
#define IN_MAX_DATA_WIDTH       10
#define OUT_MAX_DATA_WIDTH      10

#define NR_COMPONENTS           3
#define IN_BITS_PER_SAMPLE      (NR_COMPONENTS*IN_MAX_DATA_WIDTH)
#define IN_BITS_PER_CLOCK       (IN_BITS_PER_SAMPLE*SAMPLES_PER_CLOCK)
#define IN_AXIS_DATA_WIDTH      ((IN_BITS_PER_CLOCK+7)*8/8) // Rounded up to bytes
#define OUT_BITS_PER_SAMPLE     (NR_COMPONENTS*OUT_MAX_DATA_WIDTH)
#define OUT_BITS_PER_CLOCK      (OUT_BITS_PER_SAMPLE*SAMPLES_PER_CLOCK)
#define OUT_AXIS_DATA_WIDTH     ((OUT_BITS_PER_CLOCK+7)*8/8)    // Rounded up to bytes

#define ENABLE_INTERPOLATION    0
#define NR_LUTS                 3
#define LUT_SIZE                ((ENABLE_INTERPOLATION)? 1024 : (1<<IN_MAX_DATA_WIDTH))

#endif
