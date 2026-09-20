# Спільні налаштування проєкту

У цьому документі описано спільні налаштування `.editorconfig` та `.gitignore`, які використовуються в проєктах курсу.

## .editorconfig

Файл `.editorconfig` задає єдині правила форматування файлів незалежно від редактора або IDE.

Рекомендована конфігурація:

```ini
root = true

[*]
charset = utf-8
end_of_line = lf
insert_final_newline = true
indent_style = space
indent_size = 2
trim_trailing_whitespace = true

[*.py]
indent_size = 4

[*.md]
trim_trailing_whitespace = false
```

### Пояснення

- `root = true` — вказує, що це головний файл EditorConfig і пошук конфігурації у батьківських каталогах потрібно припинити.
- `[*]` — правила застосовуються до всіх файлів.
- `charset = utf-8` — файли зберігаються в кодуванні UTF-8.
- `end_of_line = lf` — використовується завершення рядків LF, стандартне для Linux/macOS та поширене в Git-репозиторіях.
- `insert_final_newline = true` — наприкінці файла додається символ нового рядка.
- `indent_style = space` — для відступів використовуються пробіли, а не табуляція.
- `indent_size = 2` — базовий відступ становить два пробіли.
- `trim_trailing_whitespace = true` — зайві пробіли наприкінці рядків автоматично видаляються.
- `[*.py]` — окремі правила для Python-файлів.
- `indent_size = 4` для Python — використовується стандартний для Python відступ у чотири пробіли.
- `[*.md]` — окремі правила для Markdown-файлів.
- `trim_trailing_whitespace = false` для Markdown — пробіли наприкінці рядка не видаляються, оскільки в Markdown вони можуть мати значення для форматування переносу рядків.

Таким чином, конфігурація містить різні правила щонайменше для двох типів файлів: Python (`*.py`) та Markdown (`*.md`).

## .gitignore

Файл `.gitignore` визначає файли та каталоги, які Git не повинен додавати до репозиторію.

Рекомендований набір правил:

```gitignore
# Environment variables
.env

# Python cache
__pycache__/
*.py[cod]

# Python virtual environments
.venv/
venv/

# Archives
*.tar.gz

# Executable files
*.exe

# macOS
.DS_Store

# IDE / Editor
.vscode/
.idea/
```

### Пояснення

- `.env` — локальні змінні середовища, які можуть містити конфіденційні дані.
- `__pycache__/` — кеш скомпільованих Python-модулів.
- `*.py[cod]` — скомпільовані Python-файли.
- `.venv/` та `venv/` — локальні Python virtual environments.
- `*.tar.gz` — архіви, які не повинні випадково потрапляти до репозиторію.
- `*.exe` — зібрані виконувані файли Windows.
- `.DS_Store` — службові файли macOS.
- `.vscode/` та `.idea/` — локальні налаштування редакторів та IDE.

Файли, які вже відстежуються Git, не перестають відстежуватися автоматично після додавання відповідного правила до `.gitignore`