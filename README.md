# WSL Distro Ruby'n'Rails

This is a WSL Distro for Ruby'n'Rails (Ruby and RubyOnRails) development. It is based on Ubuntu 24.04 LTS and includes the following tools:
* [asdf](https://asdf-vm.com/)
* [Ruby](https://ruby-lang.org/)
* [NodeJS](https://nodejs.org/)
* [RubyOnRails](https://rubyonrails.org/)

## Copy & Paste
```
# Install WSL2
wsl --install
# Build the WSL-Distro Tarball
docker build -o type=tar,dest=rubynrails.tar .
# Import Tarball as WSL-Distro
wsl --import RubynRails C:\WSL\rubynrails .\rubynrails.tar
```

## Todos

- Support sudo
- Set rubynrails user password
- Add useful Editors (vim, nano, ?)
- Use Pipeline to publish WSL-Distro as downloadable Tarball

## Helpful Microsoft Knowledge Base Articles
- [WSL2 Installation Guide](https://docs.microsoft.com/en-us/windows/wsl/install)
- [Import any Linux distribution to use with WSL](https://learn.microsoft.com/en-us/windows/wsl/use-custom-distro)
