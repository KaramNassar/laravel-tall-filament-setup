# laravel-tall-filament-setup
# Laravel TALL Stack and Filament Setup Script

This PowerShell script automates the installation of a Laravel application with the TALL stack (Tailwind CSS, Alpine.js, Laravel, Livewire) and Filament.

## Features

- Prompt the user for the name of the Laravel application.
- Optionally include authentication scaffolding (`--auth`).
- Install Livewire and the TALL frontend preset.
- Install Filament.
- Set up a Filament user.

## Usage

1. **Clone the Repository:**
    ```sh
    git clone https://github.com/KaramNassar/laravel-tall-filament-setup.git
    cd laravel-tall-filament-setup
    ```

2. **Run the Script in PowerShell:**
   Navigate to the directory containing the script and run:
    ```sh
    .\laravel.ps1
    ```

3. **Follow the Prompts:**
    - Enter the name for your Laravel application.
    - Choose whether to include authentication scaffolding.
    - The script will install Livewire, TALL stack preset, and Filament, then ask whether to set up a Filament user.
