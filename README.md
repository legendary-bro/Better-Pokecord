# Better Pokecord

An ahk script designed to cut down on the amount of typing Pokecord requires. Features include visual menus for the shop and market. Macros to help you catch, sell, trade and buy Pokemon. And macros to spam messages to level or spawn Pokemon.

__*This isn't a self bot and its not going to auto catch stuff for you.*__ You have other options aside from this if that's what you're after. I designed this with the intent of still being able to use Discord as I normally do. I just wanted to make the commands etc less typing intensive if I was interacting with Pokecord. I'm learning the ahk language in my free time and just uploading my work to GitHub. If you use it, great, if you think its shit, great, if you wanna help out with the project, fantastic, send me a pull request.

## Table of Contents

[0.1 Features](#01-features)

[0.2 Requirements](#02-requirements)

[0.3 How to download](#03-how-to-download)

[0.4 Contacting me on Discord](#04-contacting-me-on-discord)

[0.5 Disclaimer](#05-use-this-script-at-your-own-risk)

### [**1.0 GUI Controls**](#10-gui-controls-1)

[1.1 Options Menu](#11-options-menu)

[1.2 Shop Menu](#12-shop-menu)

[1.3 Market Menu](#13-market-menu)

### [**2.0 Hotkey Controls**](#20-hotkey-controls-1)

[2.1 Exiting the script](#21-exiting-the-script)

[2.2 Reloading the script](#22-reloading-the-script)

[2.3 Suspending hotkeys](#23-suspending-hotkeys)

### [**3.0 Pokemon Inventory**](#30-pokemon-inventory-1)

[3.1 Catching](#31-catching)

[3.2 Changing the PV manually](#32-changing-the-pv-manually)

[3.3 Known issues with the PV system](#33-known-issues-with-the-pv-system)

[3.4 Latest catch](#34-latest-catch)

[3.5 Show all in a species](#35-show-all-in-a-species)

### [**4.0 Market**](#40-market-1)

[4.1 Search by high IV](#41-search-by-high-iv)

[4.2 Search by low price](#42-search-by-low-price)

[4.3 Quickly sell](#43-quickly-sell)

[4.4 Quickly buy](#44-quickly-buy)

[4.5 Get multiple market infos](#45-get-multiple-market-infos)

[4.6 Quick trade](#46-quick-trade)

### [**5.0 Message Spam**](#50-message-spam-1)

[5.1 Starting spam](#51-starting-spam)

[5.2 Pausing or canceling spam](#52-pausing-or-cancelling-spam)

### 0.1 Features

* GUI support for shop, market and others
* Macro's to sell or buy pokemon in bulk
* Navigating the market is less time consuming
* Assisted catch and inventory macro's
* Script to spam messages to level and spawn pokemon

![Options menu](https://i.imgur.com/VpkRw6E.png) ![Market menu](https://i.imgur.com/zejLXts.png)

![Shop menu](https://i.imgur.com/GkKN7GK.png)

### 0.2 Requirements

A working NumPad on your keyboard, some features are reliant on the use of hotKeys, most of which I have bound to or around the NumPad.

I've included a compiled .exe of the script itself but it will not run on 32-bit systems. If you do not want to use the compiled .exe version then you will need [AutoHotKey](https://www.autohotkey.com/) to use the .ahk file instead. AutoHotKey is free, and is not a large download. Both the .ahk and the .exe do the same exact thing in terms of functionality, it is merely a matter of convenience as to which one you would like to use.

### 0.3 How to download

Head over to the [releases page](https://github.com/eddhuh/Better-Pokecord/releases) and download the latest release.

You can clone/download directly from the master branch if you'd like. But you will not get an .exe file should you need one, and I will not be providing support for any features committed to the master branch that are not yet in a release.

### 0.4 Contacting me on Discord

If you want to contact me on Discord you can do so by sending a friend request to `.devise#9627`

### 0.5 Use this script at your own risk

Pokecord is fairly clear about its stance on the usage of macro tools on the start message when you begin to play. I’ve been using scripts on Pokecord for some time and while I dont think the risk is high while using this & while I also have not had any issues on a private server, your decisions with this are your own responsibility.

## 1.0 GUI controls

All 3 menus will open when pressing the ctrl key + an arrow key _**while Discord is the active window.**_

* Ctrl+Down: Options menu
* Ctrl+Left: Shop menu
* Ctrl+Right: Market menu

The menus open at the top of your screen and will move the mouse into its area. Please be sure the correct channel is open in Discord before you press a button on the GUI windows. The script will not check to make sure you are in a certain channel before beginning to type a message.

### 1.1 Options menu

![Options menu](https://i.imgur.com/VpkRw6E.png)

#### Exit

Closes the script and exits.

#### Reload

Closes the script and reloads it.

#### Set prefix

You can change the prefix from its default (p!) to anything you want. By default it should look exactly like the image above this text.

Please note that the curly brackets seen in the text box will not be sent in messages. The script will place curly brackets around some special characters (! # ^ +) if you use one while changing the prefix.

#### Set spam message cooldown

There are two values within the Settings.ini file that control how long the script should wait in milliseconds before sending another message when its been instructed to begin spamming. The default values are 500 and 1000.

This means that after sending a spam message the script will wait at least half a second but no longer than one second before sending another message. The script will randomly pick a time between the Min/Max. So setting them to 3000,10500 for example would make at wait at least 3 seconds but no longer than 10.5 seconds to send the next message.

#### Stats

This will display a message box containing the total amount of messages the script has sent, how many Pokemon it has caught etc.

#### Bal/Daily

Self explanatory, will show you your bal or pull up the daily reward

### 1.2 Shop menu

![Shop menu](https://i.imgur.com/GkKN7GK.png)

I dont think anything about this menu needs to be explained in detail. You click buy and it spends the amount on the button and buys your item.

### 1.3 Market menu

![Market menu](https://i.imgur.com/zejLXts.png)

Setting anything to "--" will tell the script not to include it in the market search.

#### Reset buttons

your last selections are saved each time you run a search, the two reset buttons will reset everything back to a "--" or default state in their respective sections.

#### IV filtering

![Market search](https://i.imgur.com/0gy1jnb.png)

When filtering by IV's you can include > or < in the value.

![Market Results](https://i.imgur.com/6deGFzd.png)

## 2.0 Hotkey Controls

![Hotkey controls](https://i.imgur.com/ZW94X9V.png)

The hotkeys menu will allow you to change key bindings from their defaults as described below to a new combination.

All of the hotkeys (with the exception of the hotkeys explained in sections 2.1-2.3) will not work unless Discord is the active window. This allows you to use the keys for other tasks outside of Discord, without the fear of having the script take off running on you for accidentally pressing one of the hotkeys.

### 2.1 Exiting the script

#### Ctrl+End

The ctrl and “end” key on your keyboard. Will close the script.
Additionally, you can right click on the icon that appears in the system tray and simply choose “Exit”. This hotkey is always assigned no matter the active window.

![exitscript](https://i.imgur.com/OhnvrId.png)

### 2.2 Reloading the script

#### Shift+End

Will close and reopen the script. Mostly used if you need to change the .ini file and need to reload the settings, or wanted to cancel spamming. This can also be done in the tray menu by selecting “Reload this script”. This hotkey is always assigned no matter the active window.

### 2.3 Suspending hotkeys

#### End

Will suspend hotkey assignments until end is pressed again. (Ctrl+End will not close the script, etc.) Again, can also be done in the tray menu. This hotkey is always assigned no matter the active window. This hotkey cannot be suspended.

## 3.0 POKEMON INVENTORY

I need to very briefly explain that there is a “Pokemon variable” in the script. When catching things, the name of the pokemon caught is stored in a variable for use in future commands such as market or inventory searches. It can also be manually changed without having to catch anything for use in market/inventory searches. I will refer to this variable as “ the PV” for the remainder of this document.

### 3.1 Catching

#### Shift+Enter

“catch “ will appear in the text bar. The script will wait for up to 20 seconds for you to type the name of a pokemon. If any pokemon’s name is correctly typed before the 20 seconds expire, the message will be sent as soon as the last letter is typed and, if you were correct and first, the pokemon caught. It is not case sensitive. Pikachu, pikachu and PiKaChU will all be equally recognized as the same Pokemon. The PV will also be set to whatever you typed for use in future commands. If no pokemon is identified through your inputs after the 20 seconds expire then the script will stop watching your inputs and clear the text bar to let you know the timer expired.

### 3.2 Changing the PV manually

#### Shift+Backslash

(backslash is typically directly above the enter key)

Similar to Shift+Enter, but instead of “catch “ appearing in the text bar it will display the word “waiting” in the text bar before waiting for user input. To be used when you want to change the PV but don't need to catch anything. 20 second timeout/clear rule also applies here.

### 3.3 Known issues with the PV system

I did not scour the entire list of 800+ Pokemon to confirm this but at the time of writing I believe the only five Pokemon this must be used for is **Pidgeot, Kabuto, Porygon, Mew and Klink**. If the name of the Pokemon you are trying to catch is part of another Pokemons name (ex.Mew/Mewtwo) you must press the Enter key to send the message as you normally would. If you are using the backslash hotkey to just change the PV you must press *just* the backslash key again.

For example:

*catch* mew{Enter}

or

*waiting* mew{Backslash}

### 3.4 Latest catch

#### NumLock

Will check the most recent catch.

(info latest)

### 3.5 Show all in a species

#### Home

The “home” key. Will check all Pokemon currently owned in a species. Relies on the PV.

(pokemon --name PV)

## 4.0 Market

The commands in sections 4.3-4.6 will not work with shiny pokemon for the time being.

### 4.1 Search by high IV

#### NumPadDivide

The divide key on the NumPad(/). Will do a market search for the PV and prioritize high IV’s.

(market search --name PV --order iv descending --showiv)

### 4.2 Search by low price

#### NumPadMultiply

The multiply key on the NumPad(*). Will do a market search for the PV and prioritize lowest price.

(market search --name PV --order price ascending --showiv)

### 4.3 Quickly sell

#### NumPadSubtract

The subtract key on the NumPad(-). Used to quickly list multiple or single Pokemon on the market. This macro is limited to listing things 10 at a time, as the first listing commands begin to time out sometime around the 11th listing. You can highlight more than 10 Pokemon, there is no need to carefully count them if you dont want to, but only the first 10, starting from the top of the list will be put to market.

![marketsell1](https://i.imgur.com/Y0kLzG8.png)

As you can see, I have 14 Gastly’s. I do want this many and listing them all will take quite some time. Let's say I only want to list the ones under 50IV. So here's what I do.

![marketsell2](https://i.imgur.com/KIexHoh.png)

I’ve highlighted everything I wish to sell and now press the NumPadSubtract button. The highlighted text is copied to the clipboard and I'm then presented with an input prompt asking me how much I would like to list each one for.

![marketsell3](https://i.imgur.com/gwu5of0.png)

Because I already used the NumPadMultiply button mentioned previously, I can see the lowest price for Gastly’s is currently 1 credit. I unfortunately cannot undercut anyone's prices and will just have to list them all for a single credit. I enter 1 in the prompt and click “ok” or press the enter button. The script will then begin to list everything I had highlighted earlier before then sending the “confirmlist” command.

![marketsell4](https://i.imgur.com/HpTu66U.png)

If you are going to list something for a value that contains commas the value you enter into the prompt should not contain those commas. (1000 not 1,000)

### 4.4 Quickly buy

#### NumPadAdd

The add key on the numpad (+). Functions in an almost identical manner as what is mentioned above, but instead of selling, it will buy multiple pokemon from the market. You can buy a whole page (20 Pokemon) using this command if you want, it is not limited to 10.

![marketbuy1](https://i.imgur.com/P8DglVm.png)

Looks like I’ll be able to resell these for a little bit of profit.

![marketbuy2](https://i.imgur.com/D21THXU.png)

### 4.5 Get multiple infos

#### Ctrl+NumPadAdd

Used in the same way as the above two examples, but it will show you the detailed info for pokemon either in your inventory or on the market.

### 4.6 Quick trade

#### Ctrl+NumPadSubtract

Used in the same way as the other market commands but this will add multiple pokemon from your inventory to a trade window. You will need to manually copy what you highlighted to the clipboard using Ctrl+c before using this. For safety, it will not send the confirm command after it adds to the trade window. You will need to confirm the trade yourself.

## 5.0 Message Spam

I stress that you should first test, and then use this in a private server. I accept no responsibility for whatever situation you may find yourself in because you used this publicly.

### 5.1 Starting spam

#### Alt+[

(Left square bracket, generally located diagonally from the enter key.)

You will be presented with an input prompt asking you how many messages you would like to send. The value you enter should not contain any commas. Upon clicking “Ok” or pressing the Enter key the script will start sending messages in a numerical order with the intent to spawn pokemon.

![messagespam1](https://i.imgur.com/1a9JxX6.png) - In this case I've entered the number 13 into the prompt.

Messages are sent at random intervals based on the setting in the .ini file, which is measured in milliseconds. By default it is set to “500,1000”. This means it will wait at least half a second but no longer than 1 second before sending another message.  It will continue to send messages until a pause key is pressed, or it reaches the number of messages it was assigned in the input prompt.

#### Ctrl+[

Functions the exact same way as the numerical spammer, except instead of numbers it will generate a random pokemon.

![messagespam2](https://i.imgur.com/nKdyyQq.png) - In this case I've entered the number 3 into the prompt.

### 5.2 Pausing or canceling spam

#### [

Will pause or unpause the counting messages after they have begun. To cancel the spam completely you will need to reload, or exit the script.
