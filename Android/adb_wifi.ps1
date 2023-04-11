$device_ip = adb -d shell "ip addr show wlan0 | grep `"inet\ `" | sed `"s/^[\ \\t]*//`" | cut -d `"\ `" -f 2 | cut -d `"/`" -f 1"
adb -d tcpip 5555
adb connect $device_ip
