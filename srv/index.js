
const cds = require("@sap/cds");
class MyEntitiesService extends cds.ApplicationService {
    init() {
        const { MyEntities, Products } = this.entities;
        /*this.before('READ', Products, req => {
            return apiProduct.run(req.query);
        });*/

        return super.init()
    }
}
module.exports = BooksService