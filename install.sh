#!/bin/bash

# Pobranie ścieżki do bieżącego katalogu
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Ścieżka do klucza publicznego w lokalnym repozytorium
LOCAL_KEY_PATH="$CURRENT_DIR/pub_key.asc"

# Dodawanie klucza publicznego do systemu APT
sudo apt-key add "$LOCAL_KEY_PATH"
