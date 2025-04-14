<script>
  import Window from "./components/Window.svelte";
  import img from "/assets/Down the Drain Logo Composite.png";
  import img2 from "/assets/screenshot.png";

  // Handle responsive iframes for embeds
  import pym from "pym.js";

  new pym.Child({
    polling: 500,
  });

  function getUrlParameter(name) {
    const params = new URLSearchParams(window.location.search);
    return params.get(name);
  }

  let includeCredit = getUrlParameter("credit") != "false";
</script>

<Window />
<!-- Outer div must have class 'chart-container' don't change -->
<div class="chart-container">
  <div class="image-container">
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 513.75 515.3"
      ><defs
        ><style>
          .cls-1 {
            fill: #548687;
          }
          .cls-2 {
            fill: #6da34d;
          }
          .cls-3 {
            fill: #f1b82d;
          }
        </style></defs
      ><g id="Layer_2" data-name="Layer 2"
        ><g id="Layer_1-2" data-name="Layer 1"
          ><path
            class="cls-1"
            d="M239.8,274.83,106,466.48a257.43,257.43,0,0,0,301.58.07L273.81,274.83Z"
          /><path
            class="cls-2"
            d="M0,274.83A256.65,256.65,0,0,0,79.85,444.76l118.6-169.93Z"
          /><path
            class="cls-2"
            d="M513.75,274.83H315.16l118.66,170A256.73,256.73,0,0,0,513.75,274.83Z"
          /><path
            class="cls-3"
            d="M0,240.93C8.49,106.64,120,.24,256.44,0s248.34,106.68,257.3,240.93"
          /></g
        ></g
      ></svg
    >
    <a href="https://www.startribune.com/wetlands" target="_blank">
      <img src={img2} alt="Down the Drain Logo" />
    </a>
  </div>

  <span class="tag">interactive</span>

    <h1 class="headline">
      <a href="https://www.startribune.com/wetlands" target="_blank">
        Down the Mississippi River, an altered wetland landscape faces new
        threats
      </a>
    </h1>

    <p class="dek">
      Wetlands are disappearing across the basin. Explore our cultural and
      historical relationship with these swamps, marshes and bayous through this
      collaborative project from the <b>Ag & Water Desk</b> and the
      <b>Minnesota Star Tribune</b>, part of the series
      <a
        href="https://agwaterdesk.org/2025/04/14/down-the-drain/"
        target="_blank"
        >Down the Drain: A watershed moment for America's greatest wetlands</a
      >.
    </p>
    <p class="sr-only"></p>

</div>

<style lang="scss">
  .chart-container {
    max-width: 600px;
    background-color: #f2f4f3;
    width: 100%;
    padding: 1rem;

    a {
      text-decoration: none;
      color: inherit;
    }

    .tag {
      text-transform: uppercase;
      font-size: 12px;
      font-weight: 600;
      color: #538787;
    }

    .image-container {
      position: relative;
      svg {
        position: absolute;
        top: 1rem;
        right: 1rem;
        width: 50px;
        filter: drop-shadow(0 0 10px rgba(0, 0, 0, 0.75));
      }
    }

    .headline {
      &:hover {
        a {
          text-decoration: underline;
        }
      }
    }

    .dek {
      margin-bottom: 0px;
      a {
        text-decoration: underline;
      }
    }
  }
</style>
