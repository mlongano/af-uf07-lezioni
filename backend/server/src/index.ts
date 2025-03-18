import express from "express";
import { pool as db } from "./db";

const app = express();
app.use(express.json());

app.get("/", (req, res) => {
  res.send("Hello World!");
});

app.get("/todos", async (req, res, next) => {
  try {
    const { rows } = await db.query("SELECT * FROM todos");
    res.json(rows);
  } catch (e) {
    next(e);
  }
})

app.listen(3000, () => {
  console.log("Server running on port 3000");
});