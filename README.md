# domino_analyzer

A new Flutter project.

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

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
