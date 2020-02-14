<h1 align="center">Load balancer in go 🔀</h1>
<p>
  <img src="https://img.shields.io/badge/version-0.0.1-blue.svg?cacheSeconds=2592000" />
</p>

Simple load balancer writen in go

## Install

Clone the project

```sh
git clone https://github.com/Akecel/load-balancer.git
```

## Usage

To custom balenced back-end use --backends (string) and separe them with commas

```sh
--backends="http://localhost:3031,http://localhost:3032,http://localhost:3033,http://localhost:3034"
```
To custom port use --port (int), default port is 3030

```sh
--port=8000
```

## Author

👤 **Axel Rayer**
