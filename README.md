# sysWORXX Pi HAT / IO Simulator

**KiCad Projekt des IO Simulator HAT für den sysWORXX Pi-AM62x.**

Der *IO Simulator HAT* stellt verschiedene Peripherie-Elemente bereit, um Experimente sowie Test- und Inbetriebnahme von Softwareprojekten auf dem *sysWORXX Pi-AM62x* zu vereinfachen.

## IO Simulator HAT Features

Der *IO Simulator HAT* umfasst folgende Peripherie-Elemente:
- 6x Digital Input (4x Push-Button, 2x DIP Switch)
- 4x Digital Output (LED)
- 2x Analog Input (2x Poti, via MCP3202 auf dem HAT)

![\[kicad_3d_model\]](Documentation/sysWORXX_Pi_Hat-IO_Simulator_PCB.3d-model.png)

## sysWORXX Pi-AM62x

Der *sysWORXX Pi-AM62x* ist ein Linux-basierter Einplatinencomputer (SBC), mit dem sich unter anderem Proof-of-Concepts schnell und einfach realisieren lassen. Er ähnelt dem Raspberry Pi, unterstützt aber insbesondere industrielle Anforderungen (2x ETH, SDcard + eMMC, RTC, CAN-FD/TTL, Linux Konsole via on-board FTDI USB-UART-Interface):

Hersteller Seite:
https://www.systec-electronic.com/sysworxx-pi-am62x

Bezugsquelle:
https://www.conrad.de/de/p/evaluation-board-sysworxx-pi-am62x-4core-2gb-ram-32gb-emmc-931380946.html

![\[sysWORXX Pi-AM62x\]](Documentation/sysWORXX_Pi_AM62x.png)

Der sysWORXX Pi-AM62x unterstützt u.a. folgende Programmiersprachen:
- C/C++
- Rust
- C#
- Java
- Python
- Node-RED
- IEC 61131-3

## IO Simulator HAT

Der *IO Simulator HAT* basiert auf einer vierlagigen Leiterplatte im typischen Raspberry Pi HAT Format (64x56 mm). Die Platine ist einseitig bestückt und verwendet nur sehr einfach zu lötende THT Bauteile (Through Hole Technology). Der *IO Simulator HAT* kann somit leicht auch von Schülern und Bastlern mit etwas Löterfahrung aufgebaut werden.

Die Werte aller Bauteile sind im [Schaltplan](Documentation/sysWORXX_Pi_Hat-IO_Simulator_PCB_Schematic.pdf) spezifiziert.

![\[sysWORXX IO Simulator\]](Documentation/sysWORXX_Pi_Hat-IO_Simulator_PCB.png)

**KiCad Schaltplansymbole und Footprints**

Für den *IO Simulator HAT* wurden einige Schaltplansymbole und Footprints neu erstellt bzw. modifiziert. Diese sind im Repository im Zweig [KiCad_Components/usrlib](KiCad_Components/usrlib) abgelegt.

**Bezugsquellen**

In der [Stückliste](Documentation/sysWORXX_Pi_Hat-IO_Simulator_PCB_BoM.pdf) (BoM, Bill of Material) sind für alle Komponenten mögliche Bezugsquellen (incl. Bestellnummer) angegeben. Bei einer Suche im Internet findet man zudem leicht mehrere PCB Hersteller, die direkt das KiCad Layout File [sysWORXX_Pi_Hat-IO_Simulator_PCB.kicad_pcb](sysWORXX_Pi_Hat-IO_Simulator_PCB/sysWORXX_Pi_Hat-IO_Simulator_PCB.kicad_pcb) importieren können. Die PCBs erhält man dann mit Bestückungsdruck auf der Oberseite nach wenigen Tagen per Post zugeschickt. Eine mögliche direkte Bezugsquelle der Platine ist z.B. hier:

https://aisler.net/p/XVLIPALV

## Device Tree für IO Simulator HAT

Der *sysWORXX Pi-AM62x* unterstützt verschiedene IO-Belegung für den 40poligen Pin-Header. Die Steuerung des Pin-Muxings erfolgt Linux-typisch mit Hilfe des Device Trees, zusammen mit Device Tree Overlays (DTBO), die separat geladen werden können. Um die für den IO Simulator HAT notwendige IO-Belegung bereitzustellen, ist das entsprechende `IO Simulator HAT Overlay` zu aktivieren. Dazu sind als Benutzer `root` folgende Befehle auszuführen:

    sudo dtbo-setup set k3-am625-systec-sysworxx-pi-hat-io-simulator.dtbo
    reboot

Neben der Bereitstellung der digitalen IO's sorgt das Overlay auch dafür, dass die für den 12Bit ADC (MCP3202) notwendigen Treiber geladen werden, um die beiden analogen Eingänge AI0 und AI1 lesen zu können.

Die digitalen Ein- und Ausgänge (DI0..DI5, DO0..DO3) lassen sich am einfachsten über den [sysWORXX IO Treiber](https://github.com/systec-electronic/sysworxx-io) ansprechen. Dieser ist bereits im Image des sysWORXX Pi-AM62x enthalten und wird z.B. von Node-RED automatisch geladen. In Node-RED wird die entsprechende Funktionalität über die Nodes `Digital In` bzw. `Digital Out` abgebildet.

Die Werte der beiden anlogen Eingänge AI0 und AI1 müssen dagegen direkt aus dem SysFS gelesen werden:

    cat /sys/bus/iio/devices/iio:device0/in_voltage0_raw
    cat /sys/bus/iio/devices/iio:device0/in_voltage1_raw

In Node-RED kann hierzu der Node `read file` genutzt werden. Der Node ist für AI0 wie folgt zu konfigurieren (siehe Tab `sysWORXX PI Analog In` im Beispiel-Flow [IO-HAT_Periphery.json](Node-RED_Flow/IO-HAT_Periphery.json) des nachfolgenden Abschnitts):

    Dateiname -> Path -> /sys/bus/iio/devices/iio:device0/in_voltage0_raw

Um AI1 zu lesen, ist der Kanalbezeichner `in_voltage0_raw` entsprechend durch `in_voltage1_raw` zu ersetzen. Sollen beide Kanäle in einer Applikation genutzt werden, muss der Zugriff sequentiell mit einer kurzen Lesepause zwischen den beiden Kanälen erfolgen. Erfolgt der Lesezugriff überlappend, führt dies zu Fehlern. Die Kanäle liefern in diesem Fall den Wert 0.

## Node-RED Inbetriebnahme-Software

Test- und Inbetriebnahme des *IO Simulator HAT* sind mit dem Node-RED Flow [IO-HAT_Periphery.json](Node-RED_Flow/IO-HAT_Periphery.json) sehr einfach möglich. Er bedient alle Komponenten des Simulators und stellt die aktuellen Werte übersichtlich auf einem Dashboard dar.

![\[Node-RED Inbetriebnahme Flow - Digital In/Out\]](Documentation/Node-RED_Flow_DIO.png)

Der Tab `sysWORXX PI Analog In` verdeutlicht den Zugriff auf die beiden analogen Eingänge. Das Lesen des ersten Kanals AI0 wird durch den `inject` Node im Sekundentakt getriggert. Den Analogwert selbst liest der nachfolgende Node `read file` direkt aus dem SysFS. Das Lesen des zweiten Kanals erfolgt zeitversetzt mit einer Verzögerung von 250ms, realisiert durch den Node vom Typ `delay`.

![\[Node-RED Inbetriebnahme Flow - Analog In\]](Documentation/Node-RED_Flow_AI.png)

Der Node-RED Flow [IO-HAT_Periphery.json](Node-RED_Flow/IO-HAT_Periphery.json) ist wie folgt in das Node-RED auf dem *sysWORXX Pi-AM62x* zu importieren:

    Node-RED Menu -> Import -> Zwischenablage -> Button "Select a File to Import"

Nach dem Deploy auf den *sysWORXX Pi-AM62x* wird der Flow auf dem Gerät ausgeführt und das Node-RED Dashboard visualisiert die aktuellen Werte der IO-Peripherie.

![\[Node-RED Dashboard\]](Documentation/Node-RED_Dashboard.png)

## Verwendete Komponenten von Drittanbietern

1. **PCB Shape + Steckverbinder Footprints**

Das PCB Shape und die Footprints für den 40poligen Steckverbinder wurden übernommen von:
https://github.com/wrongbaud/RPi_Hat_Template



