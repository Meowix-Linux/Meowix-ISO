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

**Meowix is currently in EXTREMELY early stages.** Therefore, there are no releases *just yet* - keep your eyes peeled, though. ~~In the meantime, you can build a Meowix ISO yourself!~~ *You caught us at a bad time - no profile for Archiso is avaliable yet. Come back in a day or two, and we'll likely have one up by then.*

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
rm -rf work/
```
To install the ISO, burn it to a blank USB drive using a tool such as [Popsicle](https://github.com/pop-os/popsicle), then restart and boot from the USB. Note that Secure Boot must be disabled to boot the live environment.

## License

This repository is licensed under the [GPLv3 License](https://www.gnu.org/licenses/gpl-3.0.en.html). The Catppuccin theme is licensed under the [MIT License](https://opensource.org/license/mit/). Licenses for other software included in the distribution are usually found within the files provided by their respective packages. If you have found that Meowix has violated any licenses or copyrights, please don't hesitate to open an issue on the repository/repositories that do so and we will do our best to respond in a timely manner.
