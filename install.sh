#!/bin/bash

# Ścieżka do tymczasowego pliku klucza
TEMP_KEY_FILE="/tmp/repo_key.asc"

# Adres URL pliku klucza na GitHubie
KEY_URL="https://github.com/Slayers99/public_keys/blob/main/pub_key.asc"

# Pobieranie klucza publicznego z GitHuba
wget -O "$TEMP_KEY_FILE" "$KEY_URL"

# Dodawanie klucza publicznego do systemu APT
sudo apt-key add "$TEMP_KEY_FILE"

# Opcjonalnie: usuwanie tymczasowego pliku klucza
rm -r "$TEMP_KEY_FILE"
