{%- assign email = include.email | default: site.email -%}
{%- if include.text -%}
    {%- assign email_text = include.text -%}
{%- else -%}
    {%- assign email_loop = email | split: "" -%}
    {%- capture email_text -%}
        {%- for char in email_loop -%}
            {%- assign output = char -%}
            {%- if char == '@' -%}
                {%- assign output = char | prepend: " [" | append: "] " -%}
            {%- endif -%}
            {{- output -}}
        {%- endfor -%}
    {%- endcapture -%}
{%- endif -%}
[{{ email_text }}](mailto:{{ email | encode_email }})