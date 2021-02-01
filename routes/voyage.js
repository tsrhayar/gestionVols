var express = require("express");
var router = express.Router();
const connection = require("../connection/connection");

/* GET voyage page. */
router.get("/", function (req, res, next) {
  data = { depart: req.query.depart, arrivee: req.query.arrivee, datevol: req.query.datevol };
  let now = new Date();
  let today = `${now.getFullYear()}-${now.getMonth() + 1}-${now.getDate()}`;
  console.log(today);
  let sql1 = `SELECT * FROM listevols WHERE depart = '${data.depart}' AND arrivee = '${data.arrivee}' AND datevol >= '${today}' ORDER BY datevol`;
  var query1 = connection.query(sql1, (err, rows1) => {
    if (err) throw err;
    if (rows1.length > 0) {
      let sql2 = `SELECT * FROM listevols WHERE depart = '${data.depart}' AND arrivee = '${data.arrivee}' AND datevol = '${data.datevol}' ORDER BY datevol`;
      var query2 = connection.query(sql2, (err, rows2) => {
        if (err) throw err;
        if (rows2.length > 0) {
          res.render("voyage", {
            vols: rows1,
            volIsSet: rows2,
            mydata: data,
          });
        } else {
          res.render("voyage", {
            vols: rows1,
            mydata: data,
          });
        }
      });
    } else {
      res.render("voyage", {
        vols: rows1,
        mydata: data,
      });
    }
  });
});

module.exports = router;
