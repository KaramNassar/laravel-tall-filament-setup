# Function to prompt user for Laravel application name
function PromptForAppName {
    $promptMessage = @"
Welcome to Laravel Application Setup with Tall stack and Filament.

Please enter the name for your Laravel application:
"@
    
    $appName = Read-Host -Prompt $promptMessage
    return $appName
}

# Function to prompt user for authentication scaffolding
function PromptForAuth {
    $promptMessage = @"
Do you want to include authentication scaffolding (--auth)?
Enter 'y' for yes or 'n' for no:
"@
    
    $response = Read-Host -Prompt $promptMessage
    
    if ($response -eq 'y') {
        return $true
    } else {
        return $false
    }
}

# Function to prompt user for creating Filament user
function PromptForCreatingFilamentUser {
    $promptMessage = @"
Do you want to create a Filament user?
Enter 'y' for yes or 'n' for no:
"@
    
    $response = Read-Host -Prompt $promptMessage
    
    if ($response -eq 'y') {
        return $true
    } else {
        return $false
    }
}

# Prompt user for Laravel application name
$appName = PromptForAppName

# Create Laravel application
laravel new $appName
cd $appName

# Install Livewire and Tall frontend preset
composer require livewire/livewire laravel-frontend-presets/tall

# Prompt for authentication scaffolding
$installWithAuth = PromptForAuth

if ($installWithAuth) {
    # Install UI with Tall preset and authentication
    php artisan ui tall --auth
} else {
    # Install UI with Tall preset (without authentication)
    php artisan ui tall
}

# Install FilamentPHP
composer require filament/filament
php artisan filament:install --panels

# Install npm dependencies and compile assets
npm install

# Set up Filament user
$createUser = PromptForCreatingFilamentUser
if ($createUser) {
	php artisan make:filament-user
} 


Write-Output "Laravel application setup with Tall stack and Filament completed successfully."
pause