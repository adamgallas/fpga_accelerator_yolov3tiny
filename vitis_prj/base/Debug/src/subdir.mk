################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/accel.c \
../src/accel_data.c \
../src/dp_interrupt.c \
../src/dp_setup.c \
../src/main.c 

OBJS += \
./src/accel.o \
./src/accel_data.o \
./src/dp_interrupt.o \
./src/dp_setup.o \
./src/main.o 

C_DEPS += \
./src/accel.d \
./src/accel_data.d \
./src/dp_interrupt.d \
./src/dp_setup.d \
./src/main.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v8 gcc compiler'
	aarch64-none-elf-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -ID:/FINAL/vitis/base_wrapper/export/base_wrapper/sw/base_wrapper/domain_psu_cortexa53_0/bspinclude/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


