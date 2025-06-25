# Code Style Guidelines

## Enums

Naming Enums:
https://learn.microsoft.com/en-us/dotnet/standard/design-guidelines/names-of-classes-structs-and-interfaces#naming-enumerations

How to use TS enums:
https://bluepnume.medium.com/nine-terrible-ways-to-use-typescript-enums-and-one-good-way-f9c7ec68bf15

TLDR:
- Name enums in the style TitleCase.TitleCase
- Only use TS enums without const, and when assigning a string literal to each key

## Input Types

No Input Type Number. Instead, use type="text" inputMode="numeric":
- https://stackoverflow.blog/2022/12/26/why-the-number-input-is-the-worst-input/
- https://technology.blog.gov.uk/2020/02/24/why-the-gov-uk-design-system-team-changed-the-input-type-for-numbers/

