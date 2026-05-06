# meridian-gfx-palette-mark

`meridian-gfx-palette-mark` is a Dart project for Graphics. It turns design a Dart verification harness for palette systems, covering resource planning, capacity fixtures, and failure-oriented tests into a small local model with readable fixtures and a direct verification command.

## Reading Meridian Gfx Palette Mark

Start with the README, then open `metadata/project.json` to check the constants behind the examples. After that, `fixtures/cases.csv` shows the compact path and `examples/extended_cases.csv` gives a wider look at the same rule.

## What It Does

- Includes extended examples for render inputs, including `recovery` and `degraded`.
- Documents stable output tradeoffs in `docs/operations.md`.
- Runs locally with a single verification command and no external credentials.
- Stores project constants and verification metadata in `metadata/project.json`.
- Adds a repository audit script that checks structure before running the language verifier.

## Purpose

I use this kind of project to make a rule visible before adding more machinery around it. The important part here is not the size of the codebase. It is that the input signals, scoring rule, fixture data, and expected output can all be checked in one sitting.

## Files Worth Reading

- `lib`: library code
- `tests`: verification harness
- `fixtures`: compact golden scenarios
- `examples`: expanded scenario set
- `metadata`: project constants and verification metadata
- `docs`: operations and extension notes
- `scripts`: local verification and audit commands

## Design Sketch

The design is intentionally direct: parse or construct a signal, score it, classify it, and verify the expected branch. This makes the repository useful for studying graphics behavior without needing a service or database unless the language project itself is SQL. The Dart project uses a small library and assertion script, avoiding package dependencies for verification.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

This runs the language-level build or test path against the compact fixture set.

## Fixture Notes

`surge` is the first example I would inspect because it lands on the `accept` path with a score of 186. The broader file also keeps `degraded` at -39 and `recovery` at 205, which gives the model a useful low-to-high spread.

## Verification

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/audit.ps1
```

The audit command checks repository structure and README constraints before it delegates to the verifier.

## Limits

The repository favors determinism over breadth. It does not pull live data, keep secrets, or depend on network access for verification.

## Next Directions

- Add a comparison mode that shows how decisions change when one signal is adjusted.
- Add a loader for `examples/extended_cases.csv` and promote selected cases into the language test suite.
- Add a short report command that prints the score breakdown for a single scenario.
- Add one more graphics fixture that focuses on a malformed or borderline input.

## Setup

The only required setup is the local Dart toolchain. After cloning, stay in the repo root so fixture paths resolve correctly.
