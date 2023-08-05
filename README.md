<p align="center">
<img src="https://github.com/Meowix-Linux/Meowix-ISO/blob/main/assets/meowix.svg?raw=true" width=25% height=25%>
</p>

<h1 align="center">Meowix Linux ISOs</h1>

<p align="center">The repository that hosts the Archiso profile and ISO releases for Meowix Linux</p>

<p align="center">
<a href="https://www.gnu.org/licenses/gpl-3.0.en.html"><img alt="GPLv3 License" src="https://img.shields.io/badge/License-GPLv3-red.svg"></a>
<a href="https://archlinux.org/"><img alt="Arch Linux Base" src="https://img.shields.io/badge/Base-Arch%20Linux-blue.svg"></a>
<a href="https://github.com/catppuccin/catppuccin/"><img alt="Catppuccin Mocha Theme" src="https://img.shields.io/badge/Theme-Catppuccin%20Mocha-pink.svg"></a>
<a href="https://github.com/baskerville/bspwm"><img alt="BSPWM Window Manager" src="https://img.shields.io/badge/Window%20Manager-BSPWM-green.svg"></a>
</p>

## What's Meowix?

Meowix Linux is an [Arch Linux](https://archlinux.org/)-based distribution that heavily utilizes Catppuccin. From the official [Catppuccin GitHub repository](https://github.com/catppuccin/catppuccin)'s README:

> Catppuccin is a community-driven pastel theme that aims to be the middle ground between low and high contrast themes.

In particular, Meowix Linux uses the Mocha flavor of Catppuccin.

Meowix also uses the highly configurable [BSPWM](https://github.com/baskerville/bspwm).

Meowix Linux aims to make the installation of a beautiful and efficient system easier than ever before!

## Installation

**Meowix is currently in EXTREMELY early stages.** Therefore, there are no releases *just yet* - keep your eyes peeled, though. In the meantime, you can build a Meowix ISO yourself!

### Building the Archiso profile

You'll need an Arch Linux([-based](https://wiki.archlinux.org/title/Arch-based_distributions)) system to build a Meowix ISO.

1. Install the `archiso` package:
```bash
sudo pacman -S archiso
```

2. Clone this repository (you'll need to install `git` if you don't have it):
```bash
git clone https://github.com/Meowix-Linux/Meowix-ISO/
```

3. Change directories into the repository:
```bash
cd Meowix-ISO/
```

4. Build the ISO:
```bash
sudo mkarchiso -v releng/
```

After the above command completes, there should be an ISO in the `out/` directory. You can remove the work directory:
```bash
sudo rm -rf work/
```

### Installing Meowix

#### Burning the USB and booting to the live environment

To install the ISO, first burn it to a blank USB drive using a tool such as [Popsicle](https://github.com/pop-os/popsicle), then restart and boot from the USB by selecting it as your boot device (refer to your motherboard's manual for details). Note that Secure Boot must be disabled to boot the live environment.

Wait for the root filesystem to be copied to RAM and for the system to boot. This could take 5-10 minutes.

When the wallpaper and status bar appears, connect to the internet:

#### Connecting to the internet with WiFi

Click on the WiFi module in the status bar to open the GUI wifi tool (`iwgtk`).

Click the "Connect" button for the WiFi network you wish to connect to. This will prompt you for your password. After entering it and connecting, confirm your connection by checking the status bar's WiFi module (it may take a few seconds to update).

Press `Super + W` to close the window.

#### Connecting to the internet with a mobile broadband (WWAN) modem

There is no mobile broadband/WWAN modem GUI tool installed. If you need to connect using one, open a terminal with `Super + Enter` and use the CLI utility `mmcli`. Steps to use `mmcli` are [here](https://wiki.archlinux.org/title/Mobile_broadband_modem#ModemManager).

The ModemManager configuration will not copy over to the installed system; you will need to reconnect after installation.

As there is no mobile broadband/WWAN modem module for the status bar, you can verify internet connectivity with `ping` instead:

`ping example.com`

Consider adding a mobile broadband/WWAN modem module to the status bar (`polybar`) after installation.

#### Connecting to the internet through Ethernet, WLAN, or WWAN interfaces using DHCP

This should work automatically.

As there is no Ethernet/WLAN/WWAN module for the status bar, you can open a terminal with `Super + Enter` and verify internet connectivity with `ping` instead:

`ping example.com`

Consider adding a Ethernet/WLAN/WWAN module to the status bar (`polybar`) after installation.

#### Using the installer program

After connecting to the internet, press `Super + D` to open the application menu, then start typing to search for "Install".

An option that says "Install System" should come up. Press enter.

Then, follow the steps in the installer. Make sure to keep your USB drive plugged in. When the installation process finishes, check the box to restart the system, then exit the installer. The system should restart automatically.

#### Post installation

First, boot into your new system by selecting the new "Meowix" option as your boot device.

At this point, you can unplug the USB drive.

You should now see a display manager (login screen). Log in with the password you chose in the installer.

Wait for the system to start. You should now see a window open that will instruct you to enter your account password. Do so, then wait for some finalization tasks to finish up.

After the post-install script finishes, you will be instructed to press any key to exit. Do so.

Congratulations! Meowix Linux is now fully installed on your computer and you can set it up to your heart's content.

## License

This repository is licensed under the [GPLv3 License](https://www.gnu.org/licenses/gpl-3.0.en.html). The Catppuccin theme is licensed under the [MIT License](https://opensource.org/license/mit/). Licenses for other software included in the distribution are usually found within the files provided by their respective packages. If you have found that Meowix has violated any licenses or copyrights, please don't hesitate to open an issue on the repository/repositories that do so and we will do our best to respond in a timely manner.
