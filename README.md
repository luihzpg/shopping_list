# Shopping List — GitHub Pages + Supabase

A dead-simple shopping list. Add items, delete items. No login, no framework, no build step.

**Stack:** Vanilla HTML/CSS/JS · Supabase (PostgreSQL) · GitHub Pages

---

## Setup (one-time)

### 1. Create a Supabase project

1. Go to [supabase.com](https://supabase.com) and create a free account
2. Create a new project (any name, any region, any password)
3. Wait for the project to finish setting up (~1 min)

### 2. Create the database table

1. In your Supabase project → **SQL Editor**
2. Paste the contents of [`supabase-setup.sql`](supabase-setup.sql) and click **Run**

### 3. Get your credentials

In your Supabase project → **Project Settings → API**:
- Copy **Project URL** (looks like `https://xxxx.supabase.co`)
- Copy **anon public** key (long string under "Project API keys")

### 4. Fill in `index.html`

Open `index.html` and replace the two placeholders near the top of the `<script>` block:

```js
const SUPABASE_URL      = 'https://xxxx.supabase.co';  // ← your Project URL
const SUPABASE_ANON_KEY = 'eyJh...';                   // ← your anon key
```

### 5. Create a GitHub repo and push

```bash
git init
git add .
git commit -m "Initial shopping list"
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO.git
git push -u origin main
```

### 6. Enable GitHub Pages

1. Go to your repo → **Settings → Pages**
2. Under "Build and deployment", set **Source** to `Deploy from a branch`
3. Set **Branch** to `gh-pages` / `/ (root)`
4. Click **Save**

The GitHub Actions workflow (`.github/workflows/deploy.yml`) will automatically deploy on every push to `main`.

Your app will be live at:
```
https://YOUR_USERNAME.github.io/YOUR_REPO/
```

---

## Local development

Just open `index.html` directly in your browser — no server needed.
Make sure your Supabase credentials are filled in.

---

## Project structure

```
├── index.html                 # The entire app
├── supabase-setup.sql         # Run once in Supabase SQL editor
├── .github/
│   └── workflows/
│       └── deploy.yml         # Auto-deploy to GitHub Pages
└── README.md
```
