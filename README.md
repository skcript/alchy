# alchy
Play Alchemy right from your terminal!

The terminal client of the famous [Zed's Alchemy](https://play.google.com/store/apps/details?id=me.zed_0xff.android.alchemy&hl=en) game. The game is super simple - combine known elements together to make new ones! You start out with the four basic elements - earth, water, air and fire. There are 380 known elements that you can make.

### Installation
```
gem install alchy
```

### How to install from source
1. Download/Clone this project
2. Cd into the folder in your terminal
3. Run `gem build alchy.gemspec`
4. Run `gem install ./alchy-0.0.1.gem`

### How to play
To show your elements,
```
alchy show
```

To combine two elements,
```
alchy combine air air
```

If the new element exits, you'll get a prompt,
```
New element, wind 🎉
```
Else, try again! :)
