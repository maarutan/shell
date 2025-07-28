function srcvenv() {
    local dir="$PWD"
    local venv_dirs=(".venv" ".env" "venv" "env")

    while [[ "$dir" != "/" ]]; do
        for name in "${venv_dirs[@]}"; do
            local candidate="$dir/$name"
            if [[ -d "$candidate/bin" && -f "$candidate/bin/activate" ]]; then
                echo "Activating virtual environment: $candidate"
                # shellcheck disable=SC1090
                source "$candidate/bin/activate"
                return 0
            fi
        done
        dir="$(dirname "$dir")"
    done

    echo "❌ No virtual environment found (.venv, .env, venv, env with bin/activate)." >&2
    return 1
}
