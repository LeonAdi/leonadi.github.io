---
layout: post
date: 2015-02-27
title: "Projekt: Stromzähler-Dashboard"
categories: project
thumb: /assets/posts/2015-02-27/kibana3.png
---

Es ist schon länger her, da hat auf einmal ein Mitarbeiter der Stadtwerke bei uns zu Hause geklingelt. Mit dabei hatte er einen von diesen "intelligenten Stromzählern", die den gemessenen Verbrauch direkt an den Stromversorger übermitteln. Man selbst kann diese Daten aber nur gegen eine Gebühr abrufen. Als ich dann irgendwann mal am Stromkasten war, um eine Sicherung wieder einzuschalten, ist mir am Stromzähler eine kleine LED aufgefallen, die laut Beschriftung für jede
verbrauchte Wattstunde ein mal blinkt. "Daraus müsste man doch was machen können", habe ich mir gedacht.

Wenig später stand ich mit einem Arduino, einem Multimeter, einer Photodiode und einem Photowiderstand vor dem Stromkasten, und habe versucht, das Blinken zu erkennen. Leider ohne Erfolg, die kleine LED war zu schwach für die beiden Sensoren. Aber ich hatte noch eine Idee: Eine Webcam. Mal kurz mit der Handykamera versucht und ja, da kann man das Blinken der Lampe gut erkennen.

Als nächstes musste ich das Webcambild verarbeiten und erkennen, wann die Lampe blinkt. Nach ein bisschen probieren und googeln habe ich dieses Python-Skript geschrieben gehabt:

{% highlight python %}
import cv2

cam = cv.VideoCapture(0)
state = False
thresh = 40

while True:
  ret, frame = cam.read()
  gray = cv2.CvtColor(frame, cv2.CV_BGR2GRAY)

  brightness = cv2.mean(frame)

  if state and (brightness < thresh):
    # PULSE COMPLETE
    print("PULSE")
    state = False
  if (not state) and (brightness > thresh):
    state = True

{% endhighlight %}

Ich verwende die Bibliothek [OpenCV](http://opencv.org/), um das Bild der Webcam zu lesen, wandle es in Graustufen um, und ermittle dann den Durchschnittswert, der
zwischen 0 (das Bild ist komplett schwarz) und 255 (das Bild ist komplett weiß) liegt. Dann halte ich die Webcam vor die LED und probiere aus, wo ein guter Grenzwert zwischen Lampe an und Lampe aus liegt. Wird dieser über- und dann wieder unterschritten gibt das Skript ein "BLINK" zurück. Mein Ziel war es, den aktuellen Stromverbrauch in "Echtzeit" verfolgen zu können, daher Zähle ich die Blinks in einer Minute. Dann multipliziere ich diesen Wert mit 60 und siehe da, der aktuelle Stromverbrauch in Watt.

Als nächstes habe ich das Skript auf einen Hackberry (das ist ein kleines ARM-Board, vergleichbar mit dem Raspberry Pi) geladen, der dauerhaft im Keller neben dem
Stromzähler stehen bleiben kann. Dann befestige ich die Webcam noch mit etwas Patafix am Stromzähler, und die "Hardware-Seite" steht.

Bei einem Ferienjob habe ich mich mal mit [ElasticSearch](http://www.elasticsearch.org/overview/elasticsearch/) und [Kibana](http://www.elasticsearch.org/overview/kibana/) beschäftigt, um Statistiken über laufende Server zu erhalten. Da ich mich also damit schon auskannte, und mir Kibana als Oberfläche gut gefallen hatte, habe ich mir gedacht, warum nicht auch hierfür.

Also, auf einem Server die Beiden Tools installiert und in mein Skript eingebaut, dass es den Messwert an den ElasticSeach-Server sendet. Dann noch ein schönes Dashboard in Kibana zusammengebaut und fertig ist der "Wirklich smarte Stromzähler".

![Webcam am Stromzähler](/assets/posts/2015-02-27/webcam.jpg)
![Webcam am Stromzähler](/assets/posts/2015-02-27/hackberry.jpg)
