vagrant-kiosk
=============

Vagrantfile and ansible scripts to build web kiosks.

Runs chromium-browser full-screen in app mode for the configured URL.

Build your own kiosk
--------------------

* Clone this repository
* Edit `conf/vars.yml`
* vagrant up


Build your ISO
--------------

From trusty

        sudo apt-get install uck

Unpack distro

        sudo uck-remaster-unpack-iso ubuntu-mini-remix-14.04.1-i386.iso
        sudo uck-remaster-unpack-rootfs
        sudo uck-remaster-chroot-rootfs

Now run ansible

        sudo ansible-playbook -i hosts kiosk.yml

And pack/generate the iso

        sudo uck-remaster-pack-rootfs
        sudo uck-remaster-pack-iso

File will be available at `~/tmp/remaster-new-files/livecd.iso`
