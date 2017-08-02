# StockX Ticker

![GIF of StockX Ticker](stockx.gif)

### What is this?

An Übersicht widget that places a StockX sneaker ticker on
the top of your desktop. This was made in an hour at the urging
of some sneakerhead friends so I make no guarantees.

### This is dope, how do I install it?

Glad you asked! First, Übersicht is the widget platform that makes this actually
work. If you don't have it, [install it now](http://tracesof.net/uebersicht/).
Next, you'll need to have Node.js and npm installed. If you don't already,
[go do that](https://nodejs.org/). Move the `stockx.widget` folder into your
Übersicht folder (accessible from the menubar app). Then, navigate to the
`stockx.widget` folder in Terminal and run `npm install`.

### So now I'm good to go?

Probably. You may need to change the `command` line in `index.coffee` if the
path to your Node.js installation differs from my own. You can also reduce
the `refreshFrequency` if you crave more up to the minute sneaker prices.
