# domino_spec

Используемые правила для игры в Домино "Козёл".

## OpenSpec

В проекте настроен OpenSpec для Codex. Конфигурация и контекст проекта находятся
в `openspec/config.yaml`, спецификации — в `openspec/specs/`, изменения —
в `openspec/changes/`, навыки Codex — в `.agents/skills/`.

Установка CLI на другой машине (Node.js 20.19.0 или новее):

```sh
npm install -g @fission-ai/openspec@1.9.0
```

В чате Codex начните изменение с `$openspec-propose "описание изменения"`.
Для реализации используйте `$openspec-apply-change`, для архивации завершённого
изменения — `$openspec-archive-change`.

Проверка спецификаций и изменений из корня проекта:

```sh
openspec validate --all --strict
```

Документация: [OpenSpec](https://openspec.dev/docs/quickstart).

## Материалы

- [Правила агентов](AGENTS.md).
- [План правил игры](openspec/changes/add-kozel-fish-variants/specs/kozel-rules/spec.md).
- [Исследование источников](docs/research/kozel-fish-eggs-sources.md).
- [Описание JSON-формата](docs/formats/README.md),
  [схема](docs/formats/kozel-game.schema.json) и
  [пример завершённой партии](docs/formats/kozel-game.example.json).

Репозиторий содержит спецификации и документацию; кода приложения и выбранного
стека реализации нет. Основные спецификации ещё не опубликованы в
`openspec/specs/`: правила находятся в активном плане и архиве планирования.
Исторические архивные документы могут описывать прежнее состояние проекта.

Скрипты для агентов в `tools/` и Git-настройки сохранены. Проверка материалов:

```sh
bash tools/ai/run_openspec_validation.sh
```

## Открытие в Android Studio

Выберите **File → Open** и каталог `domino_spec`. Для открытия добавлены только
`domino_spec.iml` и `.idea/modules.xml`: они описывают модуль с корнем репозитория.
Код приложения, SDK и сборка для работы с документацией не требуются.
Личные настройки IDE и её кэши остаются исключёнными из Git.

Описание формата проекта: [документация JetBrains](https://www.jetbrains.com/help/idea/creating-and-managing-projects.html).
