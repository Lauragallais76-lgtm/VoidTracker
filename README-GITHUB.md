# Build Void Tracker with GitHub Actions (no Gradle installation on your PC)

This repository includes `.github/workflows/build.yml`. GitHub's runner installs Java 21 and Gradle 9.2.1, then attempts to compile the mod.

## Steps
1. Sign in to GitHub and create a new **public** repository named `VoidTracker` (or choose private if your account supports it).
2. Extract `VoidTracker-source.zip` on your PC.
3. Open the repository page on GitHub and choose **Add file → Upload files**.
4. Upload the **contents** of the extracted `VoidTracker` folder, including the hidden `.github` folder. Make sure `.github/workflows/build.yml` is present in the repository. If Windows hides `.github`, enable **View → Show → Hidden items** in File Explorer.
5. Commit the files to the `main` branch.
6. Open the repository's **Actions** tab. Select **Build Void Tracker** and click **Run workflow** if it has not started automatically.
7. Wait for the run to finish. A green check means the workflow succeeded. Open the run and find **Artifacts** at the bottom.
8. Download `VoidTracker-jar.zip`, extract it, and copy the `.jar` (not the `-sources.jar`) into the `mods` folder of your Modrinth 1.21.11 Fabric instance.
9. Ensure Fabric API is installed in that same instance, then launch Minecraft.

## Important
- GitHub Actions only automates compilation. It does not prove the mod correctly detects every DonutSMP transaction.
- The current code is a prototype and its Minecraft/Fabric API calls or version coordinates may need fixing if the build fails. Open the failed Actions run and copy the first meaningful error to ChatGPT; do not share GitHub tokens or passwords.
- The mod only parses chat messages matching its current patterns. It cannot reliably count transactions that do not appear in chat, such as some AH activity.
- Never install a JAR from an unknown person or repository. This project should be built from the source you can inspect.
