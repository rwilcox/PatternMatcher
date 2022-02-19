Extension { #name : #Object }

{ #category : #'*PatternMatcher' }
Object >> patternMatchWithRules: rules [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	| runner|
	
   runner := PMRunner new.
   runner rules: rules. 
   ^ runner patternMatchWithObject: self.
]
