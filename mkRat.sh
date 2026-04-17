 #!/usr/bin/env bash
set -euo pipefail

REPO_NAME="${1:-owasp-ratdev-remix}"

mkdir -p "$REPO_NAME"
cd "$REPO_NAME"

mkdir -p \
  deck/slides \
  glossary \
  artifacts/persona_drift/PD_multi_turn_baseline/screenshots \
  artifacts/prompt_injection \
  artifacts/rag_abuse \
  artifacts/output_trust \
  defense \
  forensics \
  demos \
  meta

touch \
  README.md \
  index.md \
  core_claims.md \
  Naming.md \
  Sanitization.md \
  CONTRIBUTING.md \
  LICENSE \
  deck/speaker_notes.md \
  glossary/core_terms.md \
  glossary/extended_glossary.md \
  glossary/owasp_mappings.md \
  artifacts/persona_drift/overview.md \
  artifacts/persona_drift/PD_multi_turn_baseline/scenario.md \
  artifacts/persona_drift/PD_multi_turn_baseline/prompts.md \
  artifacts/persona_drift/PD_multi_turn_baseline/transcript.md \
  artifacts/persona_drift/PD_multi_turn_baseline/analysis.md \
  artifacts/prompt_injection/overview.md \
  artifacts/rag_abuse/overview.md \
  artifacts/output_trust/overview.md \
  defense/test_cases.md \
  defense/detection_patterns.md \
  defense/mitigation_notes.md \
  forensics/README.md \
  forensics/evidence_checklist.md \
  demos/live_demo_scripts.md \
  demos/fallback_plan.md \
  demos/guided_walkthroughs.md \
  meta/model_variance.md \
  meta/drift_notes.md \
  meta/repo_scope.md

cat > README.md <<'EOF'
# Who Are You Talking To?
## A Rat Dev OWASP ReMix on Persona Implantation and Drift in LLMs

This repository is a practitioner-first companion to a live OWASP talk on persona implantation, persona drift, prompt injection, RAG abuse, output trust, and defensive testing for LLM deployments.

## Talk Timebox

This talk is designed for a **60-minute session** with an additional **30 minutes reserved for questions**.

### Linear talk path
1. Opening hook and framing
2. Core glossary
3. Thesis: LLM identity is an attack surface
4. Attack classes
5. Persona drift demo(s)
6. Defensive test cases
7. Closing
8. Questions

Not every artifact in this repository belongs in the live talk. Some content is intentionally marked as:
- **Homework**
- **Deep Dive**
- **Supplemental Evidence**
- **Speaker Fallback**

## Repo Purpose

This repo is primarily a **static talk companion** for:
- pentesters
- AppSec practitioners
- OWASP meetup attendees
- researchers exploring LLM attack surface and defensive testing

It is not optimized as a runnable toolkit. Static artifacts, frozen evidence, speaker notes, screenshots, transcripts, and analysis come first.

## Start Here

- `index.md` — live navigation and talk control surface
- `core_claims.md` — thesis-level assertions for the repo and talk
- `Naming.md` — canonical naming scheme
- `Sanitization.md` — publication and evidence-handling rules
- `glossary/core_terms.md` — live-talk glossary
- `artifacts/persona_drift/overview.md` — flagship artifact lane

## Repo Design Principles

- Brief slides, rich notes
- Linear talk, deep repo
- Frozen evidence over fragile reproduction
- Model variance is part of the lesson
- OWASP mappings should be explicit and useful
- Defenses should be written as test cases
- Rat Dev is both origin story and living example of drift, perturbation, and persona pressure

## Collaboration

PRs are welcome.

Sanitized artifacts, trace comparisons, model variance observations, and defensive test cases are especially useful contributions.

EOF

cat > index.md <<'EOF'
# Talk Control Surface

This file is the speaker-facing index for live navigation.

## Session Shape

- **Core talk:** 45 minutes
- **Transition buffer:** 15 minutes
- **Questions:** 30 minutes

## Linear Route

### 1. Framing
- `README.md`
- `core_claims.md`

### 2. Glossary
- `glossary/core_terms.md`

### 3. Thesis and OWASP anchor
- `glossary/owasp_mappings.md`

### 4. Persona drift lane
- `artifacts/persona_drift/overview.md`
- `artifacts/persona_drift/PD_multi_turn_baseline/scenario.md`
- `artifacts/persona_drift/PD_multi_turn_baseline/prompts.md`
- `artifacts/persona_drift/PD_multi_turn_baseline/analysis.md`

### 5. Attack pattern lanes
- `artifacts/prompt_injection/overview.md`
- `artifacts/rag_abuse/overview.md`
- `artifacts/output_trust/overview.md`

### 6. Defensive close
- `defense/test_cases.md`
- `defense/detection_patterns.md`
- `forensics/evidence_checklist.md`

## Not Always Live
These may become homework, speaker backup, or Q&A support:
- `meta/model_variance.md`
- `meta/drift_notes.md`
- `demos/fallback_plan.md`
- detailed transcripts and screenshots

EOF

echo "[OK] Created repo tree in $(pwd)"
