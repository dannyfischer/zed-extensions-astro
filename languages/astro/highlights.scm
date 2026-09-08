; Components: <MyComponent>
((tag_name) @tag.component
  (#match? @tag.component "^[A-Z]"))

; Native HTML: <div>, <span>, ...
((tag_name) @tag
  (#match? @tag "^[a-z]"))

(erroneous_end_tag_name) @keyword

(doctype) @tag.doctype

(attribute_name) @attribute.jsx

[
  (attribute_value)
  (quoted_attribute_value)
] @string

(comment) @comment

"=" @punctuation.delimiter.jsx

[
  "{"
  "}"
] @punctuation.bracket

[
  "<"
  ">"
  "</"
  "/>"
] @punctuation.bracket.jsx
