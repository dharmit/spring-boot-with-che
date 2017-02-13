# spring-boot-with-che

Spring Boot sample application with its stack and runtime container.

# Note

Currently only works on a local Che server. Workspace startup on codenvy.io fails with the following error:

    Could not start workspace wksp-uc7g. Reason: Start of environment 'wksp-uc7g' failed. Error: Restoring of workspace workspaceplxjdrvpluk9xbo6 filesystem terminated on node6.codenvy.io node. Process failed. Exit code 255

# Usage

1. Add Spring Boot stack by navigating to "Stacks > Add Stack > Raw Configuration > Show", pasting in the contents of stacks/spring-boot-stack.json and clicking "Save".
2. Create a workspace by navigating to "Workspaces > Add Workspace > Runtime > Stack library", selecting "Spring Boot" stack and clicking "Save".
3. Start workspace by clicking the newly created workspace in a dashboard.
4. Import git project from: https://github.com/gytis/spring-boot-with-che.git.
