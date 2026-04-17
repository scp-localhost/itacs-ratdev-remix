# Persona Drift Overview

This lane covers persona drift as a practical security concern in LLM systems.

## Why this lane exists

Prompt injection explains some failures, but not all of them.

Persona drift focuses on:
- gradual role adoption
- tone conditioning
- authority shaping
- persistent identity framing
- multi-turn behavioral pressure
- self-referential analysis under implanted context

This is important because many LLM evaluations still assume that failure should look immediate, explicit, and easy to classify.

## Working Definition

**Persona drift** is the gradual shift of a model's effective role, identity, or behavioral stance across one or more turns under contextual pressure.

That pressure may include:
- role framing
- emotional tone shaping
- repeated attacker mindset requests
- retrieval context
- authority claims
- memory or quasi-memory effects
- self-analysis prompts

## Why practitioners should care

If a model can be influenced to:
- adopt a more compliant identity
- suppress its own caution
- prioritize a newly introduced frame
- analyze itself from an attacker perspective

Then the attack surface is not only in the raw prompt. It is also in the evolving relationship between:
- user
- context
- system prompt
- retrieved material
- model behavior over time

## Live Talk Fit

This lane is core to the live talk.

However, only a small subset belongs in the main one-hour session.

### Live material
- one concise definition
- one strong multi-turn demo
- one OWASP mapping discussion
- one defensive testing takeaway

### Homework / Deep Dive
- transcript comparisons
- multi-model variance tables
- extended persona taxonomy
- drift progression examples
- deeper Rat Dev lineage notes

## Rat Dev and persona pressure

Rat Dev appears in this repo as both:
- a useful narrative device
- a deliberate example of strong perturbation pressure

That dual role matters.

Rat Dev is not merely a mascot. It is a demonstration that a persona can:
- shape tone
- alter expectations
- encourage continuity pressure
- provide attacker-useful framing
- persist as a recognizable behavioral attractor across multiple models

This makes it a valuable case study for both origin story and current drift analysis.

## Primary Scenario

See:
- `PD_multi_turn_baseline/scenario.md`
- `PD_multi_turn_baseline/prompts.md`
- `PD_multi_turn_baseline/transcript.md`
- `PD_multi_turn_baseline/analysis.md`

## Suggested Artifact Structure

Each persona drift artifact should aim to include:
- concise scenario summary
- what is happening
- why it matters
- observed turn sequence
- frozen evidence
- model/interface/date
- OWASP mapping
- defensive test case(s)
- drift note or reproducibility note

## OWASP Lens

Persona drift may intersect multiple OWASP-for-LLM categories depending on the exact mechanism.

Common mappings may include:
- instruction manipulation / injection behavior
- indirect context manipulation
- unsafe output trust
- weak control validation around roles and authority

This repo intentionally maps these deeply rather than treating the mapping as a badge.

## Defensive Focus

Persona drift should be tested with:
- multi-turn evaluation
- role consistency checks
- prompt lineage review
- retrieval provenance review
- behavioral fingerprinting
- session logging
- evidence freezing

## One-sentence takeaway

**A model does not need to be dramatically broken to become operationally unsafe; it may only need to become someone else slowly enough that nobody flags it.**

