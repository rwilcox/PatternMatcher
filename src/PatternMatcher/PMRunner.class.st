"
PMRunner is a super small class meant to hold all code away from our Object sub-class. Because that usually doesn't go well
"
Class {
	#name : #PMRunner,
	#superclass : #Object,
	#instVars : [
		'rules'
	],
	#category : #PatternMatcher
}

{ #category : #'as yet unclassified' }
PMRunner >> patternMatchWithObject: obj [

  |foundRule|
 
  [ 
	foundRule := rules detect: [ :currentRule ||ifRes|
	  ifRes := (currentRule ifBlock cull: obj).	
	  ifRes
   ].

	^ foundRule operationBlock cull: obj.

 ] on: NotFound do: [ ^ nil]. 

]

{ #category : #accessing }
PMRunner >> rules [
	^ rules
]

{ #category : #accessing }
PMRunner >> rules: anObject [
	rules := anObject
]
