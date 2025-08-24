### Sync the Code (Perform whenever an update is needed)

#### Prerequisite
You only need to do this once per project.

Get the URL of the Original (Upstream) Repository.
Go to the GitHub page of the original project (the one you forked from). Click the green "<> Code" button and copy the HTTPS URL.

Add the Upstream Remote.
In your terminal, run the following command, replacing the placeholder URL with the one you just copied:

`git remote add upstream <URL_CỦA_REPO_GỐC>`

Example:

```
git remote add upstream https://github.com/sarbagyastha/youtube_player_flutter.git
```

How to Check Your Work ✅
To verify that it worked, run this command:

```
git remote -v
```

You should now see both origin and upstream listed in the output, like this:

origin    https://github.com/YOUR_USERNAME/YOUR_FORK.git (fetch)
origin    https://github.com/YOUR_USERNAME/YOUR_FORK.git (push)
upstream  https://github.com/original-owner/original-repo.git (fetch)
upstream  https://github.com/original-owner/original-repo.git (push)

Example:

`
origin  https://github.com/hoanghn418/youtube_player_flutter (fetch)
origin  https://github.com/hoanghn418/youtube_player_flutter (push)
upstream        https://github.com/sarbagyastha/youtube_player_flutter.git (fetch)
upstream        https://github.com/sarbagyastha/youtube_player_flutter.git (push)
`

#### Once the upstream remote has been configured, follow these steps each time you need to get the new code:

1. Fetch the changes from the upstream repository. This command will download all the changes but won't merge them into your code yet.

```
git fetch upstream
```

2. Switch to your develop branch:

```
git checkout develop
```

3. Merge the changes from the upstream's develop (or main) branch into your develop branch.

```
git merge upstream/develop
```

4. Merge your develop branch into your main branch

```
git checkout main
```

```
git merge develop
```
