# Import the ASP.NET Core into the container
FROM mcr.microsoft.com/dotnet/aspnet

# TCP Port where the container will be listening
EXPOSE 5000

# Working directory
WORKDIR /ForecastApp

# Copy the contents of the publish folder inside the app folder
COPY ./bin/Debug/net5.0 .

# Defines the entry point for our app
ENTRYPOINT ["dotnet", "WordMapService.dll"]