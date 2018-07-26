# vagrant-docker-php-vscode

## Description

This is a sample project that demonstrates debugging of a PHP application that runs on docker on Vagrant VM.

## Requirement
- [Visual Studio Code](https://code.visualstudio.com/)
  - [PHP IntelliSense extention](https://marketplace.visualstudio.com/items?itemName=felixfbecker.php-intellisense)
  - [PHP Debug extention](https://marketplace.visualstudio.com/items?itemName=felixfbecker.php-debug)
- [Vagrant](https://www.vagrantup.com/)
  - [vagrant-vbguest plugin](https://github.com/dotless-de/vagrant-vbguest)
- [VirtualBox](https://www.virtualbox.org/)

## Usage

```
$ vagrant up
$ vagrant ssh
vagrant@ubuntu-xenial:~$ cd /vagrant
vagrant@ubuntu-xenial:/vagrant$ docker-compose up -d
```

### Debugging (Browser)
- Open the project directry with Visual Studio Code.
- Open "www/html/index.php".
- Set a breakpoint at the "phpinfo();" line.
- Start debugging.
  - Open Debug view.
  - Press the green arrow beside "Listen for XDebug".
- Open "http://localhost:8080/index.php" in your web browser.

The program will stop at the breakpoint.

### Debugging (PHPUnit)
- Open the project directry with Visual Studio Code.
- Open "www/src/Calc.php".
- Set a breakpoint at the "$result = $a + $b;" line.
- Start debugging.
  - Open Debug view.
  - Press the green arrow beside "Listen for XDebug".
- Run phpunit.
```
vagrant@ubuntu-xenial:/vagrant$ docker-compose exec app phpunit src/CalcTest
```

The program will stop at the breakpoint.

If you check "Everything" in the BREAKPOINTS area of Debug view (default), the program also stops when Exceptions occurs.  
Unckeck "Everything" to stop only at breakpoints you set.