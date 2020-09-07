/opt/test:
  file.managed:
    - source: salt://test.d/test.txt
    - template: jinja
