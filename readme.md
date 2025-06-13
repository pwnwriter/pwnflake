<h3 align="center"><strong><code>pwnflake</code></strong> - Nix devshell<code>(mkShell)</code> for hackthebox</h3>

### DevShells

<details open>
<summary><strong>default</strong></summary>

```bash
nix develop github:pwnwriter/pwnflake
# or with direnv:
(use flake)
````

Tools included:

* `nixd`

</details>

<details>
<summary><strong>reversing</strong></summary>

```nix develop .#reversing```

Tools included:

* `ghidra`
* `radare2`
* `cutter`

</details>

<details>
<summary><strong>exploitation</strong></summary>

```nix develop .#exploitation```

Tools included:

* `gdb`
* `pwntools`

</details>

<details>
<summary><strong>web</strong></summary>

```nix develop .#web```

Tools included:

* `burpsuite`
* `zap`
* `sqlmap`

</details>
