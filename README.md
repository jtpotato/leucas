#  leucas
![Leucas project card](https://project-cards.jtpotatodev.workers.dev/?project=leucas&started=21%20Dec%202023&codename=leucas)

From *Delphinapterus leucas*, the beluga whale.

Because... beluga

![beluga profile picture](https://pfps.gg/assets/pfps/8302-beluga.png)

A CLI that uses Discord's webhooks to post as a bot account. You could probably set up a uBlock Origin rule to hide the "BOT" symbol, or you could just live with it.

Built in Swift. Because I need to learn how to code without GitHub Copilot.

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
2. `leucas path/to/script.json`

   Messages are sent every second.
