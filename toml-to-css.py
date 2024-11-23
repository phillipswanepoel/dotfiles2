import tomli
import sys
from pathlib import Path

def read_toml_colors(toml_path):
    """Read colors from a TOML file."""
    try:
        with open(toml_path, 'rb') as f:
            config = tomli.load(f)
        return config.get('colors', {})
    except Exception as e:
        print(f"Error reading TOML file: {e}")
        sys.exit(1)

def generate_css_colors(colors):
    """Generate CSS color definitions from TOML color data."""
    css_lines = ["/*----- Define custom colors -----*/"]
    
    # Process each color section (primary, normal, bright)
    for section, color_dict in colors.items():
        # Add a section comment
        css_lines.append(f"\n/* {section.title()} colors */")
        
        # Process each color in the section
        for color_name, color_value in color_dict.items():
            # Create a CSS variable name: section-colorname (e.g., primary-background, normal-red)
            css_var_name = f"{section}-{color_name}"
            css_lines.append(f"@define-color {css_var_name} {color_value};")
    
    # Add a final newline to separate from the rest of the CSS
    css_lines.append("\n")
    return "\n".join(css_lines)

def update_css_file(css_colors, css_path):
    """Prepend color definitions to an existing CSS file."""
    try:
        # Expand path if it contains ~
        css_path = Path(css_path).expanduser()
        
        # Read existing CSS content
        if css_path.exists():
            with open(css_path, 'r') as f:
                existing_css = f.read()
        else:
            print(f"Warning: {css_path} does not exist, creating new file")
            existing_css = ""
        
        # Remove any existing color definitions (optional, uncomment if needed)
        # existing_css = re.sub(r'/\*----- Define custom colors -----\*/.*?\n\n', '', existing_css, flags=re.DOTALL)
        
        # Combine new colors with existing CSS
        with open(css_path, 'w') as f:
            f.write(css_colors + existing_css)
            
        print(f"Successfully updated {css_path}")
    except Exception as e:
        print(f"Error updating CSS file {css_path}: {e}")

def main():
    # Configuration paths
    toml_path = "colors.toml"
    css_files = [
        "~/.config/waybar/style.css",
        "~/.config/wofi/style.css",
        "~/.config/wlogout/style.css"
    ]
    
    # Read colors from TOML and generate CSS definitions
    colors = read_toml_colors(toml_path)
    css_colors = generate_css_colors(colors)
    
    # Update each CSS file
    for css_file in css_files:
        update_css_file(css_colors, css_file)

if __name__ == "__main__":
    main()
