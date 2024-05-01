sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'my/project1/test/integration/FirstJourney',
		'my/project1/test/integration/pages/MyEntitiesList',
		'my/project1/test/integration/pages/MyEntitiesObjectPage'
    ],
    function(JourneyRunner, opaJourney, MyEntitiesList, MyEntitiesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('my/project1') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheMyEntitiesList: MyEntitiesList,
					onTheMyEntitiesObjectPage: MyEntitiesObjectPage
                }
            },
            opaJourney.run
        );
    }
);