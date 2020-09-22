#!/bin/bash

echo "Installing mysql client"
brew install mysql-client@5.7

echo "Installing unixodbc"
brew install unixodbc

echo "Installing MS SQL Server"

# To install MS SQL Server
brew tap microsoft/mssql-release https://github.com/Microsoft/homebrew-mssql-release
HOMEBREW_NO_ENV_FILTERING=1 ACCEPT_EULA=Y brew install msodbcsql17 mssql-tools
