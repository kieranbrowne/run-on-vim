Run On
======

A composable shortkey for running shell commands on Vim text.
This plugin is only relevant to shell commands which accept input. For general bash commands use `:read!`

The key strokes `ro` can be applied to Vim motions and visual seletion.
At this stage this is limited to one line only.

### A real-world example
While writing a line of text in your latest bestseller you realise the narrative would read much better if told from the perspective of a cow.

In normal mode simply type `ro$` then enter the shell command into the prompt. In this case `cowsay`.

**Result:**
```markdown
 _____________________________________
< A line of text in your latest novel >
 -------------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||
```

Much better.

Because Run On is composable it works with all the vim motions you know and love:
- `roiw` will run a given command on the word under the cursor.
- `ro5e` will run a given command on next five words.
- `roi"` will run a given command on anything inside quotation marks.
- `rof.` will run a given command on everything up to and including the next full stop.

etc.




