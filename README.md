# ftcontainer (gradle-extension)
![image](https://user-images.githubusercontent.com/92550885/232341709-e8e35d97-c334-4ab5-a9e5-e60363a2a2d7.png)
🔨 Build the [FtcRobotController](https://github.com/FIRST-Tech-Challenge/FtcRobotController) in a development container on *practically* any device.

## About
Android Studio is the recommended IDE for developing with the FTC SDK, with OnBot Java being an alternative when Android Studio isn't available.  
However, OnBot Java requires the physical robot to be present in order to build the SDK, and lacks version control.  
The purpose of this project is to provide a [development container](https://docs.github.com/en/codespaces/setting-up-your-project-for-codespaces/adding-a-dev-container-configuration/introduction-to-dev-containers) that **runs in the cloud**, allowing programmers to build their projects anywhere - with or without the robot.  
Additionally, the development container is configured to run on the latest release of the Ubuntu distribution, providing access version control and additional software packages.  
> **Note**
> This is not a robot simulator.  
> Nor does it provide a method of installing the robot controller APK, though you could try to download it and manually push to the phone or Control Hub.

## Getting Started ***with Gradle for Java***
> **Note**
> This is a guide for using the development container on [GitHub Codespaces](https://github.com/features/codespaces).  
> If you are able to run it on another platform, consider submitting a pull request!  
> Codespaces documentation can be found [here](https://docs.github.com/en/codespaces).
0. Prerequisites:
    - A GitHub account.
1. On this repository's [page](https://github.com/8696-Trobotix/ftcontainer), click on [`<> Code ⯆`].
    - Or click this and skip step two:  
    [![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/8696-Trobotix/ftcontainer/tree/gradle-extension?quickstart=1)
2. Navigate to [`Codespaces`].
3. Create a Codespace on main.
    - Initial configuration usually takes a couple minutes.
        - If configuration fails, you will be prompted to view a creation log.
        - Please submit an issue with relevant details from this log.
    - You can access your created Codespaces by navigating to Codespaces menu from the GitHub dashboard.
    - Subsequent startups of a Codespace will take under half a minute.
    - This will install the [Gradle for Java](https://github.com/microsoft/vscode-gradle) extension.
4. Expand the `FtcRobotController` directory and navigate to `TeamCode/.../teamcode`, or delete the pre-cloned project and clone your own repository.
    - By default and for security, Codespaces are prevented from accessing the contents of private repositories aside from the one they're created in.
    - See [here](https://docs.github.com/en/codespaces/managing-your-codespaces/managing-repository-access-for-your-codespaces) for how to add permissions.
5. Navigate to the extensions pane on the left.
6. Disable the following extensions (this is for necessary performance):
    - Debugger for Java
    - Language Support for Java...
    - Maven for Java
    - Project Manager for Java
    - Test Runner for Java
        - Reload Codespaces as prompted.
7. Navigate to settings.
    - Click on the cog in the lower left corner.
8. Expand "Extensions" (may need to scroll down).
9. Navigate to "Gradle".
10. Navigate to "Gradle: Nested Projects" and open in `settings.json`.
11. Manually change the `gradle.nestedProjects` setting to `true`.
12. Wait for the Gradle Server to start.
13. Navigate to the Gradle pane under the extensions pane on the left.
    - The Gradle icon may be invisible. Hover your mouse cursor around to see if a tooltip appears.
14. Expand `TeamCode` --> `other`.
15. Right click on `assembleDebug`, choose "Pin Task With Args", enter "--max-workers=2" when prompted.
16. The pinned task should now be at the top of the Gradle pane. Double click on it to run the build.
    - Problem matching capability will be limited compared to the main branch.
    - More information will need to be inferred from the build output.
> **Note**
> Codespaces is a free service, but has usage limits. You can view your usage [here](https://github.com/settings/billing).  
> You will not be charged by default if your usage exceeds the amount allotted, assuming no payment information is provided for your account.

## Additional Options
`.devcontainer/Dockerfile` - The platform-tools and tools Android SDK packages are not installed by default. Uncomment their respective lines here and rebuild the container to add them.  
`.devcontainer/post-create-env.sh` - Configure additional environment variables here, such as adding the path of the packages above to PATH.  
`build.sh` - The build script. By default, Gradle is set to debug build the `TeamCode` of the currently active file in the editor using at most two worker threads. When building a module not named `TeamCode`, that module's name should be used in place of `TeamCode` in the build script and in `.vscode/tasks.json`.

## Tips
- If Codespace storage becomes an issue, run the following command to clean the build: `cd [dir] && ./gradlew clean` (replace [`dir`] with the folder name of the project) or truncate any git commit history to include only the most recent commits.
- Stop the Codespace when it's not being used to prevent incurring unintended usage (click Codespaces in the bottom left corner). Codespaces will automatically timeout after thirty minutes of inactivity.
- To update the container, click the sync button near the bottom-left corner (ensure that the editor is opened to this README file when doing the latter so this container's repository is focused instead of the robot controller's), **or** pull the latest commit with `git pull`.

___

Please consider improving this project by submitting an issue or pull request!
