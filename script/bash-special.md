# ✅ **When You Need a Semicolon (“;”) in Bash**

In Bash, the semicolon is **not required at the end of a line**, unlike languages such as C or JavaScript.
You use `;` **only when you want to put multiple commands on the same line**.

### **1. To separate multiple commands on one line**

```bash
echo "Hello"; echo "World"
```

Without a semicolon, Bash wouldn’t know where the first command ends.

### **2. To terminate a command before using certain control keywords on the same line**

Examples:

#### **If statement on one line**

```bash
if [ "$x" -eq 1 ]; then echo "one"; fi
```

#### **Loops on one line**

```bash
for i in 1 2 3; do echo "$i"; done
```

You can replace `;` before `then`, `do`, and `else` with a newline.

### **3. Optional after a command (not needed, but allowed)**

```bash
echo "done";
```

---

# ⚠️ When NOT to use semicolon

- At the end of a normal line (unnecessary)
- Before a pipe (`|`), AND (`&&`), OR (`||`), or background operator (`&`)
- Between array elements or arguments (Bash does not use semicolon there)

---

# 🔹 **Bash Special Syntax (compared with other languages)**

Bash has some unusual syntax rules compared to most programming languages.

---

# 1. **Command separators**

| Syntax | Meaning                                 |     |                                      |
| ------ | --------------------------------------- | --- | ------------------------------------ |
| `;`    | Sequential execution                    |     |                                      |
| `&&`   | Execute next only if previous succeeded |     |                                      |
| `      |                                         | `   | Execute next only if previous failed |
| `&`    | Run command in background               |     |                                      |

Example:

```bash
make && echo "success" || echo "failed"
```

---

# 2. **Pipelines**

```bash
cmd1 | cmd2 | cmd3
```

Very common in Bash; not used this way in typical programming languages.

---

# 3. **Globbing**

Bash expands certain characters before running commands:

| Pattern   | Meaning                 |
| --------- | ----------------------- |
| `*`       | zero or more characters |
| `?`       | single character        |
| `[abc]`   | any listed character    |
| `{a,b,c}` | brace expansion         |

Example:

```bash
rm *.log
echo {A,B}_{1..3}
```

This is not the same as regex and is unique to shell environments.

---

# 4. **Variable syntax**

- No `$` in declaration:

  ```bash
  name="bob"
  ```

- `$` to reference:

  ```bash
  echo $name
  ```

- Parameter expansion features:

  ```bash
  ${var:-default}
  ${var%pattern}
  ${#var}
  ```

Most programming languages do **not** use this form of variable expansion.

---

# 5. **Command substitution**

```bash
output=$(ls -l)
```

Older, still common form:

```bash
output=`ls -l`
```

---

# 6. **Process substitution**

Unique to Bash & some shells:

```bash
diff <(sort file1) <(sort file2)
```

---

# 7. **Here-documents and here-strings**

Here-doc:

```bash
cat <<EOF
Hello
World
EOF
```

Here-string:

```bash
grep foo <<< "$text"
```

---

# 8. **Arrays**

Bash arrays differ from most languages:

Declaration:

```bash
arr=(a b c)
```

Indexing:

```bash
echo ${arr[1]}
```

All elements:

```bash
echo ${arr[@]}
```

---

# 9. **Functions**

Functions can be declared two ways:

```bash
myfunc() { echo hi; }
```

or:

```bash
function myfunc { echo hi; }
```

Return values are exit codes only (0–255), not data.

---

# 10. **Control structures**

Very syntax-heavy compared to other languages:

### If

```bash
if [[ $x -gt 2 ]]; then
    echo ok
fi
```

### Case

```bash
case $x in
  1) echo "one" ;;
  2|3) echo "two or three" ;;
  *) echo "other" ;;
esac
```

### For loop

```bash
for i in a b c; do
  echo $i
done
```

---

# ✔ Summary: When to Use `;` in Bash

| Situation                                         | Need `;`? |     |       |
| ------------------------------------------------- | --------- | --- | ----- |
| End of a line                                     | ❌ No     |     |       |
| Multiple commands on one line                     | ✅ Yes    |     |       |
| Before `then`, `do`, `else` when on the same line | ✅ Yes    |     |       |
| Before pipe/&&/                                   |           | /&  | ❌ No |
