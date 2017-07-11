# raspbian-pi-setup
Setup your raspberry pi with minimal PIXEL desktop

### Step 0 - Flush your SD card with Raspbian Lite image
Visit https://www.raspberrypi.org/downloads/raspbian/ for raspbian lite image

### Step 1 - Execute raspi-config for basic configuration
```
sudo raspi-config
```
1. Change hostname
2. Change locale, keyboard layout, timezone, wifi country
3. Expand partition - Advanced Options -> Expand Filesystem
4. Reboot

### Step 2 - Setup Wifi (Optional)
```
wpa_passphrase "$SSID" "$WIFI_PASSWORD" | sudo tee -a /etc/wpa_supplicant/wpa_supplicant.conf > /dev/null
sudo wpa_cli reconfigure
```

### Step 3 - Update Raspbian
```
curl httsp://bedatse.github.io/raspberry-pi-setup/setup.sh | bash -
```