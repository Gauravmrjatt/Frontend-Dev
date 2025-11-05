#!/usr/bin/env bash
# create_css_exercises.sh
# Creates a folder structure with 10 exercises. Each exercise has an index.html and styles.css
# Usage: bash create_css_exercises.sh

set -euo pipefail
ROOT_DIR="css_exercises"
mkdir -p "$ROOT_DIR"

echo "Creating exercises in ./$ROOT_DIR ..."

# Helper to create files with heredoc
create_exercise() {
  local num="$1"
  local slug="$2"
  local title="$3"
  local html_path="$ROOT_DIR/${num}_${slug}/index.html"
  local css_path="$ROOT_DIR/${num}_${slug}/styles.css"

  mkdir -p "$(dirname "$html_path")"

  cat > "$html_path" <<HTML
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <title>${num}. ${title}</title>
  <link rel="stylesheet" href="styles.css">
</head>
<body>
  <!-- Semantic structure: header, main, footer -->
  <header>
    <h1>${num}. ${title}</h1>
  </header>
  <main>
    <!-- Exercise content will be styled by styles.css -->
    <section class="example">
      <p>Open <code>styles.css</code> to see the CSS that implements the requirements for this exercise.</p>
    </section>
  </main>
  <footer>
    <p>Exercise ${num} — CSS practice</p>
  </footer>
</body>
</html>
HTML

  cat > "$css_path" <<CSS
/* ${num}. ${title} - styles.css */
/* Comments explain key rules. Keep CSS separate from HTML. */
:root{
  --base-font: 16px;
  font-size: var(--base-font);
}
html,body{height:100%;margin:0;font-family: system-ui, -apple-system, "Segoe UI", Roboto, "Helvetica Neue", Arial;}

/* Add exercise specific styles below */

/* --- DEFAULT helpers --- */
header, footer{padding:1rem;background:#f5f5f5;border-bottom:1px solid #e5e5e5}
main{padding:1.25rem}

/* Example rule to ensure content visible */
.example{padding:1rem;border:1px dashed #ccc;border-radius:6px;background:#fff}

/* Add more CSS per exercise in the dedicated file in each folder. */
CSS

  echo "Created $html_path and $css_path"
}

# 1. Borders and Padding Demonstration Page
create_exercise "01" "borders_padding" "Borders and Padding Demonstration"
cat > "$ROOT_DIR/01_borders_padding/styles.css" <<'CSS'
/* 01. Borders and Padding Demonstration Page */
/* Show multiple boxes with different border styles, rounded corners, padding, horizontal Flexbox layout, and hover color transition */
:root{--gap:1rem}
body{margin:0;font-family:Arial, Helvetica, sans-serif;background:#fafafa;color:#111}
header{background:#222;color:#fff;padding:1rem}
main{padding:2rem}
.demo-row{display:flex;gap:var(--gap);align-items:flex-start;flex-wrap:wrap}
.box{flex:0 0 200px;padding:16px;background:#fff;border-radius:8px;transition:border-color .3s ease, transform .2s ease}
.box:hover{transform:translateY(-4px)}
.box.solid{border:4px solid #4a90e2}
.box.dashed{border:4px dashed #e67e22}
.box.double{border:6px double #16a085}
.box.groove{border:6px groove #8e44ad}
/* rounded corners examples */
.box.rounded{border:3px solid #555;border-radius:20px;padding:28px}
/* different padding values demonstration */
.box.pad-small{padding:6px}
.box.pad-large{padding:32px}
/* hover effect changes border color smoothly */
.box:hover{border-color:#c0392b}
CSS

# 2. Height and Width Practice Layout
create_exercise "02" "height_width" "Height and Width Practice"
cat > "$ROOT_DIR/02_height_width/styles.css" <<'CSS'
/* 02. Height and Width Practice Layout */
body{margin:0;font-family:system-ui;padding:2rem;background:#fff}
header{background:#222;color:#fff;padding:1rem}
.main-wrap{min-height:70vh;display:flex;align-items:center;justify-content:center}
.boxes{display:flex;gap:1rem;align-items:center;justify-content:center}
.box{display:flex;align-items:center;justify-content:center;color:#fff}
.box.one{width:300px;height:200px;background:#2ecc71}
.box.two{width:40%;height:60vh;background:#3498db;min-height:150px}
.box.three{width:10em;height:12em;background:#e74c3c}
/* Demonstrate min-height, max-width, overflow */
.box.two p{max-width:260px;overflow:auto;padding:1rem}
CSS

# 3. Gradient Background Webpage
create_exercise "03" "gradient_background" "Gradient Background Webpage"
cat > "$ROOT_DIR/03_gradient_background/styles.css" <<'CSS'
/* 03. Gradient Background Webpage */
html,body{height:100%;margin:0;font-family:Georgia, serif}
header{position:fixed;top:0;left:0;right:0;padding:1rem;background:rgba(255,255,255,0.7);backdrop-filter:blur(4px)}
footer{position:fixed;bottom:0;left:0;right:0;padding:0.75rem;background:rgba(0,0,0,0.7);color:#fff;text-align:center}
.section-linear{min-height:60vh;display:flex;align-items:center;justify-content:center;background:linear-gradient(135deg,#ff9a9e 0%,#fad0c4 100%)}
.section-radial{min-height:60vh;display:flex;align-items:center;justify-content:center;background:radial-gradient(circle at center,#a18cd1, #fbc2eb);background-attachment:fixed}
.section-linear p,.section-radial p{font-size:1.25rem;padding:2rem;background:rgba(255,255,255,0.6);border-radius:8px}
CSS

# 4. Shadows and Depth Effect Layout
create_exercise "04" "shadows_depth" "Shadows and Depth Effect"
cat > "$ROOT_DIR/04_shadows_depth/styles.css" <<'CSS'
/* 04. Shadows and Depth Effect Layout */
body{margin:0;font-family:Arial, Helvetica, sans-serif;padding:2rem;background:#f0f3f4}
.cards{display:flex;gap:1.5rem;justify-content:center}
.card{width:260px;padding:1.25rem;border-radius:12px;background:#fff;transition:box-shadow .25s ease, transform .25s ease}
.card.small-shadow{box-shadow:0 2px 6px rgba(0,0,0,0.08)}
.card.medium-shadow{box-shadow:0 6px 18px rgba(0,0,0,0.12)}
.card.large-shadow{box-shadow:0 12px 28px rgba(0,0,0,0.18)}
.card:hover{transform:translateY(-8px);box-shadow:0 24px 40px rgba(0,0,0,0.2)}
h2{margin:0 0 0.5rem 0;text-shadow:1px 1px 0 rgba(0,0,0,0.05)}
CSS

# 5. Advanced CSS Selectors
create_exercise "05" "advanced_selectors" "Advanced CSS Selectors"
cat > "$ROOT_DIR/05_advanced_selectors/styles.css" <<'CSS'
/* 05. Advanced CSS Selectors */
/* Attribute selectors */
input[type="text"]{padding:0.5rem;border:1px solid #ccc;border-radius:4px}
a[href^="https"]{color:#1a73e8;text-decoration:none}

/* Pseudo-classes */
a:hover{text-decoration:underline}
input:focus{outline:2px solid #ffb86b}
/* nth-child demonstration */
ul.selector-list li:nth-child(odd){background:#f7f7f7}

/* Pseudo-elements */
ul.selector-list li::before{content:"• ";color:#e67e22}

/* Combinators: child >, adjacent +, general sibling ~, descendant (space) */
.container > p{font-weight:600}
.container p + p{margin-top:.5rem}
.container .note ~ .hint{font-style:italic}
/* Comments above explain each selector type */
CSS

# 6. CSS Transformations Showcase
create_exercise "06" "transformations_showcase" "CSS Transformations Showcase"
cat > "$ROOT_DIR/06_transformations_showcase/styles.css" <<'CSS'
/* 06. CSS Transformations Showcase */
.container{display:flex;gap:1rem;align-items:center;justify-content:center;padding:2rem}
.box{width:120px;height:120px;border-radius:8px;display:flex;align-items:center;justify-content:center;transition:all .4s ease}
.box.rotate:hover{transform:rotate(15deg)}
.box.scale:hover{transform:scale(1.1)}
.box.translate:hover{transform:translateY(-12px)}
.box.skew:hover{transform:skewX(12deg)}
.label{display:block;text-align:center;margin-top:.5rem}
CSS

# 7. Typography and Text Styling Page
create_exercise "07" "typography_text" "Typography and Text Styling"
cat > "$ROOT_DIR/07_typography_text/styles.css" <<'CSS'
/* 07. Typography and Text Styling */
body{font-family:Georgia, 'Times New Roman', serif;line-height:1.6;color:#222;padding:2rem}
article{max-width:720px;margin:0 auto}
h1{font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif}
strong{color:#c0392b}
em{color:#2980b9}
mark{background:#fffb91;padding:0 .2em}
p{letter-spacing:0.01em}
article::first-line{font-weight:700}
article::first-letter{font-size:2.2rem;float:left;margin-right:.15rem}
CSS

# 8. Box Model Exploration Page
create_exercise "08" "box_model" "Box Model Exploration"
cat > "$ROOT_DIR/08_box_model/styles.css" <<'CSS'
/* 08. Box Model Exploration */
.wrapper{display:flex;align-items:center;justify-content:center;height:80vh}
.box-model{background:#fff;padding:1rem;border:2px solid #ddd}
.box-visual{background:#ecf0f1;padding:16px;border:2px dashed #a0a0a0;margin:16px}
/* default box-sizing */
.demo-default{box-sizing:content-box}
.demo-border-box{box-sizing:border-box}
.legend{font-size:.9rem;margin-top:.5rem}
CSS

# 9. Outline and Focus Styling Form
create_exercise "09" "outline_focus_form" "Outline and Focus Styling Form"
cat > "$ROOT_DIR/09_outline_focus_form/styles.css" <<'CSS'
/* 09. Outline and Focus Styling Form */
form{max-width:480px;margin:2rem auto;display:flex;flex-direction:column;gap:12px}
input,textarea{padding:10px;border-radius:6px;border:1px solid #ccc;box-shadow:0 1px 2px rgba(0,0,0,0.02)}
/* Different outline styles and offset */
input:focus,textarea:focus{outline:3px solid rgba(46,204,113,0.25);outline-offset:4px}
input[type="submit"]{cursor:pointer;padding:10px 14px;border-radius:6px;border:none;background:#2d98da;color:#fff}
CSS

# 10. Navigation Bar with Transitions and Hover Effects
create_exercise "10" "nav_bar" "Navigation Bar with Transitions"
cat > "$ROOT_DIR/10_nav_bar/styles.css" <<'CSS'
/* 10. Navigation Bar with Transitions and Hover Effects */
*{box-sizing:border-box}
.nav{display:flex;gap:1rem;list-style:none;padding:0;margin:0;align-items:center}
.nav a{display:block;padding:.6rem 1rem;border-radius:6px;border:1px solid transparent;transition:all .3s ease;text-decoration:none}
.nav a:hover{transform:translateY(-3px);border-color:#ddd}
.nav a.active{background:#222;color:#fff}
/* Responsive: stack vertically below 700px */
@media (max-width:700px){
  .nav{flex-direction:column}
}
CSS

# For each HTML file, replace the placeholder content with tailored markup that references its styles.css

# Update a few HTML files with specific content to satisfy requirements visually

# 01 - borders and padding HTML
cat > "$ROOT_DIR/01_borders_padding/index.html" <<'HTML'
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <title>01. Borders and Padding Demonstration</title>
  <link rel="stylesheet" href="styles.css">
</head>
<body>
  <header><h1>Borders & Padding</h1></header>
  <main>
    <section class="demo-row" aria-label="border examples">
      <div class="box solid">Solid border</div>
      <div class="box dashed">Dashed border</div>
      <div class="box double">Double border</div>
      <div class="box groove">Groove border</div>
      <div class="box rounded">Rounded corners</div>
      <div class="box pad-small">Small padding</div>
      <div class="box pad-large">Large padding</div>
    </section>
  </main>
  <footer>Tip: hover any box to change border color.</footer>
</body>
</html>
HTML

# 02 - height & width
cat > "$ROOT_DIR/02_height_width/index.html" <<'HTML'
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>02. Height and Width Practice</title>
<link rel="stylesheet" href="styles.css">
</head>
<body>
<header><h1>Height & Width Practice</h1></header>
<main class="main-wrap">
  <div class="boxes">
    <div class="box one">300px × 200px</div>
    <div class="box two"><p>40% width, 60vh height. Demonstrates min-height/max-width/overflow. Resize the window to see behavior.</p></div>
    <div class="box three">10em × 12em</div>
  </div>
</main>
<footer>Resize the browser to explore units: px, %, vh, em.</footer>
</body>
</html>
HTML

# 03 - gradient backgrounds
cat > "$ROOT_DIR/03_gradient_background/index.html" <<'HTML'
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>03. Gradient Backgrounds</title>
<link rel="stylesheet" href="styles.css">
</head>
<body>
<header><h1>Gradient Backgrounds</h1></header>
<main>
  <section class="section-linear"><p>This section uses a linear gradient.</p></section>
  <section class="section-radial"><p>This section uses a radial gradient and background-attachment: fixed for a parallax-like effect.</p></section>
</main>
<footer>Fixed header and footer for complete layout.</footer>
</body>
</html>
HTML

# 04 - shadows and depth
cat > "$ROOT_DIR/04_shadows_depth/index.html" <<'HTML'
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>04. Shadows & Depth</title>
<link rel="stylesheet" href="styles.css">
</head>
<body>
<header><h1>Shadows & Depth</h1></header>
<main>
  <section class="cards">
    <article class="card small-shadow"><h2>Card 1</h2><p>Subtle shadow.</p></article>
    <article class="card medium-shadow"><h2>Card 2</h2><p>Medium shadow and text-shadow on heading.</p></article>
    <article class="card large-shadow"><h2>Card 3</h2><p>Large shadow.</p></article>
  </section>
</main>
<footer>Hover a card to lift it up.</footer>
</body>
</html>
HTML

# 05 - advanced selectors
cat > "$ROOT_DIR/05_advanced_selectors/index.html" <<'HTML'
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>05. Advanced Selectors</title>
<link rel="stylesheet" href="styles.css">
</head>
<body>
<header><h1>Advanced CSS Selectors</h1></header>
<main class="container">
  <p>Attribute selector example:</p>
  <input type="text" placeholder="type=text selector">
  <p>Link starting with https:</p>
  <a href="https://example.com">Secure link</a>
  <h2>List (nth-child, pseudo-elements)</h2>
  <ul class="selector-list">
    <li>First item</li>
    <li>Second item</li>
    <li>Third item</li>
    <li class="note">Fourth item</li>
    <li class="hint">Fifth item</li>
  </ul>
  <p class="note">Note paragraph</p>
  <p class="hint">Hint paragraph (general sibling of .note)</p>
</main>
<footer>See CSS comments for explanations of each selector.</footer>
</body>
</html>
HTML

# 06 - transformations
cat > "$ROOT_DIR/06_transformations_showcase/index.html" <<'HTML'
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>06. Transformations Showcase</title>
<link rel="stylesheet" href="styles.css">
</head>
<body>
<header><h1>Transformations</h1></header>
<main>
  <div class="container">
    <div>
      <div class="box rotate">Rotate</div>
      <span class="label">rotate()</span>
    </div>
    <div>
      <div class="box scale">Scale</div>
      <span class="label">scale()</span>
    </div>
    <div>
      <div class="box translate">Translate</div>
      <span class="label">translate()</span>
    </div>
    <div>
      <div class="box skew">Skew</div>
      <span class="label">skew()</span>
    </div>
  </div>
</main>
<footer>Hover each box to see the transformation.</footer>
</body>
</html>
HTML

# 07 - typography
cat > "$ROOT_DIR/07_typography_text/index.html" <<'HTML'
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>07. Typography</title>
<link rel="stylesheet" href="styles.css">
</head>
<body>
<header><h1>Typography & Text Styling</h1></header>
<main>
<article>
  <h2>Short Article</h2>
  <p><strong>Strong text</strong> and <em>emphasized text</em> with a <mark>highlighted piece</mark>. This paragraph demonstrates different font weights and sizes; it uses line-height and letter-spacing for readability. The ::first-line and ::first-letter pseudo-elements add emphasis.</p>
</article>
</main>
<footer>Typography exercise.</footer>
</body>
</html>
HTML

# 08 - box model
cat > "$ROOT_DIR/08_box_model/index.html" <<'HTML'
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>08. Box Model</title>
<link rel="stylesheet" href="styles.css">
</head>
<body>
<header><h1>Box Model Exploration</h1></header>
<main>
  <div class="wrapper">
    <div class="box-model">
      <div class="box-visual demo-default">
        <p>Default box-sizing (content-box)</p>
      </div>
      <div class="box-visual demo-border-box">
        <p>box-sizing: border-box</p>
      </div>
      <p class="legend">Use background colors and outlines to differentiate content, padding, border and margin.</p>
    </div>
  </div>
</main>
<footer>Box model demonstration centered with Flexbox.</footer>
</body>
</html>
HTML

# 09 - outline & focus form
cat > "$ROOT_DIR/09_outline_focus_form/index.html" <<'HTML'
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>09. Outline & Focus Form</title>
<link rel="stylesheet" href="styles.css">
</head>
<body>
<header><h1>Form: Outline & Focus</h1></header>
<main>
  <form>
    <label for="name">Name</label>
    <input id="name" name="name" type="text" placeholder="Your name">

    <label for="message">Message</label>
    <textarea id="message" name="message" rows="5" placeholder="Type here..."></textarea>

    <input type="submit" value="Send">
  </form>
</main>
<footer>Focus the inputs to see outline styles and offsets.</footer>
</body>
</html>
HTML

# 10 - navbar
cat > "$ROOT_DIR/10_nav_bar/index.html" <<'HTML'
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>10. Navigation Bar</title>
<link rel="stylesheet" href="styles.css">
</head>
<body>
<header>
  <nav>
    <ul class="nav">
      <li><a href="#" class="active">Home</a></li>
      <li><a href="#">About</a></li>
      <li><a href="#">Services</a></li>
      <li><a href="#">Blog</a></li>
      <li><a href="#">Contact</a></li>
    </ul>
  </nav>
</header>
<main style="padding:2rem">
  <p>Resize below 700px to see the navbar stack vertically.</p>
</main>
<footer style="text-align:center;padding:1rem">Simple centered footer text.</footer>
</body>
</html>
HTML

# Done

echo "All exercises created in ./$ROOT_DIR"

echo "You can open files with your editor or serve using a simple static server, for example:"
cat <<MSG

  # Run one of these commands from the project root to preview in the browser:
  # - With Python 3:  python3 -m http.server --directory $ROOT_DIR 8000
  # - Or open files directly: $ROOT_DIR/01_borders_padding/index.html

MSG

exit 0
