var express = require("express");
var router = express.Router();
const connection = require("../connection/connection");

/* GET reservation page. */
router.get("/", function (req, res, next) {
  data = { id: req.query.id };
  let sql = `SELECT * FROM listevols WHERE id = '${data.id}'`;
  let query = connection.query(sql, (err, rows) => {
    if (err) throw err;

    res.render("reservation", { infoVol: rows });
    console.log(rows);
  });
});

module.exports = router;
