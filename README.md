# meridian-gfx-palette-mark

`meridian-gfx-palette-mark` explores graphics with a small Dart codebase and local fixtures. The technical goal is to design a Dart verification harness for palette systems, covering resource planning, capacity fixtures, and failure-oriented tests.

## Purpose

I want this repository to be useful as a quick reading exercise: fixtures first, implementation second, verifier last.

## Meridian Gfx Palette Mark Review Notes

`edge` and `stress` are the cases worth reading first. They show the optimistic and cautious ends of the fixture.

## What Is Covered

- `fixtures/domain_review.csv` adds cases for geometry span and atlas pressure.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/meridian-gfx-palette-walkthrough.md` walks through the case spread.
- The Dart code includes a review path for `shader drift` and `atlas pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Implementation Notes

The fixture data drives the tests. The code stays thin, while `metadata/domain-review.json` and `config/review-profile.json` explain what each case is meant to protect.

The Dart code keeps the review rule close to the tests.

## Command

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Audit Path

The check exercises the source code and the review fixture. `edge` is the high score at 245; `stress` is the low score at 168.

## Limits

The repository is intentionally scoped to local checks. I would expand it by adding adversarial fixtures before adding features.
