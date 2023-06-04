# Welcome to DevSpaces

## Just a few steps to get you going

1. Get yourself on a terminal server, this will make things easier in the long run.
2. Create a Personal Access Token (PAT) on the git server, keep the page open for now.
3. Open the [DevSpaces][def] [Link][def] in a new tab.
4. When the DevSpace opens you may be prompted to Trust the Authors. Put a tick in the box to trust the authors of the files in the parent folder '/projects' and select "Yes, I trust the authors"

<img src=https://github.com/TiggerFish/devspaces/blob/main/welcome/images/trustauthors.png width=40% height=40% alt="Trust Authors" title="Trust Authors">

5. Open a terminal in the DevSpace

<img src=https://github.com/TiggerFish/devspaces/blob/main/welcome/images/openterminal.png width=40% height=40% alt="Open Terminal" title="Open Terminal">

6. Run a task in that terminal

<img src=https://github.com/TiggerFish/devspaces/blob/main/welcome/images/runtask.png width=40% height=40% alt="Run Task" title="Run Task">

7. In the "Select the task to run" dialogue select the devfile  folder

<img src=https://github.com/TiggerFish/devspaces/blob/main/welcome/images/selectdevfile.png width=40% height=40% alt="Select the devfile folder" title="Select the devfile folder">

8. Then select the 01-create-template task.

<img src=https://github.com/TiggerFish/devspaces/blob/main/welcome/images/select01-create-template.png width=40% height=40% alt="Select task 01-create-template" title="Select task 01-create-template">

9. Observe the terminal output and ensure no errors.

<img src=https://github.com/TiggerFish/devspaces/blob/main/welcome/images/01-create-template-output.png width=40% height=40% alt="01-create-template task output" title="01-create-template task output">

10. Follow the instructions in the output. Editing the newly created git-credentials file in the welcome foder replacing the XXXXXXXX with the content of the PAT token from the git provider and save the file.
11. Run the devfile/02-create-secret task in the terminal



[def]: https://devspaces.apps.sandbox-m3.1530.p1.openshiftapps.com/#/https://raw.githubusercontent.com/TiggerFish/devspaces/main/welcome/devfile.yaml
[def3]: ./images/openterminal.jpg
[def4]: ./images/runtask.jpg
[def5]: ./images/selectdevfile.jpg
[def6]: ./images/select01-create-template.jpg
[def7]: ./images/01-create-template-output.jpg