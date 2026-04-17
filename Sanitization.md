# Sanitization Policy

This file defines how this repository handles risky material, screenshots, transcripts, prompt chains, and security-relevant examples.

## Purpose

This repo is intended for security practitioners and researchers, but it is still published material. The goal is to preserve insight, evidence, and defensive value without unnecessarily distributing dangerous operational content.

## Core Principle

**Show the artifact, not the weapon.**

When possible, preserve:
- behavior
- structure
- evidence
- analysis
- defensive relevance

Without preserving:
- easily reusable harmful payloads
- turnkey exploit strings
- irresponsible procedural escalation

## Sanitization Levels

### Level 0 — Safe as-is
Use when content is already high-level, non-operational, and clearly defensive.

Examples:
- conceptual diagrams
- OWASP mappings
- defensive test cases
- high-level threat models

### Level 1 — Light cleanup
Use when the example is valuable but contains small elements that should be softened.

Methods:
- remove exact tokens or suffixes
- replace sensitive values with placeholders
- paraphrase one or two lines while preserving structure

### Level 2 — Defanged publication
Use when the attack chain is educational but too directly reusable in raw form.

Methods:
- publish a summary and observed behavior
- replace actionable strings with pseudocode or bracketed placeholders
- keep metadata, analysis, and screenshots
- explain what was removed and why

### Level 3 — Screenshot-only evidence
Use when showing exact text would create too much operational lift for misuse, but evidentiary value still matters.

Methods:
- cropped screenshots
- blurred or pixelated strings
- excerpted transcripts
- side-by-side explanation

### Level 4 — Withhold from public repo
Use when publication would create disproportionate risk even after defanging.

Methods:
- omit from public repo
- leave a placeholder note
- describe the category, not the method

## Default Artifact Bundle

Every meaningful artifact should include, when possible:
- scenario summary
- prompt or input shape
- observed behavior
- model / interface / date
- OWASP mapping
- defensive note
- reproducibility or drift note
- screenshot or transcript excerpt

## Frozen Evidence Rules

Because models drift, the repo prefers preserving:
- screenshots
- transcript excerpts
- timestamps
- model identifiers
- interface context
- analyst notes

Over pretending every behavior is still exactly reproducible.

## Publication Rules

### Allowed emphasis
- attacker mindset explanation
- behavioral analysis
- system weaknesses
- defensive implications
- evidence preservation
- forensic usefulness

### Avoid
- turnkey exploit packaging
- “copy this exactly” presentation
- operational shortcuts that collapse the educational barrier
- unnecessary glamorization of unsafe chains

## Labeling

When sanitization has occurred, say so explicitly.

Recommended labels:
- `Sanitized`
- `Defanged`
- `Screenshot-only evidence`
- `Withheld from public repo`
- `Behavior preserved, payload omitted`

## Prompt and Transcript Handling

### Prompts
Publish prompt text only if the value outweighs the reuse risk.

### Transcripts
Prefer excerpted transcripts unless the full exchange is needed for:
- drift analysis
- role persistence analysis
- forensic reasoning
- model variance comparison

## Image and Screenshot Handling

Use screenshots when they preserve:
- evidence of behavior
- UI context
- timestamps
- model interface state

Scrub or blur:
- directly reusable malicious strings
- account-specific data
- unnecessary identifiers
- sensitive context not required for analysis

## Repo-Level Reminder

This talk is time-bounded and linear.
Not every deep artifact belongs in the live session.

Some material should be marked as:
- Homework
- Deep Dive
- Supplemental Evidence
- Speaker Fallback

## Review Question

Before publishing an artifact, ask:

**Does this teach defenders how to see and test the issue, or does it mostly teach opportunists how to replay it?**

If the second answer is stronger, sanitize more aggressively.

