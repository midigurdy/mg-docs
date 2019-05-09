.. _midi:

MIDI with the MidiGurdy
=======================

With the USB MIDI output feature, you are able to use the MidiGurdy as a MIDI
controller, for example to control external synthesizers or use the instrument
to input notes in a music notation editor.

Connecting to MIDI devices
--------------------------------

To use this feature, you first need to connect the MidiGurdy to another device.
There are a number of different ways on how you can make this connection.


USB MIDI to Computer or Tablet
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you want to use the MidiGurdy as an input device to write musical
notation, if you want it to control a software synthesizer or other musical
software running on your computer, you can simply connect your instrument to
your computer as if you wanted to access the web-interface. So use a USB-A
to   USB-B cable, attach the USB-A plug into your computer and the (square)
USB-B   plug into the MidiGurdy.

Depending on your operating system, you might need to open up the Sound or
MIDI device preferences.

.. admonition:: Android MIDI

    Unlike the web-interface, the MIDI function should work on Android as well!

The MidiGurdy registers as a MIDI device to your computer as soon as you
plug it in, but it does not send any MIDI messages until you enable the
connection on the instrument as follows:

 - Press D4 twice to go to the Configuration menu
 - Turn the rotary knob to scroll down to the "MIDI..." entry
 - Press the rotary knob to open the list of MIDI devices
 - You will see only one entry: "Main Midi...". Select it by pressing the
   rotary knob
 - Turn the rotary knob to scroll down to "Output" and press the rotary knob
   to active the option
 - Turn the rotary knob to switch between the options "Off", "On" and
   "Auto-On"

**Off** means the MidiGurdy does not send any MIDI messages (the default
and best option if you don't use this feature, to conserve processing
power and battery consumption).

**On** means that the MidiGurdy will send MIDI messages via this
connection. If you disconnect the USB cable and plug it back in, you
will need to manually enable it again to send MIDI messages.

**Auto-On** means that the connection is On (MIDI messages are sent) and
if you disconnect the USB cable and plug it back in, the connection will
automatically be enabled again.

So as soon as the "Output" value is **On** or **Auto-On**, the MidiGurdy
will start sending MIDI messages to your computer.

USB MIDI to another USB MIDI device
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you want to use the MidiGurdy to control another MIDI device that has a
USB MIDI port (like a more modern synthesizer, a MIDI expander or similar),
you can use the same USB-A to USB-B cable that you use for the connection
to a computer.

But the way you use the cable is different: attach the square USB-B plug to
your external MIDI device and plug in the USB-A plug into the vertical
USB-A port on the MidiGurdy.

Open the MIDI configuration on the MidiGurdy (press D4 twice, scroll down
to "MIDI...") and you should see a new entry in the list. The name of this
entry depends on how your external MIDI device registers itself. As with
the previous connection method, select the MIDI connection by pressing the
rotary knob, scroll down to "Output" and set it to "On" or "Auto-On".

Connecting to an old-style (5-pin) MIDI device
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you want to control a device with the old-style 5-pin MIDI connector,
you will need a USB to 5-pin MIDI adapter cable. These adapter cables can
be bought in many places, many at very affordable prices (a few Euro). Any
cable that requires no additional drivers for Windows will work fine with
the MidiGurdy.

If you have a USB to 5-pin MIDI adapter available, connect its USB-A plug
to the vertical USB-A port on the MidiGurdy. 

Open the MIDI configuration on the MidiGurdy (press D4 twice, scroll down
to "MIDI...") and you should see a new entry in the list. The name of this
entry depends on how your adapter cable calls itself. Often it is something
like "MIDI cable #1" or similar. As with the previous connection methods,
select the MIDI connection by pressing the rotary knob, scroll down to
"Output" and set it to **On** or **Auto-On**.


MIDI messages sent by the MidiGurdy
-----------------------------------

The MidiGurdy outputs MIDI messages on three separate MIDI channels, one for
each string type.  By default, the following MIDI channels are used:

- Melody: MIDI channel 1
- Drone: MIDI channel 2
- Trompette: MIDI channel 3

.. admonition:: Which strings output via MIDI
    
    **Important:** only strings that are configured (have a sound assigned to
    them) and enabled (green LED button is on) actually send MIDI messages. And
    only the first string of each type actually outputs via MIDI, so only
    Melody 1, Drone 1 and Trompette 1


Melody String MIDI Messages
~~~~~~~~~~~~~~~~~~~~~~~~~~~

- Note On/Off, with a range of fixed velocities - sent in reaction to key
  presses and wheel start / stop

- Expression Control (CC 11) - used for volume instead of Note-on velocity,
  controlled by the speed of the wheel

- Channel pitch bend - depends on the key pressure of the highest pressed key

.. admonition:: Keyboard Mode

    **Note:** If you choose **Keyboard mode** for the melody string, no
    expression messages get sent and the velocity (volume) of the Note On
    messages is determined by the speed / force with which you press the keys.
    In this mode the MidiGurdy melody string behaves similar to a keyboard /
    piano.

Drone String MIDI Messages
~~~~~~~~~~~~~~~~~~~~~~~~~~

- Note on/off, with fixed velocity

- Expression Control (CC 11) - used for volume instead of Note-on velocity,
  controlled by the speed of the wheel


Trompette String MIDI Messages
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**In "MidiGurdy" mode:***

- Note on/off, with fixed velocity - Note On as soon as you move the wheel

- Expression (CC 11) - used for volume, controlled by the speed of the wheel

- Channel Pressure - controlled by the speed of the wheel above the chien
  sensitivity threshold

**In "Percussion" mode:**

- Note on/off - Note On only for a coup impulse, velocity is the speed of the
  initial impulse)


MIDI Output Configuration
-------------------------

There are a few settings you can change on a MIDI output. These settings will be
automatically saved and recalled when you reconnect a MIDI device with the same
name as before.

 - **Melody channel**: Determines the MIDI channel for the melody string.

 - **Drone channel**: Determines the MIDI channel for the drone string.

 - **Trompette channel**: Determines the MIDI channel for the drone string.

 - **Program Change**: Controls if program and bank change messages should be
   sent to the external MIDI device. If this setting is enabled, every time you
   change a sound of a string sends a program and bank change message with the
   bank and program number of the selected sound. The default of this setting
   is off, so no program change messages are being sent.

 - **Speed**: Use this setting to control the maximum number of MIDI messages
   per second that the MidiGurdy sends over this connection. The default value
   of "Standard" limits the total number of messages sent across all channels
   to below 1000 per second, which is the maximum that most standard MIDI
   devices can cope with. The downside is that the resolution of the messages
   gets reduced and the latency of the messages is higher.

   If you connect to a MIDI device that has more processing power and can cope
   with more messages per second, you can try the "Fast" setting. This will
   limit the maximum number of messages per second to 2000. There will be much
   less latency and resolution loss.

   "Unlimited" does not limit the number of messages in any way, so they are
   sent out via MIDI as they get generated by the internal sensors and
   modelling. Depending on your playing style, string modes and enabled
   strings, it can be as much as 5000 messages per second.
