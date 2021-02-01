var express = require("express");
var router = express.Router();
const connection = require("../connection/connection");
var _ = require("underscore");

/* GET recherche page. */
router.get("/", function (req, res, next) {
  let sql = "SELECT * FROM listevols";
  let query = connection.query(sql, (err, rows) => {
    if (err) throw err;
    let tousDeparts = [];
    rows.forEach((element) => {
      tousDeparts.push(element.depart);
    });
    let departUnique = _.unique(tousDeparts);
    console.log(departUnique);

    let tousArrivee = [];
    rows.forEach((element) => {
      tousArrivee.push(element.arrivee);
    });
    let arriveeUnique = _.unique(tousArrivee);
    console.log(arriveeUnique);

    res.render("recherche", {
      departsUnique: departUnique,
      arriveesUnique: arriveeUnique,
      vols: rows,
    });
  });
});

module.exports = router;
