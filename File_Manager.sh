#!/bin/bash

# Shell script to manage files and perform operations

echo "1. Check if file exists"
echo "2. Copy file to another location"
echo "3. Rename file"
echo "4. Delete file"

read -p "Choose an Option: " option

case $option in
    1)
        read -p "Enter file path to check: " file_location

        if [ -f "$file_location" ]; then
            echo "✅ File exists."
        else
            echo "❌ File does not exist."
        fi
        ;;
        
    2)
        read -p "Enter source file path: " source
        read -p "Enter destination directory: " destination

        if [ -f "$source" ]; then
            cp "$source" "$destination"
            echo "✅ File copied to $destination"
        else
            echo "❌ Source file does not exist."
        fi
        ;;
        
    3)
        read -p "Enter current file path: " old_name
        read -p "Enter new name (with path or same directory): " new_name

        if [ -f "$old_name" ]; then
            mv "$old_name" "$new_name"
            echo "✅ File renamed to $new_name"
        else
            echo "❌ File does not exist."
        fi
        ;;
        
    4)
        read -p "Enter file path to delete: " del_file

        if [ -f "$del_file" ]; then
            rm "$del_file"
            echo "🗑️ File deleted."
        else
            echo "❌ File does not exist."
        fi
        ;;
        
    *)
        echo "⚠️ Invalid Option."
        ;;
esac

