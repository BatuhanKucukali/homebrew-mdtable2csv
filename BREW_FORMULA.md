# Create Brew Formula Example

## Create formula

```bash
brew create 'https://github.com/username/project/archive/0.0.1.tar.gz'
```
## Audit formula

```bash
brew audit --strict project
```

## Make your own Tap

Create a Git repo called "homebrew-something".

Add your formula to the root of the repo. After this you can use it like:

The "name" should not include "homebrew-" which is a prefix

```bash
brew tap username/project
brew install username/project
```

## Test local install

```bash
HOMEBREW_MAKE_JOBS=1 brew install -v project
```

# Additional

## Local Project 

```bash
/usr/local/Homebrew/Library/Taps/homebrew/homebrew-core/Formula/project.rb
```

## Checksum

```bash
shasum -a 256 project.tar.gz
```