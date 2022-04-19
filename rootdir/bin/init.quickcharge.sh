#!/system/bin/sh
# This script will be executed in core service mode

# Fast Charger
chmod 0777 /sys/kernel/fast_charge/force_fast_charge
echo 1 > /sys/kernel/fast_charge/force_fast_charge
chmod 0444 /sys/kernel/fast_charge/force_fast_charge

# limit current to 5k
chmod 0777 /sys/class/power_supply/battery/constant_charge_current_max
echo 5000000 > /sys/class/power_supply/battery/constant_charge_current_max
chmod 0444 /sys/class/power_supply/battery/constant_charge_current_max

chmod 0755 /sys/class/power_supply/battery/input_current_limited
echo 0 > /sys/class/power_supply/battery/input_current_limited
chmod 0644 /sys/class/power_supply/battery/input_current_limited

chmod 0755 /sys/class/power_supply/battery/step_charging_enabled
echo 1 > /sys/class/power_supply/battery/step_charging_enabled
chmod 0644 /sys/class/power_supply/battery/step_charging_enabled

chmod 0755 /sys/class/power_supply/battery/sw_jeita_enabled
echo 1 > /sys/class/power_supply/battery/sw_jeita_enabled
chmod 0644 /sys/class/power_supply/battery/sw_jeita_enabled

chmod 0755 /sys/class/power_supply/battery/battery_charging_enabled
echo 1 > /sys/class/power_supply/battery/battery_charging_enabled
chmod 0644 /sys/class/power_supply/battery/battery_charging_enabled

chmod 0755 /sys/class/power_supply/battery/subsystem/usb/pd_active
echo 0 > /sys/class/power_supply/battery/subsystem/usb/pd_active
chmod 0644 /sys/class/power_supply/battery/subsystem/usb/pd_active

# limit battery temp to 42c
chmod 0755 /sys/class/power_supply/battery/charger_temp
echo 420 > /sys/class/power_supply/battery/charger_temp
chmod 0644 /sys/class/power_supply/battery/charger_temp

chmod 0755 /sys/class/qcom-battery/restrict_chg
echo 0 > /sys/class/qcom-battery/restrict_chg
chmod 0644 /sys/class/qcom-battery/restrict_chg

echo Y > /sys/module/lpm_levels/parameters/sleep_disabled

echo N > /sys/module/sync/parameters/fsync_enabled

# Power Saving
chmod 755 /sys/module/workqueue/parameters/power_efficient
echo Y > /sys/module/workqueue/parameters/power_efficient
chmod 664 /sys/module/workqueue/parameters/power_efficient
