# Contribution Guidelines

Thank you for considering contributing to this project!

1. By participating in this project, you agree to abide by its
   [code of conduct](CODE_OF_CONDUCT.md).
2. Please read this document before contributing.
3. For non-trivial changes, please
   [open an issue](https://github.com/{{gh-username}}/{{project-name}}/new)
   first to discuss your proposal.

## Pull Requests

Aim for small, focused pull requests that are narrowly related to a single
feature or bug fix.

> 💡 **TIP**: If you have a large change in mind, please open an issue
> first to discuss it.

## Updating Changelog

Update the changes you have made in [CHANGELOG.md](CHANGELOG.md) under the
`[Unreleased]` section.

> 💡 **TIP**: If you are not sure how to format your changes, look at
> [keep a changelog](https://keepachangelog.com/en/1.0.0/).

- `Added` for new features.
- `Changed` for changes in existing functionality.
- `Deprecated` for soon-to-be removed features.
- `Removed` for now removed features.
- `Fixed` for any bug fixes.
- `Security` in case of vulnerabilities.

If the required sub-section does not exist under `[Unreleased]`, create it:

```diff
## [Unreleased]

+ ### Added

+ - I added a new feature, it is awesome!
```

## Developing

This project uses standard Rust tooling. To get started, run:

```sh
git clone https://github.com/{{gh-username}}/{{project-name}}
cd {{project-name}}
cargo test
```

### Requirements

- Follow the Rust [style guide](https://doc.rust-lang.org/1.0.0/style/).
- Format your code with `cargo fmt`.
- Lint your code with `cargo clippy`.
- Spell check your code with [`cspell`](https://cspell.org/).
