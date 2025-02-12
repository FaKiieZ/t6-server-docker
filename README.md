# T6 Server Docker

## Intro

Thanks to [Sterbweise](https://github.com/Sterbweise) for creating the T6-Server: [GitHub Repo](https://github.com/Sterbweise/T6Server).

## How to setup your server with Docker

### Installation

1. Run:
   `chmod +x build.sh && sudo ./build.sh`

2. Run this in the interactive container shell:
   `cd T6Server && chmod +x install.sh && sudo ./install.sh`

3. Exit the shell
   `exit`

### Configuration

**This chapter is copied from the T6Server Repository: [ReadMe - Configuration](https://github.com/Sterbweise/T6Server?tab=readme-ov-file#configuration).**

After installation, the primary configuration file to modify is `/opt/T6Server/T6Server.sh`. This file contains essential settings for your Plutonium Call of Duty: Black Ops II server. Below are the key variables you should configure:

| Variable          | Description                                           | Default Value                      |
| ----------------- | ----------------------------------------------------- | ---------------------------------- |
| SERVER_NAME       | The name of your server as it appears in server lists | "SERVER_NAME"                      |
| GAME_PATH         | Path to your game files (Multiplayer or Zombie mode)  | "/opt/T6Server/Server/Multiplayer" |
| SERVER_KEY        | Your unique Plutonium server key                      | "YOURKEY"                          |
| CONFIG_FILE       | Server configuration file (mode-specific)             | "dedicated.cfg"                    |
| SERVER_PORT       | UDP port your server will listen on                   | 21889                              |
| GAME_MODE         | Game mode selection ("t6mp" or "t6zm")                | "t6mp"                             |
| MOD               | Path to your MOD directory (optional)                 | ""                                 |
| ADDITIONAL_PARAMS | Additional parameters for the server (optional)       | ""                                 |

To configure your server:

1. Open the configuration file:

   ```bash
   nano /opt/T6Server/Plutonium/T6Server.sh
   ```

2. Modify the variables according to your preferences. For example:

   ```bash
   readonly SERVER_NAME="My Awesome T6 Server" # The name of your server
   readonly SERVER_KEY="your_server_key" # Key provided by Plutonium
   readonly SERVER_PORT=4976 # Default port for T6 servers
   readonly GAME_MODE="t6mp" # "t6mp" for Multiplayer, "t6zm" for Zombies
   readonly MOD="mods/weapons" # MOD path
   readonly ADDITIONAL_PARAMS="" # Additional parameters for the server
   ```

3. Save the file and exit the editor by pressing `Ctrl+x`, then `Y` to confirm, and Enter to save.

Note: For Zombie mode, set `GAME_PATH` to "/opt/T6Server/Server/Zombie", `CONFIG_FILE` to "dedicated_zm.cfg", and `GAME_MODE` to "t6zm". Also, set the `MOD` variable to the path of the Zombie mode MOD.

Ensure all settings are correctly configured before launching your server.
