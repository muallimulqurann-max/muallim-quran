# Muallim-ul-Quran: setup

1. Supabase: create a project, run `schema.sql` in the SQL Editor.
2. Authentication > Providers > Email: keep enabled. For easy testing, turn off "Confirm email"
   (otherwise students must click a link in their inbox before first login).
3. Copy Project URL and anon key into `config.js`.
4. Copy your `pdfs/` folder into this folder (next to index.html).
5. Vercel: push this folder to GitHub and import it at vercel.com/new (Framework: Other, no build command),
   or run `npx vercel --prod` inside the folder.
6. After deploying, add your Vercel URL in Supabase > Authentication > URL Configuration > Site URL.
