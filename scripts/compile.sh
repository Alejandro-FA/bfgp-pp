# Default compilation flags
COMPILATION_FLAGS=(-Wall -std=c++20 -O3)

# Check if --sanitize flag is passed (used to check for data races)
if [[ "$1" == "--sanitize" ]]; then
    echo 'Compiling the main project with thread sanitizer...'
    COMPILATION_FLAGS=("${COMPILATION_FLAGS[@]}" -fsanitize=thread -fno-omit-frame-pointer -O2)
else
  echo 'Compiling the main project...'
fi

# Compile the project
g++ "${COMPILATION_FLAGS[@]}" src/main.cpp -o main.bin
