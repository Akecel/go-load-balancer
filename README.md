# Load balancer in go 🔀
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](#)

## About

Simple load balancer writen in go

## Install

Clone the project

```sh
git clone https://github.com/Akecel/load-balancer.git
```

## Usage

```sh
docker-compose up
```
And go to

```sh
http://localhost:3030
```

To custom balenced back-end use --backends (string) and separe them with commas

```sh
--backends=http://localhost:3031,http://localhost:3032,http://localhost:3033,http://localhost:3034
```
To custom port use --port (int), default port is 8080

```sh
--port=8081
```
