namespace my;

using {my as my} from '../db/index';


service MyService {

    entity MyEntities       as projection on my.MyEntities;

    @readonly
    entity BusinessPartners as projection on my.BusinessPartners;

    annotate MyEntities with @odata.draft.enabled;

}
