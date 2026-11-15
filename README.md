# Void Tracker (Fabric client mod)

Void Tracker is a client-side Minecraft HUD prototype for tracking DonutSMP money messages.
It keeps daily totals for recognized incoming and outgoing payment messages and displays:
- received today
- spent today
- net total (received - spent)

## Target setup
- Minecraft Java 1.21.11
- Fabric Loader 0.18.1+
- Fabric API 0.141.6+1.21.11
- Java 21

## Important limitations
This is a source project, not an installable `.jar` yet. The build needs Gradle and must download Minecraft/Fabric dependencies. The current execution environment used to prepare this archive has no internet access and no Gradle installation, so it could not produce or verify the `.jar` here.

The mod reads messages visible in your client chat. It does not read DonutSMP's private server data, and it cannot guarantee that every transaction is counted. The message patterns are starter patterns and may need adjusting to match the exact wording used by DonutSMP. Auction-house trades and balance changes that do not produce a matching chat message will not be counted.

## Build the `.jar` without installing Gradle on your PC
See [README-GITHUB.md](README-GITHUB.md). The included GitHub Actions workflow installs Java and Gradle on GitHub servers and uploads the compiled JAR as an artifact.

## Install after building
1. Close Minecraft and the launcher.
2. Copy the generated `VoidTracker-1.0.0.jar` into `.minecraft/mods`.
3. Make sure Fabric Loader and Fabric API for Minecraft 1.21.11 are installed.
4. Start the Fabric 1.21.11 profile.

The data file is saved at `.minecraft/config/voidtracker.json`.

## Before relying on the totals
Test with small, ordinary in-game transactions and compare the HUD with the chat messages. If a payment is missed, provide the exact chat line (you can hide player names) so the matching pattern can be corrected. Avoid sharing passwords, account tokens, or private information.
