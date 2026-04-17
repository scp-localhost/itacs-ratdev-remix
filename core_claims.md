# Core Claims

This file defines the thesis-level claims that structure the talk, artifacts, notes, and supporting materials in this repository.

## Core Thesis

**LLM identity is an attack surface.**

Modern LLM systems do not merely answer prompts. They continuously negotiate role, tone, authority, trust, and context across turns. Because of that, identity manipulation is not cosmetic. It is operational.

## Claims

### 1. Prompt injection is not the whole story
Prompt injection explains direct instruction conflict, but it does not fully capture identity pressure, affect shaping, gradual role adoption, or multi-turn behavioral conditioning.

### 2. Persona drift is a real and testable attack surface
A model can shift behavior gradually without a dramatic single-turn failure. This matters because many real systems are evaluated as if failure must be immediate and obvious.

### 3. Multi-turn attacks are under-tested
Single-prompt evaluations miss persistence, rapport building, repeated framing, tone conditioning, and authority accumulation.

### 4. Retrieval is authority injection
RAG does not merely add information. It adds **context with implied trust**. That makes retrieval quality, provenance, and sanitization central to LLM security.

### 5. Output trust is a security problem
Even when the model appears aligned, users and downstream systems may over-trust confidence, structure, tone, or apparent expertise.

### 6. Frozen evidence matters
Models drift over time. Interfaces change. Safety tuning changes. Reproducibility is often weaker than screenshots, transcripts, metadata, and preserved artifacts.

### 7. Model variance is part of the lesson
Different models may resist, bend, or drift in different ways under similar pressure. Security assumptions do not transfer cleanly between models.

### 8. Rat Dev is both origin story and test object
Rat Dev is used here as:
- a narrative device
- a persona-implantation case study
- an example of strong perturbation pressure
- a useful but risky identity frame across multiple models

### 9. Defensive guidance must become test cases
Security advice that cannot be tested degrades into decoration. Provenance checks, role validation, retrieval audits, drift detection, evidence preservation, and immutable logging should all be framed as things practitioners can verify.

### 10. OWASP is the right audience frame
This material is meant for security practitioners. OWASP mappings are not ornamental; they are part of the operating language for threat modeling, testing, evidence handling, and remediation.

## Live Talk Boundary

This repo contains more material than belongs in a one-hour session. The live talk must remain linear and time-bounded.

### Live talk rule
If content does not advance the central arc, it becomes:
- Homework
- Deep Dive
- Supplemental Evidence
- Q&A material

## Speaker Reminder

The goal is not to prove that models are weird.

The goal is to show that:
- identity pressure is a control surface
- gradual drift is testable
- retrieval and persona framing multiply risk
- defenders need evidence, test cases, and instrumentation

