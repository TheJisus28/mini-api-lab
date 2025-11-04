import express from "express";

const app = express();
const PORT = 3000 || process.env.PORT;

app.get("/ping", (req, res) => {
  res.json({ message: "pong" });
});

app.get("/", (req, res) => {
  res.json({ message: "Hello World" });
});

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
