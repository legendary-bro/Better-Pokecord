###### I've completely lost interest in Pokecord and have abandoned this. The readme is for the most part complete but I probably missed one or two key details after the latest update. Thank you for your support.

# Better Pokecord

An ahk script designed to cut down on the amount of typing Pokecord requires. Features include visual menus for options, status, shop and market. Macros to help you catch, sell, trade and buy Pokemon. And macros to spam messages to level or spawn Pokemon.

__*This isn't a self bot and its not going to auto catch stuff for you.*__ You have other options aside from this if that's what you're after. I designed this with the intent of still being able to use Discord as I normally do. I just wanted to make the commands etc less typing intensive if I was interacting with Pokecord. I'm learning the ahk language in my free time and just uploading my work to GitHub. If you use it, great, if you think its shit, great, if you wanna help out with the project, fantastic, send me a pull request.

## Table of Contents

[0.1 Features](#01-features)

[0.2 Requirements](#02-requirements)

[0.3 How to download](#03-how-to-download)

[0.4 Disclaimer](#04-use-this-script-at-your-own-risk)

[0.5 Contact me](#05-contact-me)

### [**1.0 General Controls**](#10-general-controls-1)

[1.1 Exiting the script](#11-exiting-the-script)

[1.2 Reloading the script](#12-reloading-the-script)

[1.3 Suspending Hotkeys](#13-suspending-hotkeys)

[1.4 Catching or changing selected pokemon](#14-catching-or-changing-selected-pokemon)

### [**2.0 Menu Controls**](#20-menu-controls)

[2.1 Main menu](#21-main-menu)

[2.2 Pokedex menu](#22-pokedex-menu)

[2.3 Shop menu](#23-shop-menu)

### [**3.0 Hotkey Controls**](#30-hotkey-controls)

[3.1 Show all owned](#031-show-all-owned)

[3.2 Search by high IV](#32-search-by-high-iv)

[3.3 Search by low price](#33-search-by-low-price)

[3.4 Info latest](#34-info-latest)

[3.5 Quick sell](#35-quick-sell)

[3.6 Quick buy](#36-quick-buy)

[3.7 Quick Trade](#37-quick-trade)

[3.8 Nickname](#38-nickname)

[3.9 Info](#39-info)

### 0.1 Features

* GUI support for shop, market and others
* Macro's to sell or buy pokemon in bulk
* Navigating the market is less time consuming
* Assisted catch and inventory macro's
* Script to spam messages to level and spawn pokemon

![pokedex menu](https://i.imgur.com/dhDdCB6.png)

![shop menu 1](https://i.imgur.com/X4quu1m.png)  ![shop menu 2](https://i.imgur.com/hNLVzgK.png)

![main menu](https://i.imgur.com/ML7sDux.png)

### 0.2 Requirements

You will need the Discord desktop application. I'll work on support for web browser users but to be honest its not a priority for me at the moment.

I've included a compiled .exe of the script itself but it will not run on 32-bit systems. If you do not want to use the compiled .exe version then you will need [AutoHotKey](https://www.autohotkey.com/) to use the .ahk file instead. AutoHotKey is free, and is not a large download. Both the .ahk and the .exe do the same exact thing in terms of functionality, it is merely a matter of convenience as to which one you would like to use.

You *may* need to run as admin. Im only aware of two situations where this had to be done but I'm still gonna leave the information here just in case its needed.

### 0.3 How to download

Head over to the [releases page](https://github.com/eddhuh/Better-Pokecord/releases) and download the latest release.

### 0.4 Use this script at your own risk

Pokecord is fairly clear about its stance on the usage of macro tools on its start message when you begin to play. I’ve been using scripts on Pokecord for some time and while I dont think there is high risk while using this & while I also have not had any issues on a private server, your decisions with this are your own responsibility.

### 0.5 Contact me

You can fairly easily contact me here on GitHub, but if youd like to keep up on what im doing with the project in detail you can check out Better Pokecord's [Twitter page](https://twitter.com/BetterPokecord). I'm happy to listen to any suggestions or concerns you have on either platform, though I will generally respond sooner on Twitter.

## 1.0 General Controls

Better Pokecord uses a combination of visual menus and hotkeys in order for it to do the things you want it to do. I will provide the default hotkeys of anything that can be given a hotkey, but they can all be changed to user prefference in a later menu. There are a few that cant be changed or are only availabe as hotkeys though which I would like to cover before jumping into menu controls.

All of the hotkeys (with the exception of the hotkeys explained in sections 1.1-1.3) **will not work unless Discord is the active window**. This allows you to use the keys for other tasks outside of Discord, without the fear of having the script take off running on you for accidentally pressing one of the hotkeys. Shiny pokemon are also not currently supported in tools that make use of highlighted text.

### 1.1 Exiting the script

#### Default hotkey: *Ctrl+End (cannot be changed)*

The ctrl and “end” key on your keyboard. Will close the script.
Additionally, you can exit from the options menu or right click on the icon that appears in the system tray and simply choose “Exit”. This hotkey is always assigned no matter the active window.

![exitscript](https://i.imgur.com/OhnvrId.png)

### 1.2 Reloading the script

#### Default hotkey: *Shift+End (cannot be changed)*

Will close and reopen the script. Mostly used if you wanted to save to the settings file, or wanted to cancel spamming. This can also be done in the options menu or tray menu by selecting “Reload this script”. This hotkey is always assigned no matter the active window.

### 1.3 Suspending hotkeys

#### Default hotkey: *End (cannot be changed) (cannot be suspended)*

Will suspend hotkey assignments until end is pressed again. (Ctrl+End will not close the script, menus will not open, etc.) Can also be done in the tray menu. This hotkey is always assigned no matter the active window. This hotkey cannot be suspended.

### 1.4 Catching or changing selected pokemon

I need to briefly explain that there is a “Pokemon variable” in the script. When catching things, the name of the pokemon caught is stored in a variable for use in future commands such as market or inventory searches. It can also be manually changed without having to catch anything for use in market/inventory searches. I will refer to this variable as “the selected pokemon” for the remainder of this document.

#### 1.4.1 Catching Pokemon

##### Default hotkey: Shift+Enter

“catch “ will appear in the text bar. The script will wait for up to 20 seconds for you to type the name of a pokemon. If any pokemon’s name is correctly typed before the 20 seconds expire, the message will be sent as soon as the last letter is typed and, if you were correct and first, the pokemon caught. It is not case sensitive. Pikachu, pikachu and PiKaChU will all be equally recognized as the same Pokemon. The selected pokemon will also be set to whatever you typed for use in future commands. If no pokemon is identified after the 20 seconds expire then the script will stop watching your inputs.

#### 1.4.2 Changing selected Pokemon

##### Default hotkey: Shift+\

(backslash is typically directly above the enter key)

Similar to catching, but instead of “catch “ appearing in the text bar it will display the word “waiting” before waiting for user input. To be used when you want to change the selected pokemon but don't need to catch anything. 20 second timeout/clear rule also applies here.

#### 1.4.3 Known issues with this system

I did not scour the entire list of 800+ Pokemon to confirm this but at the time of writing I believe the only five Pokemon this must be used for is **Pidgeot, Kabuto, Porygon, Mew and Klink**. If the name of the Pokemon you are trying to catch is part of another Pokemons name (ex.Mew/Mewtwo) you must press the Enter key to send the message as you normally would. If you are using the backslash hotkey to just change the selected pokemon you must press *just* the backslash key again.

For example:

*catch* mew{Enter}

or

*waiting* mew{Backslash}

## 2.0 Menu Controls

### 2.1 Main menu

#### Default hotkey: Alt+z

![main menu](https://i.imgur.com/ML7sDux.png)

The main menu is where you can edit the options & hotkeys the script will use. You can also open either of the other two menus or start using a spam macro. Sections 2.1.x will cover the options & hotkeys menus and the spam macros.

#### 2.1.1 Options

##### Set prefix

You can change the prefix from its default (p!) to anything you want. By default it should look exactly like the image above this text.

Please note that the curly brackets seen in the text box will not be sent in messages. The script will place curly brackets around some special characters (! # ^ +) if you use one while changing the prefix.

##### Menu transparency

You can make the menus more or less transparent by giving this a value between 0-255

###### setting the windows to 0 transparency will make them not only completely invisible, but also unresponsive even if you are somehow clicking in the right spot

##### Set spam cooldown

There are two values that control how long the script should wait in milliseconds before sending another message when its been instructed to begin spamming. The default values are 500 and 1000.

This means that after sending a spam message the script will wait at least half a second but no longer than one second before sending another message. The script will randomly pick a time between the Min/Max. So setting them to 3000/10500 for example would make it wait at least 3 seconds but no longer than 10.5 seconds to send the next message.

#### 2.1.2 Hotkeys

The hotkeys menu will allow you to change key bindings from their defaults as described in this document to a new combination.

#### 2.1.3 Spam

This menu will allow you to launch spam macros.

Messages are sent at random intervals based on the settings in the options menu, which is measured in milliseconds. Spam macros will continue to send messages until a pause key is pressed, or it reaches the number of messages it was assigned in the input prompt.

Be aware of what your pause key is set to.

I stress that you should first test, and then use this in a private server.

##### Pausing or canceling spam

##### Default hotkey: [

Will pause or unpause the spam messages after they have begun. To cancel the spam completely you will need to reload, or exit the script.

##### Counting spam

You will be presented with an input prompt asking you how many messages you would like to send. The value you enter should not contain any commas. Upon clicking “Ok” or pressing the Enter key the script will start sending messages in a numerical order.

![messagespam1](https://i.imgur.com/1a9JxX6.png) - In this case I've entered the number 13 into the prompt.

##### Timed spam

Functions the exact same way as the counting spammer, except it will spam for the amount of minutes its given in its input prompt. This macro measures *user idle time*, if you set it to spam for 5:00 mins and your cat bumps the mouse at 4:59 it will start over from 0:00.

##### Scrambled spam

Same thing, but will create a random 5-12 long string of characters and send it.

![messagespam3](https://i.imgur.com/tigInNx.png)

### 2.2 Pokedex menu

![pokedex menu](https://i.imgur.com/dhDdCB6.png)

Will search the market or your own inventory based on user selections. You can include "<" or ">" in the IV searches as well.

The pokedex will save your last selections for use in future searches, you can press the reset button to set everything back to a neutral state.

### 2.3 Shop menu

![shop menu 2](https://i.imgur.com/hNLVzgK.png)

I think this menu is fairly self explainitory, click the item you want and hit buy.

## 3.0 Hotkey controls

### 3.1 Show all owned

#### Default hotkey: Home

Will show you all of the currently selected pokemon that you own.

(pokemon --name [selected pokemon])

### 3.2 Search by high IV

#### Default hotkey: NumPadDivide

Will do a market search for the selected pokemon and prioritize high IV’s.

(market search --name [selected pokemon] --order iv descending --showiv)

### 3.3 Search by low price

#### Default hotkey: NumPadMultiply

Will do a market search for the selected pokemon and prioritize lowest price.

(market search --name [selected pokemon] --order price ascending --showiv)

### 3.4 Info latest

#### Default hotkey: NumLock

Will check the most recent catch.

(info latest)

**Unless you caught your current last pokemon with the catch macro, the information displayed in the status menu is inaccurate.**

### 3.5 Quick sell

#### Default hotkey: NumPadSubtract

Used to quickly list multiple or single Pokemon on the market. This macro is limited to listing things 10 at a time, as the first listing commands begin to time out sometime around the 11th listing. You can highlight more than 10 Pokemon, there is no need to carefully count them if you dont want to, but only the first 10, starting from the top of the list will be put to market.

![marketsell1](https://i.imgur.com/Y0kLzG8.png)

As you can see, I have 14 Gastly’s. I do want this many and listing them all will take quite some time. Let's say I only want to list the ones under 50IV. So here's what I do.

![marketsell2](https://i.imgur.com/KIexHoh.png)

I’ve highlighted everything I wish to sell and now press the NumPadSubtract button. The highlighted text is copied to the clipboard and I'm then presented with an input prompt asking me how much I would like to list each one for.

![marketsell3](https://i.imgur.com/gwu5of0.png)

I enter 1 in the prompt and click “ok” or press the enter button. The script will then begin to list everything I had highlighted earlier before then sending the “confirmlist” command.

![marketsell4](https://i.imgur.com/HpTu66U.png)

If you are going to list something for a value that contains commas the value you enter into the prompt should not contain those commas. (1000 not 1,000)

### 3.6 Quick buy

#### Default hotkey: NumPadAdd

Functions in an almost identical manner as what is mentioned above, but instead of selling, it will buy multiple pokemon from the market. You can buy a whole page (20 Pokemon) using this command if you want, it is not limited to 10.

![marketbuy1](https://i.imgur.com/P8DglVm.png)

![marketbuy2](https://i.imgur.com/D21THXU.png)

### 3.7 Quick Trade

#### Default hotkey: Ctrl+NumPadSubtract

Used in the same way as the sell and buy commands but this will add multiple pokemon from your inventory to a trade window. **You will need to manually copy what you highlighted to the clipboard using Ctrl+c before using this**. For safety, it will not send the confirm command after it adds to the trade window. You will need to confirm the trade yourself.

### 3.8 Nickname

#### Default hotkey: Ctrl+NumPadDot

Will nickname any highlighted pokemon the name its given in a prompt.

### 3.9 Info

#### Default hotkey: Ctrl+NumPadAdd

Use this on highlighted pokemon in your inventory or on market to see all of their stat info pages.
