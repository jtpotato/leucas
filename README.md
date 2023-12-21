#  leucas
![Leucas project card](https://project-cards.jtpotatodev.workers.dev/?project=leucas&started=21%20Dec%202023&codename=leucas)

A CLI that uses Discord's webhooks to post as a bot account, in order to simulate these Discord sketches.

<img width="427" alt="image" src="https://github.com/jtpotato/leucas/assets/58995538/d662057f-868d-421c-82e6-94ee1f2c6131">

You could probably set up a uBlock Origin rule to hide the "BOT" symbol, or you could just live with it.

The name comes from *Delphinapterus leucas*, the beluga whale.

Because... beluga

![beluga profile picture](https://pfps.gg/assets/pfps/8302-beluga.png)

Built in Swift. Because I need to learn how to code without GitHub Copilot.

# Installation
**macOS ONLY** (i think. linux users feel free to try out but i'm sorry if it doesn't work)

Download the binary from the Releases tab, and put it into a folder that's on your $PATH.

`/usr/local/bin` is pretty popular.

Verify it's installed by running `leucas --version`

# Usage
1. Make a JSON file. Example:
   <img width="1097" alt="image" src="https://github.com/jtpotato/leucas/assets/58995538/b0e34ca7-d60c-4fc5-bfe8-4d3182d22faf">

   Structure is as follows.
   ```ts
   {
     "characters": Character[],
     "messages": Message[]
   }
   ```
   Character
   ```ts
   {
     "api": string, // Discord webhook link
     "name": string,
     "profile": string? // optional, url to profile picture
   }
   ```
   Messages
   ```ts
   {
     "sender": int, // Index of the character in `characters`
     "message": string
   }
   ```
2. `leucas --file path/to/script.json`

   Messages are sent every second.
