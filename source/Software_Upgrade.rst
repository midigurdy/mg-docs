Software Upgrades
=================

From time to time it might be necessary to upgrade the Software running on the
MidiGurdy to a new version. Either to fix existing problems or to take
advantage of new features.

.. admonition:: MidiGurdy Software Download

    The newest versions of the MidiGurdy software can always be found in the
    download section of the MidiGurdy website: http://www.midigurdy.com/downloads/


Software Version and Compatibility
----------------------------------

The versioning of the software follows a simple scheme: <Major Version>.<Minor
Version>.<Patch level>. For example, the Version number “1.11.5” is major
version 1, minor version 11 and patch level 5.

The patch level is increased for small changes or bugfixes that don’t change
the behaviour of the instrument in a noticeable way (apart from fixing the bug,
of course).

The minor version is increased for new features or changed behaviour that are
noticeable for the user, but still work with your existing configuration and
presets.

A new major version indicates that there are changes that are incompatible with
the previous version and therefore require you to backup your configuration
before the upgrade and restore ( or recreate) it again afterwards.

.. admonition:: Always read the release notes!
    :class: warning

    When upgrading to a new version, please read the release notes carefully before upgrading!


Upgrading via USB stick
-----------------------

In order to upgrade the MidiGurdy software, you will need a FAT/FAT32 formatted
USB stick with sufficient space for the upgrade file. Download the new software
release from the MidiGurdy website to your computer and store it on the USB
stick. Make sure you store it with the exact filename, i.e. the version 1.2.3
will be called “midigurdy-1.2.3.swu”

Eject the USB stick from your computer and attach it to the MidiGurdy via the
USB-A host port. After a few seconds the MidiGurdy will inform you that it has
found an upgrade file on the USB stick and ask if you want to go ahead with the
upgrade. Follow the instructions on the display to complete the upgrade
process.

.. admonition:: Important: Do not interrupt the upgrade!
    :class: danger

    Do not switch off the MidiGurdy while the upgrade is in progress and ensure
    that the instrument is supplied with sufficient power before starting the
    upgrade!

During the upgrade, the String Buttons in the tangent box lid will flash to
indicate that the upgrade is in progress. Once the upgrade has finished, remove
the USB stick from the MidiGurdy and press any button to restart the
instrument. After a successful upgrade, the version number shown during
start-up should match the version you wanted to upgrade to.


Troubleshooting
---------------

If the MidiGurdy does not start the upgrade process a few seconds after you
have inserted the USB stick, please double-check if the upgrade file has
actually been written to the USB stick and that the file is called
“midigurdy-X.Y.Z.swu”, where X, Y and Z indicate the version you are upgrading
to.

.. admonition:: If your USB stick does not work
    :class: note

    There are some USB sticks that draw a lot of power from the USB port in
    order to function properly (especially sticks with very high capacity or
    USB 3.0 transfer speeds). If your stick is not recognized, please try a
    different USB stick with a lower power consumption.

.. admonition:: MacOS Users: Please format your USB stick with FAT / FAT32

    When you format a USB stick with MacOS, you can choose between "MacOS
    Extended", "AFPS" and "FAT" filesystems. Please make sure to format your stick
    with **FAT** to make it work in the MidiGurdy.

In case the upgrade process was interrupted by a power failure or has failed
due to a different reason, the previous software version will still be intact
and working. Simply restarting the MidiGurdy should bring it back into a
working state.

In case the instrument does not start again after all, please contact us for
support. As the MidiGurdy uses a replaceable SD-Card for data storage, you will
always be able to revive your instrument if an upgrade went horribly wrong.


Additional Notes
----------------
You can always upgrade or downgrade to any version of the MidiGurdy software.
But please take special care when upgrading or downgrading between different
major versions!
