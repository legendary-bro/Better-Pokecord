# Better Pokecord

An ahk script designed to cut down on the amount of typing Pokecord requires. Features include visual menus for options, status, shop and market. Macros to help you catch, sell, trade and buy Pokemon. And macros to spam messages to level or spawn Pokemon.

__*This isn't a self bot and its not going to auto catch stuff for you.*__ You have other options aside from this if that's what you're after. I designed this with the intent of still being able to use Discord as I normally do. I just wanted to make the commands etc less typing intensive if I was interacting with Pokecord. I'm learning the ahk language in my free time and just uploading my work to GitHub. If you use it, great, if you think its shit, great, if you wanna help out with the project, fantastic, send me a pull request.

## Table of Contents

[0.1 Features](#01-features)

[0.2 Requirements](#02-requirements)

[0.3 How to download](#03-how-to-download)

[0.4 Disclaimer](#04-use-this-script-at-your-own-risk)

[0.5 Donate](#05-donate)

### [**1.0 General Controls**](#10-general-controls-1)

[1.1 Exiting the script](#11-exiting-the-script)

[1.2 Reloading the script](#12-reloading-the-script)

[1.3 Suspending Hotkeys](#13-suspending-hotkeys)

[1.4 Catching or changing selected pokemon](#14-catching-or-changing-selected-pokemon)

[1.5 Menu Controls](#15-menu-controls)

### [**2.0 Options Menu**](#20-options-menu-1)

[2.1 Exit and reload](#21-exit-and-reload)

[2.2 Set prefix](#22-set-prefix)

[2.3 Set spam cooldown](#23-set-spam-cooldown)

[2.4 Set new hotkeys](#24-set-new-hotkeys)

[2.5 Spam menu](#25-spam-menu)

[2.6 Bal and daily](#26-bal-and-daily)

### [**3.0 Status Menu**](#30-status-menu)

[3.1 Show all owned](#031-show-all-owned)

[3.2 Search by high IV](#32-search-by-high-iv)

[3.3 Search by low price](#33-search-by-low-price)

[3.4 Stats](#34-stats)

[3.5 Info latest](#35-info-latest)

[3.6 Quick sell](#36-quick-sell)

[3.7 Quick buy](#37-quick-buy)

[3.8 Quick Trade](#38-quick-trade)

[3.9 Info](#39-info)

### [**4.0 Shop Menu**](#40-shop-menu-1)

[4.1 General controls](#41-general-controls)

### [**5.0 Search Menu**](#50-search-menu-1)

[5.1 Reset buttons](#51-reset-buttons)

[5.2 IV filtering](#52-iv-filtering)

### 0.1 Features

* GUI support for shop, market and others
* Macro's to sell or buy pokemon in bulk
* Navigating the market is less time consuming
* Assisted catch and inventory macro's
* Script to spam messages to level and spawn pokemon

![search menu](https://i.imgur.com/bCuS1me.png) ![status menu](https://i.imgur.com/rDmC6Ys.png)

![Shop menu](https://i.imgur.com/GkKN7GK.png) ![options menu](https://i.imgur.com/yfdHVKK.png)

### 0.2 Requirements

I've included a compiled .exe of the script itself but it will not run on 32-bit systems. If you do not want to use the compiled .exe version then you will need [AutoHotKey](https://www.autohotkey.com/) to use the .ahk file instead. AutoHotKey is free, and is not a large download. Both the .ahk and the .exe do the same exact thing in terms of functionality, it is merely a matter of convenience as to which one you would like to use.

### 0.3 How to download

Head over to the [releases page](https://github.com/eddhuh/Better-Pokecord/releases) and download the latest release.

You can clone/download directly from the master branch if you'd like. But you will not get an .exe file should you need one, and I will not be providing support for any features committed to the master branch that are not yet in a release.

### 0.4 Use this script at your own risk

Pokecord is fairly clear about its stance on the usage of macro tools on its start message when you begin to play. I’ve been using scripts on Pokecord for some time and while I dont think there is high risk while using this & while I also have not had any issues on a private server, your decisions with this are your own responsibility.

### 0.5 Donate

Better Pokecord is free for all public and commercial use so long as you adhere to the terms & conditions laid out in the [GPL-3.0](https://github.com/eddhuh/Better-Pokecord/blob/master/LICENSE.txt) license. But if you're feeling generous you can send a donation to me via my [Paypal link](https://www.paypal.me/CNichols0205).

**Donating does not give you any kind of reward or new features. All you will get for this is a silent thank you from me. Want to be clear about this.**

## 1.0 General Controls

You can use most of the tools Better Pokecord comes with through the visual menus, or assign some of them to hotkeys for faster access. I will provide the default hotkeys of anything that can be given a hotkey, but they can all be changed to user prefference in a later menu. There are a few that cant be changed or are only availabe as hotkeys though which I would like to cover before jumping into menu controls.

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

### 1.5 Menu controls

There are 4 main menus within Better Pokecord. All are accessed using hotkeys that can be customized later on.

Ctrl+Down: Options Menu

Ctrl+Up: Status Menu

Ctrl+Left: Shop Menu

Ctrl+Right: Search Menu

## 2.0 Options Menu

![options menu](https://i.imgur.com/yfdHVKK.png)

The options menu allows you to change things like the prefix, spam cooldowns, and edit hotkey assignments. You can also quickly check your bal or get the daily.

### 2.1 Exit and reload

These buttons do exactly what you expect them to.

### 2.2 Set prefix

You can change the prefix from its default (p!) to anything you want. By default it should look exactly like the image above this text.

Please note that the curly brackets seen in the text box will not be sent in messages. The script will place curly brackets around some special characters (! # ^ +) if you use one while changing the prefix.

### 2.3 Set spam cooldown

There are two values within the Settings.ini file that control how long the script should wait in milliseconds before sending another message when its been instructed to begin spamming. The default values are 500 and 1000.

This means that after sending a spam message the script will wait at least half a second but no longer than one second before sending another message. The script will randomly pick a time between the Min/Max. So setting them to 3000,10500 for example would make it wait at least 3 seconds but no longer than 10.5 seconds to send the next message.

### 2.4 Set new hotkeys

![hotkeys menu](https://i.imgur.com/weHKPpA.png)

The hotkeys menu will allow you to change key bindings from their defaults as described in this document to a new combination.

### 2.5 Spam menu

![spam menu](https://i.imgur.com/Eydi5x1.png)

This menu will allow you to launch spam tools should you not want to use the available hotkeys.

Messages are sent at random intervals based on the settings in the options menu, which is measured in milliseconds. By default it is set to “500,1000”. This means it will wait at least half a second but no longer than 1 second before sending another message.  Spam macros will continue to send messages until a pause key is pressed, or it reaches the number of messages it was assigned in the input prompt.

Be aware of what your pause key is set to.

I stress that you should first test, and then use this in a private server.

### 2.5.1 Pausing or canceling spam

#### Default hotkey: [

Will pause or unpause the spam messages after they have begun. To cancel the spam completely you will need to reload, or exit the script.

### 2.5.2 Counting spam

#### Default hotkey: Alt+[

You will be presented with an input prompt asking you how many messages you would like to send. The value you enter should not contain any commas. Upon clicking “Ok” or pressing the Enter key the script will start sending messages in a numerical order.

![messagespam1](https://i.imgur.com/1a9JxX6.png) - In this case I've entered the number 13 into the prompt.

### 2.5.3 Generator spam

#### Default hotkey: Ctrl+[

Functions the exact same way as the counting spammer, except instead of numbers it will generate a random pokemon.

![messagespam2](https://i.imgur.com/nKdyyQq.png) - In this case I've entered the number 3 into the prompt.

### 2.5.4 Scrambled spam

#### Default hotkey: Alt+]

will create a random 5-12 long string of characters and send it.

![messagespam3](https://i.imgur.com/tigInNx.png)

### 2.6 Bal and daily

Does exactly what you think it does.

## 3.0 Status Menu

![status menu](https://i.imgur.com/rDmC6Ys.png)

The status menu shows any immediate actions that can be taken, along with some stats based on usage.

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

### 3.4 Stats

The script will keep track of and display stats for how many times it has been started, the amount of messages for its current duration, the total amount of messages it has sent across all durations, the amount of times the catch macro didnt time out, and what the last caught pokemon using the catch macro was.

### 3.5 Info latest

#### Default hotkey: NumLock

Will check the most recent catch.

(info latest)

**Unless you caught your current last pokemon with the catch macro, the information displayed in the status menu is inaccurate.**

### 3.6 Quick sell

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

### 3.7 Quick buy

#### Default hotkey: NumPadAdd

Functions in an almost identical manner as what is mentioned above, but instead of selling, it will buy multiple pokemon from the market. You can buy a whole page (20 Pokemon) using this command if you want, it is not limited to 10.

![marketbuy1](https://i.imgur.com/P8DglVm.png)

![marketbuy2](https://i.imgur.com/D21THXU.png)

### 3.8 Quick Trade

#### Default hotkey: Ctrl+NumPadSubtract

Used in the same way as the sell and buy commands but this will add multiple pokemon from your inventory to a trade window. **You will need to manually copy what you highlighted to the clipboard using Ctrl+c before using this**. For safety, it will not send the confirm command after it adds to the trade window. You will need to confirm the trade yourself.

### 3.9 Info

#### Default hotkey: Ctrl+NumPadAdd

Use this on highlighted pokemon in your inventory or on market to see all of their stat info pages.

## 4.0 Shop Menu

![Shop menu](https://i.imgur.com/GkKN7GK.png)

Allows you to buy items from Pokecords store.

### 4.1 General controls

I dont think anything about this menu needs to be explained in detail. You click buy and it spends the amount on the button and buys your item.

## 5.0 Search Menu

![search menu](https://i.imgur.com/bCuS1me.png)

Setting anything to "--" will tell the script not to include it in the search.

### 5.1 Reset buttons

Your last selections are saved each time you run a search, the two reset buttons will reset everything back to a "--" or default state in their respective sections.

### 5.2 IV filtering

![Market search](https://i.imgur.com/39EG7fA.png)

When filtering by IV's you can include > or < in the value.

![Market Results](https://i.imgur.com/uE5qnzi.png)
