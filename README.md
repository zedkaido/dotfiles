> WARNING: USE AT YOUR OWN RISK

```sh
stow <dir>

stow --adopt <dir>
git restore <dir>

stow <dir> --restow # (first unstow, then stow again)

for dir in */; do
  [ "$dir" = ".git/" ] || stow "$dir" --adopt --simulate
done
```
