#!/sbin/sh
echo 120  > /sys/class/leds/lcd-backlight/brightness
cat /sys/devices/platform/ab8500-i2c.0/ab8500-usb.0/boot_time_device > /sys/devices/platform/ab8500-i2c.0/ab8500-usb.0/boot_time_device
