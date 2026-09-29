# Конвенції повідомлень комітів

У командному репозиторії використовується єдиний формат повідомлень комітів.

## Формат

Повідомлення коміту повинно мати формат:

```text
<type>: <description>
```

де `type` визначає тип зміни, а description коротко описує виконану зміну.

Дозволені типи:

- `feat`— додавання нової функціональності;
- `fix` — виправлення помилки;
- `docs` — зміни документації;
- `refactor` — зміна структури без зміни поведінки;
- `test` — додавання або зміна тестів;
- `chore` — технічні та допоміжні зміни.

## Правильні повідомлення

```text
feat: add command line parser
fix: handle missing input file
docs: update installation guide
refactor: simplify config loader
test: add parser tests
chore: configure commit hook
```

## Неправильні повідомлення

```text
wip
fix
fix2
try again
update
changes
```

Такі повідомлення не пояснюють зміст зміни або не відповідають встановленому формату.

## Автоматична перевірка

Формат повідомлення автоматично перевіряється Git hook `commit-msg`.

Версіонована копія hook знаходиться у:

```text
scripts/hooks/commit-msg
```

Після клонування репозиторію hook потрібно встановити:

```bash
cp scripts/hooks/commit-msg .git/hooks/commit-msg
chmod +x .git/hooks/commit-msg
```

Після встановлення кожне повідомлення коміту перевіряється автоматично. Якщо повідомлення не відповідає встановленому формату, створення коміту скасовується.
