const chai = require("chai");
chai.use(require("chai-dom"));
const { expect } = chai;

describe("index.html", () => {
  describe("the wrapper section", () => {
    it("has a <h1> element with the correct content", () => {
      // find the element with a class of wrapper
      const wrapper = document.querySelector(".wrapper");

      const h1 = wrapper.querySelector("h1");
      const hint1 = "No <h1> tag(s) found";
      expect(h1, hint1).to.exist;

      const hint2 = "Your <h1> tag should contain the text 'Welcome to Riyadh'";
      expect(h1, hint2).to.contain.text("Welcome to Riyadh");
    });

    it("has a <h2> element with the correct content", () => {
      const wrapper = document.querySelector(".wrapper");

      const h2 = wrapper.querySelector("h2");
      const hint1 = "No <h2> tag(s) found";
      expect(h2, hint1).to.exist;

      const hint2 =
        "Your <h2> tag should contain the text 'Where A Traditional Past Meets A Modern Future.'";
      expect(h2, hint2).to.contain.text(
        "Where A Traditional Past Meets A Modern Future."
      );
    });
  });
  describe("the content section", () => {
    it("has three <h3> elements with the correct content", () => {
      // find the element with an id of content
      const wrapper = document.querySelector("#content");
      const hint1 = "Wrong number of <h3> tag(s) found";
      expect(content, hint1).to.have.descendants("h3").and.have.length(3);

      const [firstH3, secondH3, thirdH3] = wrapper.querySelectorAll("h3");
      expect(firstH3).to.contain.text("Travel");
      expect(secondH3).to.contain.text("History");
      expect(thirdH3).to.contain.text("Sources");
    });

    it("has three <p> elements with the correct content", () => {
      const wrapper = document.querySelector("#content");
      expect(content).to.have.descendants("p");

      const [firstP, secondP, thirdP] = wrapper.querySelectorAll("p");
      expect(firstP).to.contain.text("Once a mudbrick waystation");
      expect(secondP).to.contain.text("Riyadh");
      expect(thirdP).to.contain.text(
        "The city is divided into 15 municipal districts"
      );
    });


    it("has three <img> elements with the correct attributes", () => {
      const wrapper = document.querySelector("#content");
      const hint1 = "Wrong number of <img> tag(s) found";
      expect(content, hint1).to.have.descendants("img").and.have.length(3);

      const [firstImg, secondImg, thirdImg] = wrapper.querySelectorAll("img");
      expect(firstImg).to.have.attribute(
        "src",
        "./images/transportation/transit.jpg"
      );
      expect(firstImg).to.have.attribute("alt", "Modern Transit");
      expect(secondImg).to.have.attribute("src", "./images/garden.jpg");
      expect(secondImg).to.have.attribute("alt", "Riyadh Garden");
      expect(thirdImg).to.have.attribute(
        "src",
        "./images/transportation/camels-in-truck.jpg"
      );
      expect(thirdImg).to.have.attribute("alt", "The roads of Riyadh");
    });

    it("has two <a> elements with the correct attributes", () => {
      const wrapper = document.querySelector("#content");
      const hint1 = "Wrong number of <a> tag(s) found";
      expect(content, hint1).to.have.descendants("a").and.have.length(2);

      const [firstA, secondA] = wrapper.querySelectorAll("a");
      expect(firstA).to.have.attribute(
        "href",
        "http://www.lonelyplanet.com/saudi-arabia/riyadh"
      );
      expect(secondA).to.have.attribute(
        "href",
        "http://en.wikipedia.org/wiki/Riyadh"
      );
    });
  });
});
