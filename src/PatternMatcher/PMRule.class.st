Class {
	#name : #PMRule,
	#superclass : #Object,
	#instVars : [
		'ifBlock',
		'operationBlock'
	],
	#category : #PatternMatcher
}

{ #category : #'as yet unclassified' }
PMRule class >> whenMatches: inIfBlock [
	"A default/shortcut: returns true when the ifBlock is true"
	"scope: class-variables  &  class-instance-variables"

	|o|
	
   o := PMRule new.
   o ifBlock: inIfBlock; operationBlock: [:fake| true ].

   ^o.
]

{ #category : #'as yet unclassified' }
PMRule class >> whenMatches: inIfBlock execute: inExecBlock [
	|o|
	
   o := PMRule new.
   o ifBlock: inIfBlock ; operationBlock: inExecBlock .

  ^ o.
]

{ #category : #accessing }
PMRule >> ifBlock [
	^ ifBlock
]

{ #category : #accessing }
PMRule >> ifBlock: anObject [
	ifBlock := anObject
]

{ #category : #accessing }
PMRule >> operationBlock [
	^ operationBlock
]

{ #category : #accessing }
PMRule >> operationBlock: anObject [
	operationBlock := anObject
]
