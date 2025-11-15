let feedback = "Great product! Fast delivery and amazing sound quality!";
let words = feedback.split(" ").length;

if(feedback.toLowerCase().includes("bad") || feedback.toLowerCase().includes("poor")) {
    console.log("Needs Improvement");
} else {
    console.log("Positive Feedback");
}
console.log("Word Count:", words);
