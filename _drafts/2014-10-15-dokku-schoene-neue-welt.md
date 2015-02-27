---
layout: post
title:  "Dokku: Schöne neue Welt"
date:   2014-09-10 23:37:06
categories: server
thumb: /assets/posts/2014-10-15/banner.jpg
---

Heute basteln wir uns unsere eigene Cloud. Alles was wir dazu brauchen:

- Einen Server (Linux 3.x)

Hast du das? Gut, dann können wir anfangen.

Genauer geht es darum auf unserem Server Anwendungen zu installieren, sie zu aktualisieren, zu starten, stoppen und auch wieder deinstallieren. Und das Ganze möglichst einfach. Wenn wir fertig sind, könnte das hosten einer Webseite ungefähr so aussehen:

```
touch .nginx
git add .
git commit -m "New Website, yayy!"
git push
```

Daraufhin wird unser Server einen Container mit Ubuntu Server aufsetzen, nginx installieren und die Webseite bereitstellen.

Dieses System basiert auf Dokku. Dokku bezeichnet sich selbst als:

> Docker powered mini-Heroku. The smallest PaaS implementation you've ever seen.

# Technologie
Um zu erklären, wie Dokku funktioniert, fangen wir ganz am Anfang an: Mit Linux-Containern

## Linux Container
