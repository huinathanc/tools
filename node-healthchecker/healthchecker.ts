import axios from "axios";

const response = await axios.get("http://localhost:13017");

console.log(response.data);
