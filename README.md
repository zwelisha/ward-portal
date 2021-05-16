# ward-portal

# Set up the development environment

The project uses [IHP](https://ihp.digitallyinduced.com/Guide/index.html) and
it uses [nix](https://nixos.org) for dependency management and [cachix](https://cachix.org)
as an extra binary cache.

After cloning the repository you will need to install **nix** following the instructions
in the [IHP Guide](https://ihp.digitallyinduced.com/Guide/installation.html#1-dependency-nix-package-manager).
Once that is done the rest of the dependencies can be installed by running the `initial-setup` bash script.

```bash
./initial-setup
```

The following helper bash scripts are provided in the root of the repository:
  - `start` : Starts the development server in an environment provided by the nix shell.
  - `repl` : Starts a **ghci** **repl** in an environment provided by the nix shell.
  - `sh-exec` : Executes any command in an environment provided by the nix shell.
     This is used by the `start` and `repl` scripts.

You can improve your development experience by setting up **direnv** to make use of [nix-direnv](https://github.com/nix-community/nix-direnv)
to automatically and more efficiently set up an environment provided by the nix shell when you enter the directory.
Once **nix-direnv** is set up you can do the following from the repository root to enable it for the project.

```bash
echo "use nix" > .envrc
direnv allow
```
