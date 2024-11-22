# Example: Execute the command in the current directory to obtain additional input.

gen_content() {
    if git diff --cached --exit-code; then
        echo "No changes to commit"
        exit 1
    fi
    local context=$(git diff --cached)
    echo "Generate git commit messages based on git diff output according to the standard commit specification. You must return only the commit message without any other text or quotes. Here is the git diff output:\n$context"
}
