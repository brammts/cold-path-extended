local M = {}

-- Название сервера
M.name = "Cold Path Extended"
-- Порт сервера
M.port = 25255
-- Сложность игры
M.difficulty = "standart"
-- Версия сервера (Версия игры, которая поддерживается сервером)
M.SERVER_VERSION = 19
-- Максимальное время, которое может длиться ход. В секундах
M.time_to_turn = 180
-- Проверка UUID
M.verify_uuid = true
-- Пароль оператора
M.operator_password = "PASSWORD"
-- Количество игроков нажавших "Следующий ход", необходимое для перехода на следующий ход, в процентном соотношении
M.percent_to_next = 0.5 -- 50%
-- Название файла базы данных SQLite3 сервера
M.db_name = "server.db" 

return M
