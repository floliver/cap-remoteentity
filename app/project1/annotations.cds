using my.MyService as service from '../../srv/service';

annotate service.MyEntities with @(UI.LineItem: [
    {
        $Type: 'UI.DataField',
        Label: 'superEntityName',
        Value: superEntityName,
    },
    {
        $Type: 'UI.DataField',
        Label: 'businessPartners_BusinessPartner',
        Value: businessPartners_BusinessPartner,
    },
    {
        $Type: 'UI.DataField',
        Label: 'businessPartners_BusinessPartner',
        Value: businessPartners.Customer,
    },
]);

annotate service.MyEntities with {
    businessPartners @Common.ValueList: {
        $Type         : 'Common.ValueListType',
        CollectionPath: 'BusinessPartners',
        Parameters    : [
            {
                $Type            : 'Common.ValueListParameterInOut',
                LocalDataProperty: businessPartners_BusinessPartner,
                ValueListProperty: 'BusinessPartner',
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'Customer',
            },
        ],
    }
};

annotate service.MyEntities with @(
    UI.FieldGroup #GeneratedGroup1: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'superEntityName',
                Value: superEntityName,
            },
            {
                $Type: 'UI.DataField',
                Label: 'businessPartners_BusinessPartner',
                Value: businessPartners_BusinessPartner,
            },
            {
                $Type: 'UI.DataField',
                Label: 'businessPartners_BusinessPartner',
                Value: businessPartners.Customer,
            },
        ],
    },
    UI.Facets                     : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneratedFacet1',
        Label : 'General Information',
        Target: '@UI.FieldGroup#GeneratedGroup1',
    }, ]
);
