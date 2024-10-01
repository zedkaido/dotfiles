> NO WARRANTY!

```sh
stow <dir>
stow <dir> --override
stow <dir> --adopt # adopts file
stow <dir> --restow # (first unstow, then stow again)

# stow all dirs at once (not recommended)
for dir in */; do
  [[ "$dir" == ".git/" ]] || stow "$dir" --simulate
done
```
