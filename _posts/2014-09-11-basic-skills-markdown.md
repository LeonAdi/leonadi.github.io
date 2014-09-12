---
layout: post
title:  "Basic Skills: Markdown"
date:   2014-09-10 23:37:06
categories: basic-skills
thumb: /assets/posts/2014-09-11/banner.jpg
---

Jeder, der schon mal mit Joomla, Wordpress oder ähnlichem gearbeitet hat, weiß bestimmt, was ein WYSIWYG-Editor ist. Für alle anderen:

![TinyMCE Screenshot](/assets/posts/2014-09-11/tinymce.jpg)

Ein Editor mit vielen schönen (meistens auch bunten) Knöpfen, der ein bisschen an LibreOffice oder Microsoft Word erinnert.

Wer diese Webseite nur betreibt, ein schönes Design (dass man selber hässlich, der Auftraggeber aber um so schöner findet), und ein paar Plugins eingerichtet hat, wird schnell feststellen, was diese Editoren anrichten.

**Achtung** es folgt eine Horrorgeschichte. Designer mit schwachen Nerven sollten den nachfolgenden Absatz besser überspringen.

Nehmen wir mal an, rein hypothetisch natürlich :wink:, es handelt sich dabei um eine Schulhomepage. Besagte Seite läuft mit Joomla und jeder Lehrer, der will, kann sich einloggen und in einem WYSIWYG-Editor seinen Artikel schreiben. Die Seite läuft einige Monate gut, weil sich noch kein Lehrer richtig selbst angemeldet hat, sondern einfach ein Word-Dokument per E-Mail sendet, was man selbst dann einstellt. Man ist natürlich vorsichtig, dass man nichts verstellt, und die Formatierung des neuen Beitrags schön einheitlich zu allen anderen ist. Dann kommt irgendwann, was kommen musste, der Albtraum jedes Web, Print, Schrift und sogar Modedesigners: Dieser eine Lehrer, der sämtliche Arbeitsblätter, Klausuren, Elternbriefe und wenn er dürfte wahrscheinlich auch Zeugnisse ruiniert. Seine Waffe heißt: *Comic Sans MS*. Und er meldet sich auf der Webseite an, und verfasst einen Beitrag, der sich gewaschen hat: Blaue Schrift auf rotem Hintergrund, Tabellenlayouts, alles zentriert, lustige Icons mit Wasserzeichen drin und natürlich auch in seiner "Lieblingsschriftart". Stundenlange Arbeiten am CSS gehen den Bach runter.
Wer sich das zumuten will: [hier](/assets/posts/2014-09-11/albtraum.jpg).

Nachdem wir den Schock mehr oder weniger gut überstanden haben nun zum eigentlichen Thema: *Markdown*.

![Markdown Logo](/assets/posts/2014-09-11/markdown-logo.png)

# Was ist Markdown

Markdown ist eine "Sprache" mit der man Texte formatieren kann. Sie kommt ohne besonderen Editor aus, sondern setzt auf Zeichen, die im Text stehen.

So wird `*Naturjoghurt*` zu *Naturjoghurt* und `**Käsebrot**` zu **Käsebrot**. Aber Markdown kann noch mehr als nur kursiv und fett: Es kann auch kursiv ***und*** fett. :smiley:. Außerdem noch Überschriften, Tabellen, Aufzählungen, Zitate und Code.

Normalerweise wird Markdown in HTML übersetzt, es gibt aber auch Programme, die Markdown in PDFs oder sogar Word-Dokumente umwandeln können.

Markdown ist so aufgebaut, dass man schon anhand des reinen Textes den Aufbau erkennen kann. Am besten sieht man das, wenn man sich einmal eine Datei im Markdown-Format ansieht.
Zum Beispiel [den ersten Post aus diesem Blog](https://raw.githubusercontent.com/LeonAdi/leonadi.github.io/master/_posts/2014-09-10-die-dinge-die-da-kommen.md).

# Wozu brauche ich Markdown?
Man kann mit Markdown einiges machen. Es wird von einigen Webseiten verwendet um Kommentare oder Posts zu formatieren. Die bekanntesten sind [Tumblr](http://tumblr.com) [GitHub](https://github.com) und [StackOverflow](https://stackoverflow.com).

Außerdem eignet sich Markdown sehr gut, um schnell eine Notiz zu verfassen, was in jedem Texteditor funktioniert.

Aber es gibt auch zahlreiche Autoren, die Bücher in Markdown verfassen.

Ich schreibe meine meisten Dokumente für die Schule in Markdown (Für größere Projekte und Ausarbeitungen nehme ich allerdings LaTeX).

# Was brauche ich für Markdown?
Im Grunde genommen nicht viel, ein Texteditor reicht schon. Allerdings will man meistens eine Vorschau haben, oder eine Syntaxhervorhebung. Wer schon einen Lieblingseditor gefunden hat, kann für diesen nach Erweiterungen suchen. Mein Editor, [Atom](http://atom.io) hat schon alles eingebaut.

In der Schule verwende ich [StackEdit](http://stackedit.io) einen Online-Editor mit PDF-Export, Google Drive Anbindung und Live-Vorschau.

Für Linux, Mac und Windows Betriebssysteme gibt es [HarooPad](http://pad.haroopress.com/). Für Mac kann ich [LightPaper](http://www.ashokgelal.com/lightpaper-for-mac/) empfehlen.

Um Markdown in sämtliche Formate (inklusive PDF und epub) zu konvertieren gibt es das Kommandozeilenprogramm [pandoc](http://johnmacfarlane.net/pandoc/)

# Die Markdown-Syntax

## Algemeines
Die Markdown-Syntax ist relativ einfach. Wenn man einen einfachen umformatierten Text schreiben will, kann man diesen einfach schreiben. Man wird nicht einmal bemerken, dass man Markdown benutzt. Anders sieht es bei Zeilenumbrüchen aus.

```
Eins.
Zwei.
Drei.
```

wird zu einem Eins. Zwei. Drei. Einfache Zeilenumbrüche werden als ein Leerzeichen aufgefasst.

Um einen Zeilenumbruch zu erzwingen kann man ans ende der Zeile zwei Leerzeichen anhängen.

```
Eins.  
Zwei.
```

wird zu

Eins.  
Zwei.

Absätze werden durch eine freie Zeile angegeben.

```
Erster Absatz.

Zweiter Absatz.
```

## Überschriften
Überschriften in Markdown sind in drei Ebenen eingeteilt.

```
# Erste Überschrift

## Zweite Überschrift

### Dritte Überschrift

Erste Überschrift
=================

Zweite Überschrift
------------------
```

## Hervorhebungen
Um Text in Markdown hervorzuheben wird er von `*` oder `_` umgeben.

* `*kursiv*` bzw. `_kursiv_` wird zu _kursiv_
* `**fett**` bzw. `__fett__` wird zu __fett__
* `***bedies***` bzw. `___beides___` wird zu ___fett___

Es gibt eine Variante von Markdown, die von GitHub entwickelt wurde, aber auch auf anderen Seiten verwendet wird, diese erlaubt außerdem Text durchzustreichen:

`~~Bananenschale~~` <del>Bananenschale</del>

### Aufzählungen

Aufzählungen sind ähnlich einfach:

```
- Apfel
- Birne
- Kiwi

* Apfel
* Birne
* Kiwi
```

erzeugen eine nicht-nummerierte Liste:

- Apfel
- Birne
- Kiwi

```
1. Schutzkappe entfernen
2. Brennweite einstellen
3. Auslöser erst leicht und dann ganz durchdrücken
```

erzeugt eine nummerierte Liste:

1. Schutzkappe entfernen
2. Brennweite einstellen
3. Auslöser erst leicht und dann ganz durchdrücken

Die Zahlen am Anfang sind nicht wichtig, Markdown fängt immer bei 1 an. Man könnte also auch

```
0. Wecker ausschalten
0. Aufstehen
```

schreiben.

## Bilder und Links

Ein Link besteht aus zwei teilen: dem Titel, der später im Text angezeigt wird, und der Adresse. Geschrieben wird er so:

```
[Mein Twitter](https://twitter.com/xanecs)
```

[Mein Twitter](https://twitter.com/xanecs)

Wichtig ist dabei, dass man das `http://` oder `https://` am Anfang nicht vergisst, da der Link sonst nicht funktioniert.

Bilder werden durch ein `!` am Anfang ergänzt. Der Titel ist dann der Alternativtext, der Angezeigt wird, wenn das Bild nicht mehr erreichbar ist, oder der Browser keine Bilder unterstützt.

```
![Süße Katze](http://placekitten.com/g/640/480)
```

![Süße Katze](http://placekitten.com/g/640/480)

## Zitate

Zitate werden mit einem `>` am Anfang der Zeile gekennzeichnet.

```
> Niemand hat die Absicht eine Mauer zu bauen.  
> - Bob der Baumeister
```

> Niemand hat die Absicht eine Mauer zu bauen.
> - Bob der Baumeister

Hier eignet sich der erzwungene Zeilenumbruch mit zwei Leerzeichen am Zeilenende, um den Autor anzugeben.

## Code

Programmcode in Markdown wird mit zwei Leerzeichen eingerückt.

```
  function stackOverflow() {
    stackOverflow();  }
```

Alternativ kann man über und unter den Code auch drei \` setzen und muss ihn dann nicht einrücken.

{% highlight javascript %}
function stackOverflow() {
  stackOverflow();}
{% endhighlight %}

## Tabellen

Als letztes bleiben Tabellen, diese werden meistens, aber leider nicht immer unterstützt.

```
Gegenstand  |Stückzahl
------------|---------
HB-Bleistift|3 Stück
Lineal      |5 Stück
```

Gegenstand  |Stückzahl
------------|---------
HB-Bleistift|3 Stück
Lineal      |5 Stück

Zugegeben, etwas umständlich zu schreiben, aber dafür sehr übersichtlich.# Weiteres
Wer sich noch ein bisschen weiter mit Markdown beschäftigen möchte, kann sich einmal folgende Links ansehen:

* Dieses Markdown Cheat Sheet, dass eine Übersicht die meisten Befehle gibt: [http://blog.lib.umn.edu/crosb002/leadership/Markdown_Cheat_Sheet.pdf](http://blog.lib.umn.edu/crosb002/leadership/Markdown_Cheat_Sheet.pdf)
* Ein Wordpress-Plugin, um Beiträge in Markdown zu schreiben: [https://wordpress.org/plugins/wp-markdown/](https://wordpress.org/plugins/wp-markdown/)
* Jekyll, Programm, dass aus Markdown und HTML-Templates einen Blog generiert (wie auch diesen hier): [http://jekyllrb.com/](http://jekyllrb.com/)
