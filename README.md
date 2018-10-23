# Developer environment for popular frameworks

## Supported Framework

* NodeJS 8.12.0
* NPM 6.4.1
* Angular 7.0.2
* .NET Core 2.1

## Install

```sh
docker run --rm diginex/dt install | sudo sh
```

## Example Usage

In the project folder, run:

Angular:

```sh
dt ng serve
```

Dotnet:

```sh
dt dotnet run -p WebSocketApp
```

## Additional Info for Angular 7.0.2

| Package | Version |
|---|---|
| @angular-devkit/architect | 0.10.2 |
| @angular-devkit/core | 7.0.2 |
| @angular-devkit/schematics | 7.0.2 |
| @schematics/angular | 7.0.2 |
| @schematics/update | 0.10.2 |
| rxjs | 6.3.3 |
| typescript | 3.1.3 |