sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'my.project1',
            componentId: 'MyEntitiesList',
            contextPath: '/MyEntities'
        },
        CustomPageDefinitions
    );
});