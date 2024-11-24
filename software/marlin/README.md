# Information and config files needed to build/upgrade Marlin

## Marlin source:
https://github.com/MarlinFirmware/Marlin

## Configuration source
https://github.com/MarlinFirmware/Configurations/archive/release-2.1.2.2.zip

## Current setup:
* Ender-3 with glass bed or textured bed
* BTT SKR Mini E3 V2.0 (STM32F103RCT6 but works with extended memory (RET6))

## Incoming HW improvements:
* BIQU MicroProbe V2.0
* BIQU Filament runout sensor

## Sofware features to add
* Arc support
* Input Shaping
* Linear Advance

## TODO
* get config parameters again (stepper calibration etc.)
* print microprobe mount
* enable ABL, Input Shaping, Linear Advance, etc.
* enable filament runout sensor
* design Filament encoder with mechanical switch (lobes?)

## Current config parameters
```
Send: M503
Recv: echo:  G21    ; Units in mm (mm)
Recv: echo:  M149 C ; Units in Celsius
Recv: 
Recv: echo:; Filament settings: Disabled
Recv: echo:  M200 S0 D1.75
Recv: echo:; Steps per unit:
Recv: echo: M92 X80.00 Y80.00 Z400.00 E93.00
Recv: echo:; Maximum feedrates (units/s):
Recv: echo:  M203 X500.00 Y500.00 Z5.00 E25.00
Recv: echo:; Maximum Acceleration (units/s2):
Recv: echo:  M201 X500.00 Y500.00 Z100.00 E5000.00
Recv: echo:; Acceleration (units/s2): P<print_accel> R<retract_accel> T<travel_accel>
Recv: echo:  M204 P500.00 R500.00 T500.00
Recv: echo:; Advanced: B<min_segment_time_us> S<min_feedrate> T<min_travel_feedrate> J<junc_dev>
Recv: echo:  M205 B20000.00 S0.00 T0.00 J0.08
Recv: echo:; Home offset:
Recv: echo:  M206 X0.00 Y0.00 Z0.00
Recv: echo:; Mesh Bed Leveling:
Recv: echo:  M420 S0 Z0.00
Recv: echo:  G29 S3 I0 J0 Z-0.00000
Recv: echo:  G29 S3 I1 J0 Z-0.12500
Recv: echo:  G29 S3 I2 J0 Z-0.12500
Recv: echo:  G29 S3 I0 J1 Z0.15000
Recv: echo:  G29 S3 I1 J1 Z0.17500
Recv: echo:  G29 S3 I2 J1 Z-0.02500
Recv: echo:  G29 S3 I0 J2 Z0.22500
Recv: echo:  G29 S3 I1 J2 Z0.10000
Recv: echo:  G29 S3 I2 J2 Z-0.00000
Recv: echo:  G29 S4 Z0.00000
Recv: echo:; Material heatup parameters:
Recv: echo:  M145 S0 H185 B45 F255
Recv: echo:  M145 S1 H240 B110 F255
Recv: echo:; PID settings:
Recv: echo:  M301 P21.73 I1.54 D76.55
Recv: ; Controller Fan
Recv: echo:  M710 S255 I0 A1 D60 ; (100% 0%)
Recv: echo:; Stepper driver current:
Recv: echo:  M906 X580 Y580 Z580
Recv: echo:  M906 T0 E650
Recv: 
Recv: echo:; Driver stepping mode:
Recv: echo:  M569 S1 X Y Z
Recv: echo:  M569 S1 T0 E
Recv: echo:; Linear Advance:
Recv: echo:  M900 K0.00
Recv: echo:; Filament load/unload lengths:
Recv: echo:  M603 L350.00 U400.00
Recv: ok
```
