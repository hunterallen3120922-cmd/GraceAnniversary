# 💙

A little something for someone special.

## For Hunter: how this works

- `src/index.html` is the real site. **Edit this one.** It's in `.gitignore`, so it never gets pushed.
- `index.html` (root) is the encrypted version GitHub Pages serves.

### Edit → lock → push

1. Open `src/index.html` and change the stuff at the top of the `<script>` (TIMELINE, QUIZ, COUPONS) and the letter. Search for `[EDIT ME]`.
2. Preview it by double-clicking `src/index.html`.
3. Lock it:
   ```bash
   npm i -g staticrypt     # one time
   ./encrypt.sh 101925     # or whatever password you want
   ```
4. Push:
   ```bash
   git add -A && git commit -m "update" && git push
   ```

### Turn on GitHub Pages (one time)

Repo → **Settings → Pages → Source: Deploy from a branch → `main` / `(root)` → Save.**
Link shows up in a minute: `https://YOUR-USERNAME.github.io/REPO-NAME/`

**Tip:** name the repo something boring (like `project-1019`) so it's not obvious.
