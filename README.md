<img width="2948" height="497" alt="rsg_framework" src="https://github.com/user-attachments/assets/638791d8-296d-4817-a596-785325c1b83a" />

# 💃 rsg-animations
**Comprehensive emote & animation system for RedM (RSG Core).**

![Platform](https://img.shields.io/badge/platform-RedM-darkred)
![License](https://img.shields.io/badge/license-GPL--3.0-green)

> A modern animation menu for RedM, with UI built in Vue.js, allowing players to play, preview, and save their favorite emotes or scenarios.  

---

## 🛠️ Dependencies
- **rsg-core** (framework & player data)  
- **ox_lib** (locale, notifications, context)  
- **oxmysql** (database handler for favorites)

**License:** GPL‑3.0

---

## ✨ Features
- 💃 **NUI Animation Menu** — modern UI built in Vue.js.  
- 🎭 **Emotes, Gestures & Scenarios** — categorized for easy browsing.  
- ⭐ **Favorites System** — players can save their favorite animations (stored via MySQL).  
- 🔄 **Persistent Favorites** — saved per `citizenid`.  
- ⚙️ **Supports multiple animation types:**
  - **Anim** → standard animation dictionary  
  - **Emote** → RDR2 native emote (e.g. `KIT_EMOTE_GREETING_TIP_HAT`)  
  - **Scenario** → world scenarios (e.g. `WORLD_HUMAN_SMOKE`)  
- 🧭 **Open via command or radial menu** (`/anim` by default).  
- 🗃️ **SQL file included** (`rsg-animations.sql`) to create favorite table automatically.  
- 🌍 **Locale support** (English, Greek by default).  

---

## ⚙️ Configuration (`config.lua`)
```lua
Config = {}

-- Command used to open the animation menu
Config.CommandOpen = 'anim'

-- Default keybind (optional)
Config.KeyOpen = 'F3'

-- Example animation entries
Config.Animations = {
    { 
        name = "Greeting - Tip Hat", 
        type = "Emote", 
        data = "KIT_EMOTE_GREET_TIP_HAT" 
    },
    { 
        name = "Dance - Gentle Shuffle", 
        type = "Anim", 
        data = { dict = "amb_work@world_human_drunk_dancing@male_a@idle_a", anim = "idle_a", flag = 1 } 
    },
    { 
        name = "Sit on Chair", 
        type = "Scenario", 
        data = "WORLD_HUMAN_SIT_CHAIR" 
    }
}
```

---

## 🕹️ Usage
- Use the command `/anim` to open the animation menu.  
- Browse through categories (Emotes, Animations, Scenarios).  
- Click an animation to play it immediately.  
- Press the ★ icon to **save it as a favorite**.  
- Access saved favorites easily from the “Favorites” tab.  

---

## 💾 Database (Favorites System)
Run the SQL file `rsg-animations.sql` to create the table for player favorites:

```sql
CREATE TABLE IF NOT EXISTS favorites_animations (
  id INT AUTO_INCREMENT PRIMARY KEY,
  citizenid VARCHAR(50) NOT NULL,
  label VARCHAR(100) NOT NULL,
  type VARCHAR(50) NOT NULL,
  data LONGTEXT NOT NULL
);
```

Each player’s favorite list is tied to their **Citizen ID**.  
Favorites are automatically reloaded on login.

---

## 🧩 Files
- `client/client.lua` — handles menu interactions and animation playback  
- `server/server.lua` — manages favorite storage and SQL communication  
- `config.lua` — main configuration file  
- `ui/` — Vue.js front‑end (menu interface)  
- `rsg-animations.sql` — table creation script  
- `fxmanifest.lua` — defines NUI and dependencies

---

## 📂 Installation
1. Place `rsg-animations` in your `resources/[rsg]` folder.  
2. Import `rsg-animations.sql` into your database.  
3. Add to your `server.cfg`:
   ```cfg
   ensure ox_lib
   ensure oxmysql
   ensure rsg-core
   ensure rsg-animations
   ```
4. Restart your server.  
5. Use `/anim` in-game to open the menu.

---

## 💎 Credits
- **XakraD** — Original creator  
  🔗 https://github.com/XakraD  
- **RSG / Rexshack‑RedM** — adaptation & maintenance  
  🔗 https://github.com/Rexshack-RedM  
- **Community contributors & translators**  
- License: GPL‑3.0
