# Developer environment for popular frameworks

## Supported Framework

* NodeJS 8.12.0
* NPM 6.4.1
* Angular 7.0.2
* .NET Core 2.1

## Additional Tools

* TypeORM

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
dt dotnet test FsharpExchange.Tests
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

## About Diginex

![Diginex Logo](https://www.diginex.com/wp-content/uploads/2018/09/diginex_chain_logo_-01-copy.png)

Diginex develops and implements blockchain technologies to transform businesses and enrich society. At the core of Diginex is our people. We are a blend of financial service professionals, passionate blockchain technologists and experienced project managers. We work with corporates, institutions & governments to create solutions that build trust and increase efficiency.