# Analytic Password Cracking Box
Vagrant box with Ubuntu 18.04 Bionic Beaver with desktop system installed. Comes with the [analytic password cracking tool](https://github.com/UChicagoSUPERgroup/analytic-password-cracking) all set up and ready to go.

## Prerequisites
You'll need [Oracle VM VirtualBox](https://www.virtualbox.org/wiki/Downloads) installed as well as [Vagrant](https://www.vagrantup.com/downloads.html).

### Plugins
You'll need the `vagrant-reload` plugin because the box needs a restart after provisioning. Install it like this:

```bash
vagrant plugin install vagrant-reload
```

## Setup
Like any Vagrant box, run:

```bash
vagrant up
```

From there, use:

```bash
vagrant ssh
```

To access the box over SSH if you like, though there's a full desktop system installed for you to interact with if you like.

## Usage
For usage information, consult the repo for the [analytic password cracking tool](https://github.com/UChicagoSUPERgroup/analytic-password-cracking) repo. The utility is installed to `~/analytic-password-cracking`.

## Details
The box is running Ubuntu "Bionic Beaver" 18.04 LTS (Desktop) with:

* Gnome 3 Desktop
* VirtualBox Guest Additions 6.0.4
* The [analytic password cracking tool](https://github.com/UChicagoSUPERgroup/analytic-password-cracking) from @UChicagoSUPERgroup
