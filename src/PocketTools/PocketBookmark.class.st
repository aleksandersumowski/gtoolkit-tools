Class {
	#name : #PocketBookmark,
	#superclass : #Object,
	#category : #PocketTools
}

{ #category : #accessing }
PocketBookmark >> estimatedTime [
	^ ((rawData at: 'listen_duration_estimate') / 60) asInteger
]

{ #category : #accessing }
PocketBookmark >> excerpt [
	^ rawData at: 'excerpt'
]

{ #category : #accessing }
PocketBookmark >> gtAlternateViewFor: aView [
	<gtView>
	^ aView forward 
	title: 'Bookmark2';
	items: [ rawData  ];
	view: #gtTreeFor:context:
]

{ #category : #accessing }
PocketBookmark >> gtExcerptView: aView [
	^ aView textEditor
	title: 'Excerpt';
	text: [ self at: 'excerpt']
]

{ #category : #accessing }
PocketBookmark >> gtExcerptViewFor: aView [
	<gtView>
	^ aView textEditor
	title: 'Excerpt';
	aptitude: BrGlamorousCodeEditorAptitude;
	priority: 1;
	text: [ self excerpt asRopedString]
]

{ #category : #accessing }
PocketBookmark >> gtTitleFor: aView [
	<gtView>
	^ aView textEditor
	title: 'Title'
	text: [ self hostname, ' ', self title]
]

{ #category : #accessing }
PocketBookmark >> gtViewFor: aView [
	<gtView>
	^ aView columnedList 
	title: 'Bookmark';
	items: [ rawData associations ];
	column: 'Property' text: #key;
	column: 'Value' text: #value
	
]

{ #category : #accessing }
PocketBookmark >> hostname [
	^ (rawData at: 'resolved_url')
]

{ #category : #accessing }
PocketBookmark >> rawData: d [ 
]

{ #category : #accessing }
PocketBookmark >> savedAt [
	^ rawData at: 'timeAdded'
]

{ #category : #accessing }
PocketBookmark >> title [
	^ rawData at: 'resolved_title'
]
