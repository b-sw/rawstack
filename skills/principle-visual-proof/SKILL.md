---
name: principle-visual-proof
description: Prove a new or redesigned user-facing feature with screenshots, then get an independent UX and UI review of them. Use when you build a feature or redesign one that has a visible surface.
---

# Principle: Visual Proof

A visible feature is not done until screenshots show it working. Tests prove
behavior. Screenshots prove what the user sees.

## When it applies

Apply this principle when you build a new feature or redesign an existing one
and the change has a visible surface. A visible surface is a web page, an app
screen, a component, a TUI, or formatted CLI output.

Skip it for changes that the user cannot see, such as a refactor, a backend
fix, or a dependency update.

## Capture screenshots

Capture screenshots of the real running feature. Do not use mockups, design
files, or rendered component code as proof.

Capture each state that the user can reach:

- The default state with realistic data.
- The key steps of the main interaction.
- Empty, loading, and error states, if the feature has them.
- Long text, many items, and other content that can overflow.
- Narrow and wide viewports, if the feature is responsive.
- Light and dark themes, if the product supports both.

For a redesign, also capture the same states before the change. Use the same
data, viewport, and theme for each before and after pair.

Give each file a name that tells the state, such as
`checkout-error-mobile.png`. Keep the screenshots outside the repository unless
the project stores them.

## Get an independent review

Spawn `ui-reviewer` after you capture the screenshots. Give it:

- The screenshot paths.
- The feature goal and the target user, in one or two sentences.
- The before screenshots, for a redesign.

Do not give it the diff or the source code. It must judge what the user sees,
not what the code intends.

Fix each blocking finding and each finding that you accept. Reject a finding
only when it conflicts with the product intent or the existing design system.
Recapture the changed states. Send them to `ui-reviewer` one more time only if
a fix changed the layout or the flow.

## Report

Show the final screenshots to the user. Put them in the pull request
description when one exists. List each finding that you fixed and each finding
that you rejected, with the reason.

If you cannot run the feature or capture a screenshot, say so. Tell the user
what blocked you. Do not report the feature as visually verified.
