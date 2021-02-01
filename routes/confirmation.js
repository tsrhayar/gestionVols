var express = require("express");
var router = express.Router();
const connection = require("../connection/connection");
const nodemailer = require("nodemailer");

/* GET confirmation page. */
router.get("/", function (req, res, next) {
  res.redirect("/");
});

router.post("/", function (req, res, next) {
  let data = {
    volId: req.body.volId,
    nom: req.body.nom,
    prenom: req.body.prenom,
    email: req.body.email,
    nombrePlace: req.body.nombrePlace,
    phone: req.body.phone,
    prixtotal: req.body.prixtotal,
  };
  // send email
  // step 1
  let transporter = nodemailer.createTransport({
    host: "smtp.gmail.com",
    port: 587,
    secure: false,
    requireTLS: true,
    auth: {
      user: "youremail@gmail.com",
      pass: "*********",
    },
  });

  // step 2
  let mailOptions = {
    from: "tahasrhayar2@gmail.com",
    to: data.email,
    subject: "Test",
    text: "Test Email",
  };

  // step 3
  transporter.sendMail(mailOptions, (error, info) => {
    if (error) {
      return console.log(error.message);
    }
    console.log("success");
  });
  //
  let sql1 = `INSERT INTO listereservations (nom, prenom, email, phone, prixtotal) VALUES ('${data.nom}', '${data.prenom}', '${data.email}', '${data.phone}', '${data.prixtotal}')`;
  let query1 = connection.query(sql1, data, (err, results) => {
    if (err) throw err;
  });
  //
  let sql3 = `SELECT * FROM listevols WHERE id='${data.volId}'`;
  let query3 = connection.query(sql3, (err, rows) => {
    if (err) throw err;
    let newNombreplace = rows[0].places - data.nombrePlace;
    let sql2 = `UPDATE listevols SET places='${newNombreplace}' WHERE id='${data.volId}'`;
    let query2 = connection.query(sql2, (err, results) => {
      if (err) throw err;
    });
    res.render("confirmation", { mydata: data, volInfo: rows });
  });

  //
});

module.exports = router;
