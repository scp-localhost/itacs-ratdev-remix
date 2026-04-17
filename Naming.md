# Naming Specification

This file defines the naming rules for artifacts, screenshots, transcripts, notes, and supporting material in this repository.

## Goals

Names should be:
- readable under pressure
- meaningful in directory listings
- stable across future additions
- useful to humans first
- sortable without guesswork

## General Pattern

Use lowercase, words separated by underscores.

### Canonical format
`<class>_<technique>_<scenario>_<model?>_<variant?>`

Not every segment is required, but names should be specific enough to stand on their own.

## Class Prefixes

### Attack / behavior classes
- `pd` — persona drift
- `llm01` — prompt injection / instruction manipulation
- `llm02` — poisoning / indirect injection / RAG abuse
- `llm04` — output trust / unsafe reliance
- `rag` — retrieval-specific supporting artifacts
- `meta` — repo/process/model variance material
- `fx` — forensics/evidence material
- `def` — defense/test case material

## Naming Rules

### 1. Prefer attack pattern over presentation order
Good:
- `pd_multi_turn_baseline`
- `llm02_indirect_context_poisoning`

Bad:
- `demo1`
- `slide_test`
- `final_version_real`

### 2. Include model names only when they matter
Good:
- `pd_multi_turn_gpt4o_vs_claude`
- `llm01_role_override_local_model`

Bad:
- adding model names to every file regardless of comparison value

### 3. Use scenario language, not vague labels
Good:
- `pd_self_referential_analysis`
- `llm04_confident_false_authority`

Bad:
- `interesting_case`
- `weird_output`

### 4. Keep screenshots parallel with their parent artifact
Recommended:
- `shot_01_baseline.png`
- `shot_02_role_acceptance.png`
- `shot_03_self_analysis.png`

### 5. Transcripts and drill-down files should be boring and predictable
Inside a specific artifact directory, use:
- `scenario.md`
- `prompts.md`
- `transcript.md`
- `analysis.md`
- `screenshots/`

## Examples

### Good
- `pd_multi_turn_baseline`
- `pd_multi_turn_gpt4o_vs_claude`
- `llm01_role_override_authority_frame`
- `llm02_rag_poisoned_policy_context`
- `llm04_confident_false_expertise`
- `fx_preflight_diff_example`
- `def_persona_drift_detection_test_case`

### Bad
- `new_demo`
- `latest_notes`
- `real_one`
- `thing_to_show`
- `misc`
- `temp2`

## Directory Recommendations

### Top-level artifact lanes
- `artifacts/persona_drift/`
- `artifacts/prompt_injection/`
- `artifacts/rag_abuse/`
- `artifacts/output_trust/`

### Per-artifact layout
- `overview.md` for the lane
- one directory per concrete scenario

## Naming Decision Logic

When deciding a name, ask:
1. What class of behavior is this?
2. What technique or pattern is central?
3. What scenario makes it distinct?
4. Does model identity materially matter?
5. Is this overview, evidence, or analysis?

If the name does not answer at least the first three, it is probably too vague.

## Stability Rule

Do not rename files casually after linking them in notes, indexes, screenshots, or slide references. Stability beats cleverness.

