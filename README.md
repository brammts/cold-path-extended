# Cold Path Extended
[![Общий тест](https://github.com/brammts/cold-path-extended/actions/workflows/global_test.yml/badge.svg)](https://github.com/brammts/cold-path-extended/actions/workflows/global_test.yml) 
![Latest Version](https://img.shields.io/github/v/tag/brammts/cold-path-extended?sort=semver&label=version)

**Cold Path Extended** — это сборка игрового сервера Cold Path, имеющая более совершенную техническую базу, чем у оригинальной, и более подробную документацию на русском языке.

## Почему русский язык?
При разработке сборки я учитывал тот факт, что почти всё сообщество Cold  Path состоит из русскоязычных игроков. Поэтому я решил сделать  документацию на русском языке, чтобы сделать сборку более удобной для использования людьми, которые действительно будут в ней заинтересованы.

## Отличия от стандартной сборки
Сборка Cold Path Extended имеет следующие отличия от стандартной сборки:
- **Модульность**. Все плагины представлены здесь в виде модулей ("подпрограмм"), имеющих  собственные конфигурации и внешние интерфейсы.
- **Высокая конфигурируемость**. Даже если вы человек, не знакомый с программированием на языке Lua, вам не составит труда настроить сервер так, чтобы он выделся среди других, ведь все плагины очень легко настраиваются.
- **Поддерживаемость**. В отличие от стандартной сборки, Cold Path Extended до сих пор поддерживается сообществом.


## Установка и настройка (Linux)
### 1. Установка необходимых утилит
```
apt-get update
apt-get install docker
apt-get install git
```
### 2. Клонирование репозитория
```
git clone https://github.com/brammts/cold-path-extended.git
cd cold-path-extended
```
### 3. Создание контейнера
```
docker build -t cold-path-extended .
```
### 4. Запуск сервера
```
docker-compose up
```