# Welcome To PatternMatcher

Because Smalltalk implements conditions and flow control statements as methods, so why not pattern matchers?

# Using

We add an extension method on object...

```smalltalk
100 patternMatchWithRules: {
  PMRule whenMatches: [ :o | o = 42 ] execute: [ 'yes' ].
  PMRule whenMatches: [ :o | o = 1 ]  execute: [ 3  ].
}

"result of ^^^ will be nil, as no patterns match"

42 patternMatchWithRules: {
  PMRule whenMatches: [ :o | o = 42 ] execute: [ 'yes' ].
  PMRule whenMatches: [ :o | o = 1 ]  execute: [ 3  ].
}

"result will be 'yes', as the first expression matches.".
```

An object can only match one rule in a set, and once that happens rules stop evaluating.
