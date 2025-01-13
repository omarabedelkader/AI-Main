Class {
	#name : 'AIMain',
	#superclass : 'Object',
	#category : 'Pharo-AI',
	#package : 'Pharo-AI'
}

{ #category : 'world menu' }
AIMain class >> menuCommandOn: aBuilder [
    <worldMenu>

    (aBuilder item: #'AI')
        order: 3;
        iconName: #br; "specify the icon if needed"
        with: [
            (aBuilder item: #'ChatPharo')
                action: [ self openPharoZenWorkspace ];
                help: 'Open an interactive Pharo workspace designed for AI development.' translated.
            (aBuilder item: #'Load AI packages')
                action: [ self runSelectedAIModel ];
                help: 'Run the selected AI model within the current context.' translated.
        ];
        help: 'Pharo values.'

]
