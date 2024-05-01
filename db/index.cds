namespace my;


using {
    managed,
    cuid,
    temporal
} from '@sap/cds/common';

using {API_BUSINESS_PARTNER as external} from '../srv/external/API_BUSINESS_PARTNER';


entity BusinessPartners as
    projection on external.A_BusinessPartner {
        key BusinessPartner,
            Customer
    }

entity MyEntities {
    superEntityName  : String;
    businessPartners : Association to BusinessPartners;
}
