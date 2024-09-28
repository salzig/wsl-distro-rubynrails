# WSL Distro Ruby'n'Rails

This is a WSL Distro for Ruby'n'Rails (Ruby and RubyOnRails) development. It is based on Ubuntu 24.04 LTS and includes the following tools:
* [asdf](https://asdf-vm.com/)
* [Ruby](https://ruby-lang.org/)
* [NodeJS](https://nodejs.org/)
* [RubyOnRails](https://rubyonrails.org/)

![Preview of rubynrails WSL](/.github/assets/preview.png?raw=true)

## Copy & Paste setup


```
# Install WSL2
wsl --install
# Download the WSL-Distro Tarball
curl "https://github.com/salzig/wsl-distro-rubynrails/releases/download/v1.3.0/wsl-distro-rubynrails.tar" -OutFile wsl-distro-rubynrails.tar
# Import Tarball as WSL-Distro
wsl --import RubynRails .\rubynrails wsl-distro-rubynrails.tar
# Cleanup temporary file
Remove-Item "wsl-distro-rubynrails.tar"
```

Default user is `me` with a password of `love`, which you need to run commands as root (using sudo).

## Todos

- Anything missing?

## Helpful Microsoft Knowledge Base Articles
- [WSL2 Installation Guide](https://docs.microsoft.com/en-us/windows/wsl/install)
- [Import any Linux distribution to use with WSL](https://learn.microsoft.com/en-us/windows/wsl/use-custom-distro)
