<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>mundobot.com</title>
<script language="JavaScript" fptype="dynamicoutline">
<!--
function dynOutline() {}
//-->
</script>
<script language="JavaScript1.2" fptype="dynamicoutline" src="outline.js">
</script>
<script language="JavaScript1.2" fptype="dynamicoutline" for="document" event="onreadystatechange()">
<!--
initOutline()
//-->
</script>
</head>

<body background="../../images/fons2.gif" onclick="dynOutline()">

<blockquote>
  <blockquote>
    <blockquote>

<table border="0" width="73%">
  <tr>
    <td width="69%"><font size="4"><b><i>PID control of two motors speed via serial
      port</i></b></font>
      <p>By Alejandro Alonso-Puig<br>
      January 2.005<br>
      <a href="http://mundobot.com">mundobot.com</a></p>
    </td>
    <td width="34%" valign="top">
      <p align="center"><a href="../../projects/melanie/v3/ennewhisp.htm" target="_blank"><br>
      </a></td>
    <td width="48%" valign="top">
      <p align="right"><a href="sppid.htm" target="_top"><img border="0" src="../../images/spanish.gif" width="98" height="65"></a>&nbsp;
      <a href="enpid.htm"><img border="0" src="../../images/ukusa6.jpg"></a></td>
  </tr>
</table>
<hr>
<p align="justify"><br>
The presented system is a feedback control loop of type PID (Proportional
Integral Differential) that allows to control the speed of two motors (controls
PD) and to slave them (control I) so that both motors maintain a speed relation
in case one is forced by external agents to vary it.&nbsp;</p>
<p align="justify">This system of speed control is applicable for example to
robots with traction of differential type. Simply one indicates to the system
the wished speed (<i>SetPoint</i>) and the difference of speed (<i>Bias</i>)
that is to have between both motors (to be able to make turns). The system takes
care of all the rest.</p>
<p align="center"><img border="0" src="pid.png" width="588" height="335"></p>
<p align="justify">The system is controllable by commands sent via serial port.
It is possible to specify not only the speed and Bias, but also the gains and
other parameters that we will see later.&nbsp;</p>
<p align="justify">Additionally the system allows to obtain the values of
several of its parameters via serial port.</p>
<p align="justify">&nbsp;</p>
<p align="justify"><b>HARDWARE</b></p>
<ul>
  <li>
    <p align="justify"><b>Motors</b>: Although the system is adaptable to
    different types of motors, those used in the test bench and for which PID
    gains are fit by defect in the program are the motors with gearhead and
    encoders from <i><b>Solution Cubed</b></i> (<a href="http://www.solutions-cubed.com" target="_blank">http://www.solutions-cubed.com</a>).
    Features: 12V, 200RPM, 3,6kgcm of torque, quadrature encoder (2 channels for
    detection of rotational direction) of 200CPR, that after the gearhead
    reduction allows to obtain 6000CPR.&nbsp;<br>
    <i><u>Important note</u>: The system is prepared to use quadrature encoders.
    If they are used incremental encoders of only one channel it will be
    necessary to connect them to RA4 and RC0, putting RB2 and RB3 to mass. It
    will not be possible to control negative speeds (reverse mode or absolute
    turns), obtaining an unstable result of the controller in his attempt. In
    any case it would be preferable to make modifications in the code to adapt
    it, since it can become unstable in values near zero.
    <br>
    </i></li>
  <li>
    <p align="justify"><b>Control Card</b>: We have used the <i><b>Skypic</b></i>
    control card from <b>IEARobotics</b> with the PIC16F876 micro (<a href="http://www.iearobotics.com/proyectos/skypic/skypic.html" target="_blank">http://www.iearobotics.com/proyectos/skypic/skypic.html</a>).
    Such card have an RS232C port with the standard voltage levels (-12v, +12v)
    that could be directly connected to a PC serial port and control the system
    by using a terminal emulator application like hiperterminal.<br>
    <br>
  </li>
  <li>
    <p align="justify"><b>Driver</b>: In order to give the motors the current
    needed we have used the MSE-A100 driver from Microsystems
    Engineering (<a href="http://www.msebilbao.com" target="_blank">http://www.msebilbao.com</a>),
    based on the L293B chip, that supports a couple of motors with 1A continuous
    and 2A peak current draw each.</li>
</ul>
<blockquote>
<p align="justify"><img border="0" src="hardware.gif" width="585" height="239"></p>
</blockquote>
<p align="justify"><b>SOFTWARE</b></p>
<p align="justify">The program that is in the controller has been developed in
C++ using the BoostC cross compiler from Pavel Baranov (<a href="http://www.picant.com/c2c/c.html">http://www.picant.com/c2c/c.html</a>).
We have used libraries for the control of the serial port of the
microcontroller, developed by Yann Hendrikx. The complete self explanatory
program can be downloaded from the following Link. It includes the sources in C,
the object &quot;motor.hex&quot; (ready to burn in the microcontroller) and the
intermediate version in assembler &quot;motor.asm&quot; generated by the cross
compiler:</p>
<ul>
  <li>
    <p align="justify">Control program <a href="motor.zip">motor.zip</a> <font size="1">(.ZIP
    84Kb)</font></li>
</ul>
<p align="justify">For the control from the PC a terminal emulator application
like Hiperterminal is used, configured as 9600, n, 8, 1</p>
<p align="justify">From the hyperterminal the following commands are used for
the control of the system:</p>
<div align="center">
  <center>
  <table border="1" width="68%" height="1386">
    <tr>
      <td width="20%" height="418" align="center"><b>Set Speed</b></td>
      <td width="80%" height="418">A first byte of value 32 is sent (space).
        Next the speed is sent in the following byte. value 50 (character
        &quot;2&quot;) indicates null speed. Inferior values correspond to
        negative speed (reverse mode) and greater values correspond to positive
        speed (forward mode). The program takes the sent code and multiplies it
        by 10. Therefore the speed (<i>SetPoint</i>) used by the program will be
        <i>(code-50)*10</i>
        <p>This speed is measurement in cycles from encoder by each 10 msg (<i>Kpause</i>
        parameter in the program). Thus, depending on the encoder used, the
        speed can vary. For motors with encoder of N cycles per revolution of
        the axis (CPR), in order to get a speed of <i>V</i> (RPM), the speed (<i>SetPoint</i>)
        would be (<i>V * N * Kpause)/60.000. </i>As <i>code=50+SetPoint/10</i>
        then, the code to send would be <i>code=50+ V * N * Kpause/600.000</i></p>
        <p>Thus for example, for the configuration used in the test bench, where
        N=6.000CPR and <i>Kpause</i>=10. In order to make the motors go at
        100RPM would be necessary to send the speed code 50+100*6.000*10/600.000=60
        (character &quot;&lt;&quot; of ASCII table).&nbsp;</p>
        <p>In summary, pressing the space key and then the key &quot;&lt;&quot;
        would set the motor to 100RPM forward.</p>
      </td>
    </tr>
    <tr>
      <td width="20%" height="475" align="center"><b>Change the default value of
        <i>Kpause</i></b>&nbsp;</td>
      <td width="80%" height="475">The value by defect of <i>Kpause</i> can be
        modified by sending first the code 37 (symbol % in the ASCII table) and
        then the value, considering that value 50 corresponds to a null <i>Kpause</i>.
        Thus, the value assigned to <i>Kpause</i> will be the one sent minus 50.
        For example, if code 60 is sent (character &quot;&lt;&quot; of ASCII
        table), <i>Kpause</i> will be 10 (60-50). If values smaller than 50 are
        sent, <i>Kpause</i> will become null.
        <p>It could be necessary to modify <i>Kpause</i> depending on the CPR of
        the encoder used. The program internally uses a register of 8 bits for
        each motor, that counts the cycles coming from encoder. If the CPR of
        the encoder are very high and <i>Kpause</i> is also high, they could
        happen that the registers overflow giving wrong speed values to the
        control loop. Therefore <i>Kpause</i> has to have a value (in msg) so
        that the motor at max speed does not produce more than 255 cycles of
        encoder. For example, for a motor of max speed <i>V</i> (RPM) at the
        shaft and encoder of N cycles per revolution of the shaft (CPR), the
        value of <i>Kpause</i> does not have to be greater than<i>
        (60.000*255)/(V*N)</i></p>
        <p>Thus for example, for the configuration used in the test bench, where
        N=6.000CPR and V=200RPM, the value of <i>Kpause</i> had to be less than
        (60,000 * 255)/(200*6.000)= 12'75. <i>Kpause</i> is number of one byte,
        so it would be 12 at the most.&nbsp;</p>
        <p>In summary, to establish a <i>Kpause</i> of 20, key % would be
        pressed (code 37) and then key F (code 70)</p>
      </td>
    </tr>
    <tr>
      <td width="20%" height="133" align="center"><b><i>Bias</i></b></td>
      <td width="80%" height="133">The value of the <i>Bias</i> indicates the
        relative speed of the left motor respect to the right motor. A positive <i>Bias</i>
        makes the left motor to go faster than right motor and a negative <i>Bias</i>
        do the opposite. Basically for a specific speed (<i>SetPoint</i>), the
        motor speed would be:
        <p><i>Vi =SetPoint + Bias/2<br>
        Vd =SetPoint - Bias/2</i></p>
      </td>
    </tr>
    <tr>
      <td width="20%" height="266" align="center"><b>Gains</b>  &nbsp;</td>
      <td width="80%" height="266">In order to vary the gains by default of the
        PID controller, first it is necessary to send a code that indicates the
        gain to vary:&nbsp;
        <ul>
          <li>Code 34 (Character quotes (&quot;) of ASCII table) for the
            Proportional gain (<i>Kpro</i>)&nbsp;</li>
          <li>Code 35 (Character hash (#) of ASCII table) for the Integral gain
            (<i>Kint</i>)</li>
          <li>Code 36 (Character dollar ($) of ASCII table) for the Differential
            gain (<i>Kdif</i>)&nbsp;</li>
        </ul>
        <p>After this code is sent, the value of the gain should be sent in 1/50
        units, starting in code 50 (code 50 indicates gain 0). Thus for example,
        to establish a <i>Kint</i> gain of 0.02 first would be sent code 35 and
        then code 0,02*50+50 = 51
      </td>
    </tr>
    <tr>
      <td width="20%" height="39" align="center"><b>Request of data</b></td>
      <td width="80%" height="39">Sending code 38 (character &amp; of ASCII
        table) the request of data status is activated and sending code 39 (character
        ' of ASCII table) the request of data is deactivated.&nbsp;
        <p>When activating the request of data, the controller starts sending
        continuously&nbsp; the following control values via serial port:</p>
        <ul>
          <li><i>SetPoint</i>: Speed of reference</li>
          <li><i>PVLeft</i> : Real speed as per left encoder</li>
          <li><i>PVRight</i>: Real speed as per right encoder</li>
          <li><i>Kpro</i>: Proportional Gain in 1/50 units, therefore if it
            shows 20, the real gain used would be 20/50=0,4&nbsp;</li>
          <li><i>Kdif</i>: Differential Gain in units of 1/50&nbsp;</li>
          <li><i>Kint</i>: Integral Gain in units of 1/50&nbsp;</li>
          <li><i>Bias</i>&nbsp;</li>
          <li><i>Kpause</i>&nbsp;</li>
        </ul>
        <p>Next we will show how useful is to collect these data in the computer
        to see the behavior of the system and to adjust the gains suitably.
      </td>
    </tr>
  </table>
  </center>
</div>
<p align="justify"><i>Note: The units used are a bit complex, but it has been
necessary to do it in this way to adapt the program to the limitations of the
compiler, between whom it is the lack of&nbsp; floating point variables and the
limitation of long numbers to values of 16 bits.&nbsp;</i></p>
<p align="justify">Activating the request of data we obtain a continuous list of
feedback values from the system that could be used by PC applications to have
permanent information of the system and to make the adjustments needed.</p>
<p align="justify">Next it is showed a manual method to adjust the gains of the
controller.&nbsp;</p>
<p align="justify">The method consists on maintaining the motor stopped. Send to
the system via serial port the values of <i>Kpro</i>, <i>Kint</i> and <i>Kdif</i>
wished. Activate the capture of data from the hyperterminal and indicate the
system to set the motor speed up to 100RPM. After a couple of seconds we could
stop the motor and stop the capture</p>
<p align="justify">The following excel spreadsheet could be used to visualize
the captured data:</p>
<ul>
  <li>
    <p align="justify"><a href="pidtest.xls">pidtest.xls</a> <font size="1">(.xls
    120Kb)</font></li>
</ul>
<p align="justify">The data of the capture will be copied and pasted in the B17
cell, with which the graph of behavior of both motors will be drawn
automatically. See the following example:</p>
<p align="justify"><img border="0" src="pidgraph1.png" width="755" height="403"></p>
<p align="justify">&nbsp;</p>
<p align="justify">In a visual way it is possible to see the behavior of the
controller and adjust the gains until obtaining interesting results:</p>
<p align="center"><img border="0" src="pidgraph2.png" width="670" height="218"></p>
<p align="justify">&nbsp;</p>
<p align="justify"><b><i>Gains tuning</i></b></p>
<p align="justify">There are several theories for the manual adjustment of gains
of PID controller with no need to get into mathematics formulation. There are
several links at referring these theories at the end of the page. Basically the
methodology that I have followed has been the following one, extracted of the
mentioned theories.</p>
<p align="justify">&nbsp;</p>
<ol>
  <li>
    <p align="justify">Start with a value of proportional gain equal or smaller
    than one and set the other gains to zero. When annulling the integral gain
    is annulled the influence of the speed of a motor on the other. Check the
    results. Example:</li>
</ol>
<p align="center"><img border="0" src="pidgraph4.png" width="497" height="161"><br>
</p>
<ol>
  <li value="2">
    <p align="justify">Raise sluggishly the value of the proportional gain
    maintaining the other gains zero until the graph shows oscillations.
    Example:</li>
</ol>
<p align="center"><img border="0" src="pidgraph3.png" width="498" height="163"><br>
</p>
<ol start="4">
  <li value="3">
    <p align="justify">Keep the integral gain to zero and set a differential
    gain 10 times inferior to the proportional one.&nbsp;</li>
  <li>
    <p align="justify">See the results raise de differential gain until the
    graph shows no oscillations. Example:</li>
</ol>
<p align="center"><img border="0" src="pidgraph5.png" width="494" height="162"><br>
</p>
<ol dynamicoutline>
  <li value="5">
    <p align="justify">Having the P and D gains already established, start setting
    a minimum integral gain (0.02 are the minim supported by the program) and
    observe the results. Raise the integral gain little by little until both
    motors begin to oscillate and get into resonance.</li>
</ol>
    <p align="center"><img border="0" src="pidgraph7.png">
<ol dynamicoutline>
  <li value="6">
    <p align="justify">Then divide the integral gain by 10 or 20. Gain will be
    correct when the graph doesn't show oscillations and when trying to force by
    hand one motor to stop, the other tends also to stop by itself (Keep in mind
    that the current draw of a stacked motor tends to go up very fast. The motor
    driver used has to give sufficient power or it will overheat). Example:</li>
</ol>
<p align="center"><img border="0" src="pidgraph6.png" width="497" height="160"><br>
</p>
<p>
  <br>
  <b>BIBLIOGRAPHY</b></p>
<table border="0" width="80%">
  <tr>
    <td width="5%" valign="top"><img border="0" src="../../images/enflag.gif" width="20" height="19">
    </td>
    <td width="95%">Book &quot;Building your Robot Drive Trains&quot;. Dennis
      Clark and Michael Owings. Ed. TAB Robotics. ISBN 0-007-140850-9. Chapter 8
      - Motor Control 201. Closing the loop with feedback.
    </td>
  </tr>
  <tr>
    <td width="5%" valign="top"><img border="0" src="../../images/enflag.gif" width="20" height="19">
    </td>
    <td width="95%">Book &quot;Mobile Robots&quot;. Josephe L. Jones et al. Ed.
      A.K.Peters. ISBN 1-56881-097-0. Chapter 7; 7.8.2 - Feedback Control Loops
    </td>
  </tr>
  <tr>
    <td width="5%" valign="top"><img border="0" src="../../images/enflag.gif" width="20" height="19">
    </td>
    <td width="95%">PID Without a PhD (Easy guide to PID control algorithms and
      gains tuning)  :
      <a href="http://www.embedded.com/2000/0010/0010feat3.htm" target="_blank"> http://www.embedded.com/2000/0010/0010feat3.htm</a>&nbsp;
    </td>
  </tr>
  <tr>
    <td width="5%" valign="top"><img border="0" src="../../images/enflag.gif" width="20" height="19">
    </td>
    <td width="95%">Adjusting PID Gains: <a href="http://www.ctc-control.com/customer/elearning/servotut/adjus.asp" target="_blank"> http://www.ctc-control.com/customer/elearning/servotut/adjus.asp</a>
    </td>
  </tr>
  <tr>
    <td width="5%" valign="top"><img border="0" src="../../images/spflag.gif" width="21" height="16"></td>
    <td width="95%">Documentation of SkyPic control card: <a href="http://www.iearobotics.com/proyectos/skypic/skypic.html" target="_blank">http://www.iearobotics.com/proyectos/skypic/skypic.html</a>
    </td>
  </tr>
</table>

<hr>

<p align="right"><script>document.write('Actualizado (mes/d�a/a�o):  '+document.lastModified)</script></p>
    </blockquote>
  </blockquote>
</blockquote>

</body>

</html>
