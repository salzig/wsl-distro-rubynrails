# WSL Distro Ruby'n'Rails

This is a WSL Distro for Ruby'n'Rails (Ruby and RubyOnRails) development. It is based on Ubuntu 24.04 LTS and includes the following tools:
* [asdf](https://asdf-vm.com/)
* [Ruby](https://ruby-lang.org/)
* [NodeJS](https://nodejs.org/)
* [RubyOnRails](https://rubyonrails.org/)

## Copy & Paste setup


```
# Install WSL2
wsl --install
# Download the WSL-Distro Tarball
$version = [io.path]::GetFileName((Invoke-WebRequest "https://github.com/salzig/wsl-distro-rubynrails/releases/latest" -MaximumRedirection 0 -ErrorAction Ignore).Headers.Location)
(New-Object System.Net.WebClient).DownloadFile("https://github.com/salzig/wsl-distro-rubynrails/releases/download/$version/wsl-distro-rubynrails.tar", "wsl-distro-rubynrails.tar")
# Import Tarball as WSL-Distro
wsl --import RubynRails .\rubynrails wsl-distro-rubynrails.tar
# Cleanup temporary file
Remove-Item "wsl-distro-rubynrails.tar"
```

Default user is `me` with a password of `love`, which you need to run commands as root (using sudo).

## Todos

- Use Pipeline to publish WSL-Distro as downloadable Tarball

## Helpful Microsoft Knowledge Base Articles
- [WSL2 Installation Guide](https://docs.microsoft.com/en-us/windows/wsl/install)
- [Import any Linux distribution to use with WSL](https://learn.microsoft.com/en-us/windows/wsl/use-custom-distro)
