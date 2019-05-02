.. _web-interface:

The Web Interface
=================

When you connect the MidiGurdy to a desktop computer, laptop or tablet via the
USB connection, you will be able to access the Web Interface to configure the
instrument, upload new sounds and to use the visualisation of your trompette
technique.

In the following description we always call the computing device you are using
to access the MidiGurdy “computer”.

Making the connection
---------------------

As explained in :ref:`usb-connection`, please use a USB-A to USB-B cable to
connect the MidiGurdy to your computer.

Once the connection has been established, the MidiGurdy will present itself as
a USB network card to your computer. It acts as a a *class-compliant USB*
device, which means that you should not have to install special drivers to use
it.

The connection has been tested to work on Windows 7, Windows 8, Windows 10, OS
X, Linux and iOS.

.. admonition:: Android Support

    Sadly, the network connection is currently only supported on rooted Android
    devices.  If you don't know what a *rooted Android device* is, then you
    probably don't have one.

The MidiGurdy and your computer will automatically set up a private network, so
only your computer and the MidiGurdy can talk to each other. At no point will
the MidiGurdy be accessible to the Internet or someone on the Internet be able
to reach the MidiGurdy. Even computers on your local Wi-Fi network will not be
able to access the MidiGurdy.

By default, the IP address of the MidiGurdy is **10.10.10.10**. So once the
connection has been established, open the Web Browser of your choice and type
the following into the address bar:

    http://10.10.10.10

Alternatively, if your computer supports *ZeroConf* (Linux, Android) or
*Bonjour* (OS X, Windows), you should be able to access the MidiGurdy via the
following URL:

    http://midigurdy.local

Windows does not support ZeroConf or Bonjour by default, but you can can
install the “Bonjour Print Services for Windows” from the Apple Website to
enable support for Bonjour.

If you see a web page saying “Welcome to the MidiGurdy!” in your browser, the
connection has been established successfully and you are all ready to go.


Features of the Web Interface
-----------------------------

The Web Interface gives you access to all settings that are also available via
the Menu System on the instrument itself. In addition, there are some functions
that are only available via the Web-Interface, namely:

* Adding and removing sounds

* Visualisation of the trompette technique

* Advanced configuration to change the response to keyboard and crank

* Keyboard calibration

.. note::

    The features of the web-interface have not been documented properly yet.
    Please watch this space for updated documentation.
