Class {
	#name : #PocketBookmarks,
	#superclass : #Object,
	#category : #PocketTools
}

{ #category : #accessing }
PocketBookmarks >> bookmarks [
]

{ #category : #accessing }
PocketBookmarks >> gtBookmarks: aView [
	<gtView>
	^ aView list
		title: 'Bookmarks';
		priority: 1;
		items: [ self bookmarks]
]

{ #category : #accessing }
PocketBookmarks >> gtRawDataFor: aView [
	<gtView>
	^ aView list
	 title: 'Raw data';
	 items: [ rawData] 
]

{ #category : #accessing }
PocketBookmarks >> rawData: anObject [ 
]
