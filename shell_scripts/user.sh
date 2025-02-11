#!/bin/bash

# Prompt for the username
read -p "Enter the username: " username

# Check if the user already exists
if id "$username" &>/dev/null; then
    echo "User '$username' already exists."
    exit 1
fi

# Prompt for the password securely
read -s -p "Enter the password: " password
echo
read -s -p "Confirm the password: " password_confirm
echo

# Check if passwords match
if [ "$password" != "$password_confirm" ]; then
    echo "Passwords do not match. Exiting."
    exit 1
fi

# Create the user
sudo useradd -m -s /bin/bash "$username"

# Set the password for the user
echo "$username:$password" | sudo chpasswd

# Force password change on first login (optional)
sudo passwd --expire "$username"

echo "User '$username' has been created successfully."

