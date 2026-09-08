; Components: <MyComponent>
((tag_name) @tag.component
  (#match? @tag.component "^[A-Z]"))

; Native HTML: <div>, <span>, ...
((tag_name) @tag
  (#match? @tag "^[a-z]"))

(erroneous_end_tag_name) @keyword

(doctype) @tag.doctype

(attribute_name) @property

(attribute_value) @string

(comment) @comment

[
  (attribute_value)
  (quoted_attribute_value)
] @string

"=" @operator

[
  "{"
  "}"
] @punctuation.bracket

[
  "<"
  ">"
  "</"
  "/>"
] @tag.delimiter
