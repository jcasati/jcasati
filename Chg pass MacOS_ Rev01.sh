#!/bin/bash

echo "Enter the username:"
read username

echo "Enter the new password:"
read -s password

echo ""
echo "Confirm the new password:"
read -s password2

if [ "$password" = "$password2" ]; then
    echo "Changing password for $username..."
    dscl . -passwd /Users/$username $password
    echo "Done."
else
    echo "
    
