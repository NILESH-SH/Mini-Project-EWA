<html>
  <head>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
    <style>
      article {
        --img-scale: 1.001;
        --title-color: black;
        --link-icon-translate: -20px;
        --link-icon-opacity: 0;
        position: relative;
        border-radius: 16px;
        box-shadow: none;
        background: #fff;
        transform-origin: center;
        transition: all 0.4s ease-in-out;
        overflow: hidden;
      }

      article a::after {
        position: absolute;
        inset-block: 0;
        inset-inline: 0;
        cursor: pointer;
        content: "";
      }

      /* basic article elements styling */
      article h2 {
        margin: 0 0 18px 0;
        font-family: "Bebas Neue", cursive;
        font-size: 1.9rem;
        letter-spacing: 0.06em;
        color: var(--title-color);
        transition: color 0.3s ease-out;
      }

      figure {
        margin: 0;
        padding: 0;
        aspect-ratio: 16 / 9;
        overflow: hidden;
      }

      article img {
        max-width: 100%;
        transform-origin: center;
        transform: scale(var(--img-scale));
        transition: transform 0.4s ease-in-out;
      }

      .article-body {
        padding: 10px 6px;
      }

      article a {
        display: inline-flex;
        align-items: center;
        text-decoration: none;
        color: #28666e;
      }

      article a:focus {
        outline: 1px dotted #28666e;
      }

      article a .icon {
        min-width: 24px;
        width: 24px;
        height: 24px;
        margin-left: 5px;
        transform: translateX(var(--link-icon-translate));
        opacity: var(--link-icon-opacity);
        transition: all 0.3s;
      }

      /* using the has() relational pseudo selector to update our custom properties */
      article:has(:hover, :focus) {
        --img-scale: 1.1;
        --title-color: #28666e;
        --link-icon-translate: 0;
        --link-icon-opacity: 1;
        box-shadow: rgba(0, 0, 0, 0.16) 0px 10px 36px 0px,
          rgba(0, 0, 0, 0.06) 0px 0px 0px 1px;
      }

      /************************ 
Generic layout (demo looks)
**************************/

      *,
      *::before,
      *::after {
        box-sizing: border-box;
      }

      body {
        margin: 0;
        padding: 48px 0;
        font-family: "Figtree", sans-serif;
        font-size: 1.2rem;
        line-height: 1.6rem;
        background-image: linear-gradient(45deg, #7c9885, #b5b682);
        min-height: 100vh;
      }

      .articles {
        display: flex;
        padding: 20px;
        gap: 24px;
        flex-wrap: wrap;
        justify-items: center;
      }
      .article-wrapper {
        width: 280px;
      }
      .sr-only:not(:focus):not(:active) {
        clip: rect(0 0 0 0);
        clip-path: inset(50%);
        height: 1px;
        overflow: hidden;
        position: absolute;
        white-space: nowrap;
        width: 1px;
      }
    </style>
  </head>
  <body>
    <section class="articles">
      <article>
        <div class="article-wrapper">
          <figure>
            <img src="https://picsum.photos/id/101/800/450" alt="" />
          </figure>
          <div class="article-body">
            <h2>Nilesh22CSU358</h2>
            <p>
              Lorem ipsum dolor sit amet consectetur adipisicing elit.
              Architecto, unde!
            </p>
          </div>
        </div>
      </article>
      <article>
        <div class="article-wrapper">
          <figure>
            <img src="https://picsum.photos/id/102/800/450" alt="" />
          </figure>
          <div class="article-body">
            <h2>Lokesh22CSU???</h2>
            <p>
             Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime, praesentium!
            </p>
          </div>
        </div>
      </article>
      <article>
        <div class="article-wrapper">
          <figure>
            <img src="https://picsum.photos/id/103/800/450" alt="" />
          </figure>
          <div class="article-body">
            <h2>Mukul22CSU301</h2>
            <p>
              Lorem, ipsum dolor sit amet consectetur adipisicing elit. Facere, cum?
            </p>
          </div>
        </div>
      </article>
      <article>
        <div class="article-wrapper">
          <figure>
            <img src="https://picsum.photos/id/104/800/450" alt="" />
          </figure>
          <div class="article-body">
            <h2>Surender22CSU???</h2>
            <p>
             Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum, sed.
            </p>
          </div>
        </div>
      </article>
    </section>
  </body>
</html>
