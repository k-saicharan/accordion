#!/bin/bash
set -e

mkdir -p 00_source_material 01_scenes_drafted 02_verification_artifacts

curl -fsSL https://raw.githubusercontent.com/k-saicharan/accordion/main/Workflow.md -o Workflow.md
curl -fsSL https://raw.githubusercontent.com/k-saicharan/accordion/main/mission.md -o mission.md

touch 00_source_material/scriptment.md
touch 00_source_material/outline.txt
touch 00_source_material/dialogue_log.txt
touch 02_verification_artifacts/execution_log.md

cat > session_primer.md << 'EOF'
# [Project Name] — Session Primer

## What This Project Is
[1–2 paragraphs on the film — tone, world, emotional register. Not a logline. The felt quality of the work.]

## File Map
| Path | Purpose |
|------|---------|
| 00_source_material/scriptment.md | Authoritative narrative |
| 00_source_material/outline.txt | Authoritative structure (latest version) |
| 00_source_material/dialogue_log.txt | Verbatim dialogue only |
| 01_scenes_drafted/ | Output folder |
| 02_verification_artifacts/execution_log.md | Decision record |

Source material is READ-ONLY. Never modify during drafting.

## Continuity Discipline
[Active threads the AI must track across all scenes: props whose state changes, sounds that recur and rhyme, character rules that apply every time they appear, structural callbacks.]

## Tone and Register
[How this screenplay sounds. What it must never sound like.]

## Hard Rules — Project-Specific
[Any constraints beyond the base skill rules.]
EOF

echo ""
echo "  Accordion project scaffolded in $(pwd)"
echo ""
echo "  Fill in before your first session:"
echo "  - session_primer.md  (project context)"
echo "  - mission.md         (current phase and scene state)"
echo "  - 00_source_material/scriptment.md"
echo ""
echo "  Then open this folder in Claude Code and type /accord."
echo ""
