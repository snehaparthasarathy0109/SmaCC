accessing
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec baseline: 'AltBrowser' with: [ spec repository: 'github://ThierryGoubier/AltBrowser:pharo4.0' ].
			spec
				baseline: 'SmaCC' with: [ spec repository: 'github://ThierryGoubier/SmaCC' ];
				import: 'SmaCC'.
			spec package: 'SmaCC-Browser' with: [ spec requires: #('SmaCC-Runtime' 'AltBrowser') ].
			spec group: 'default' with: #('SmaCC-Browser') ]
