# Luanti RUN_IN_PLACE=0 Windows builds
[Luanti forum topic](https://forum.minetest.net/viewtopic.php?t=30019)

Traditionally on Windows, with the official portable builds built with `RUN_IN_PLACE=1`, the user data is stored alongside the engine (share) data. This causes a bit of a mess when updating, since you will need to isolate your own files from the files provided by the engine, and then move it onto the new version. However when Luanti is built with `RUN_IN_PLACE=0` it will now place the user data in `%APPDATA%/Minetest/` by default, creating a clear distinction and separation between the user and engine data.

So that is what these builds are, they are built with `RUN_IN_PLACE=0` meaning user data will be stored separately from the engine data inside a directory in `%APPDATA%`. However, this is not an installer. No administrator privileges are required, and it comes in a .7z file to be extracted anywhere you like.

To find your new Luanti user data directory, you can click the "Open User Data Directory" button in the About tab. You can also open the start menu and type `%APPDATA%` into the search bar, there will be a "Minetest" folder in the opened folder in Explorer. If you want the user data location to be somewhere else, then you can define the `%MINETEST_USER_PATH%` environment variable to provide a custom path where it will be stored.

## Download
See the [Releases](https://github.com/rollerozxa/luanti-win/releases) page for downloads of either the latest stable or latest development build that is available.

## Technical build details
he builds are produced using the buildbot script in the Luanti source tree which uses a cross-compiled LLVM-mingw toolchain. This is the same setup as the official builds use, and include LuaJIT as well as LevelDB. It is built off of the relevant Luanti commit tagged for the version, but with some patches applied to the source code. The builds are now made in GitHub Actions and the scripts and patches can be found in this repository.
