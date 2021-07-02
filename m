Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E4373B9A79
	for <lists+cake@lfdr.de>; Fri,  2 Jul 2021 03:17:01 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 15C4A3CB51;
	Thu,  1 Jul 2021 21:16:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1625188611;
	bh=/MtMgR/GrfC/xtzuyKbHqT0H+XDhk3mALe2TFajdA6w=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Jm7lk/SuEKJ99GetWtVcYdb0tA6/vmOZtIsPQBqIUotPxaGLwMIRa0R9TDtsEotyo
	 tAOFwcv8NvX3hgJH15b9C2f7FKP0ygdzI88+yg4jyItbIQG7H5kBE4gZzEjMPoUgD8
	 F1hMkBH7qpZ3ln/yHjrEiARVJHsR9W8VQEW11iF3R+A2qIqwzx5Qt1MruXoetYd0Hf
	 iifW52eqrhfo6KbA9zelKxJXAOyAUWrqrot5jEh/DDLCEp78wjWGHF0kX4HxLGHRMm
	 A9TY+2wZvpdFCl/JbwUdLWatxcLmoF7KhY+YNhnWldP1drpw3c8YtW4F6g2JRT2Dn2
	 pEXqayFzDZ2iw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp65.iad3a.emailsrvr.com (smtp65.iad3a.emailsrvr.com
 [173.203.187.65])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 01B703CB44;
 Thu,  1 Jul 2021 21:16:49 -0400 (EDT)
Received: from app45.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140])
 by smtp33.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id 65261198C;
 Thu,  1 Jul 2021 21:16:49 -0400 (EDT)
Received: from deepplum.com (localhost.localdomain [127.0.0.1])
 by app45.wa-webapps.iad3a (Postfix) with ESMTP id 5095C61802;
 Thu,  1 Jul 2021 21:16:49 -0400 (EDT)
Received: by apps.rackspace.com
 (Authenticated sender: dpreed@deepplum.com, from: dpreed@deepplum.com) 
 with HTTP; Thu, 1 Jul 2021 21:16:49 -0400 (EDT)
X-Auth-ID: dpreed@deepplum.com
Date: Thu, 1 Jul 2021 21:16:49 -0400 (EDT)
From: "David P. Reed" <dpreed@deepplum.com>
To: "Dave Taht" <dave.taht@gmail.com>
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Type: html
In-Reply-To: <CAA93jw7ZFWRWsBK-R1See9jRCASHd1U8ZFawyDXOT8fh2pLTag@mail.gmail.com>
References: <CAA93jw7ZFWRWsBK-R1See9jRCASHd1U8ZFawyDXOT8fh2pLTag@mail.gmail.com>
X-Client-IP: 209.6.168.128
Message-ID: <1625188609.32718319@apps.rackspace.com>
X-Mailer: webmail/19.0.7-RC
X-Classification-ID: 251a4995-5ad9-434f-b6bc-b8bbcc897d52-1-1
Subject: Re: [Cake] [Cerowrt-devel] Due Aug 2: Internet Quality workshop CFP
	for the internet architecture board
X-BeenThere: cake@lists.bufferbloat.net
X-Mailman-Version: 2.1.20
Precedence: list
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
List-Unsubscribe: <https://lists.bufferbloat.net/options/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=unsubscribe>
List-Archive: <https://lists.bufferbloat.net/pipermail/cake>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Subscribe: <https://lists.bufferbloat.net/listinfo/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=subscribe>
Cc: Cake List <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 starlink@lists.bufferbloat.net, codel@lists.bufferbloat.net,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============6937616946753086113=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============6937616946753086113==
Content-Type: multipart/alternative;boundary="----=_20210701211649000000_37808"

------=_20210701211649000000_37808
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=0AWell, nice that the folks doing the conference  are willing to consider =
that quality of user experience has little to do with signalling rate at th=
e physical layer or throughput of FTP transfers.=0A =0ABut honestly, the fa=
ct that they call the problem "network quality" suggests that they REALLY, =
REALLY don't understand the Internet isn't the hardware or the routers or e=
ven the routing algorithms *to its users*.=0A =0ABy ignoring the diversity =
of applications now and in the future, and the fact that we DON'T KNOW what=
 will be coming up, this conference will likely fall into the usual trap th=
at net-heads fall into - optimizing for some imaginary reality that doesn't=
 exist, and in fact will probably never be what users actually will do give=
n the chance.=0A =0AI saw this issue in 1976 in the group developing the or=
iginal Internet protocols - a desire to put *into the network* special tric=
ks to optimize ASR33 logins to remote computers from terminal concentrators=
 (aka remote login), bulk file transfers between file systems on different =
time-sharing systems, and "sessions" (virtual circuits) that required login=
s. And then trying to exploit underlying "multicast" by building it into th=
e IP layer, because someone thought that TV broadcast would be the dominant=
 application.=0A =0AFrankly, to think of "quality" as something that can be=
 "provided" by "the network" misses the entire point of "end-to-end argumen=
t in system design". Quality is not a property defined or created by The Ne=
twork. If you want to talk about Quality, you need to talk about users - al=
l the users at all times, now and into the future, and that's something you=
 can't do if you don't bother to include current and future users talking a=
bout what they might expect to experience that they don't experience.=0A =
=0AThere was much fighting back in 1976 that basically involved "network ex=
perts" saying that the network was the place to "solve" such issues as qual=
ity, so applications could avoid having to solve such issues.=0A =0AWhat so=
me of us managed to do was to argue that you can't "solve" such issues. All=
 you can do is provide a framework that enables different uses to *cooperat=
e* in some way.=0A =0AWhich is why the Internet drops packets rather than q=
ueueing them, and why diffserv cannot work.=0A(I know the latter is conftro=
versial, but at the moment, ALL of diffserv attempts to talk about end-to-e=
nd applicaiton specific metrics, but never, ever explains what the diffserv=
 control points actually do w.r.t. what the IP layer can actually control. =
So it is meaningless - another violation of the so-called end-to-end princi=
ple).=0A =0ANetworks are about getting packets from here to there, multiple=
xing the underlying resources. That's it. Quality is a whole different thin=
g. Quality can be improved by end-to-end approaches, if the underlying netw=
ork provides some kind of thing that actually creates a way for end-to-end =
applications to affect queueing and routing decisions, and more importantly=
 getting "telemetry" from the network regarding what is actually going on w=
ith the other end-to-end users sharing the infrastructure.=0A =0AThis confe=
rence won't talk about it this way. So don't waste your time.=0A =0A =0A =
=0AOn Wednesday, June 30, 2021 8:12pm, "Dave Taht" <dave.taht@gmail.com> sa=
id:=0A=0A=0A=0A> The program committee members are *amazing*. Perhaps, fina=
lly, we can=0A> move the bar for the internet's quality metrics past endles=
s, blind=0A> repetitions of speedtest.=0A> =0A> For complete details, pleas=
e see:=0A> https://www.iab.org/activities/workshops/network-quality/=0A> =
=0A> Submissions Due: Monday 2nd August 2021, midnight AOE (Anywhere On Ear=
th)=0A> Invitations Issued by: Monday 16th August 2021=0A> =0A> Workshop Da=
te: This will be a virtual workshop, spread over three days:=0A> =0A> 1400-=
1800 UTC Tue 14th September 2021=0A> 1400-1800 UTC Wed 15th September 2021=
=0A> 1400-1800 UTC Thu 16th September 2021=0A> =0A> Workshop co-chairs: Wes=
 Hardaker, Evgeny Khorov, Omer Shapira=0A> =0A> The Program Committee membe=
rs:=0A> =0A> Jari Arkko, Olivier Bonaventure, Vint Cerf, Stuart Cheshire, S=
am=0A> Crowford, Nick Feamster, Jim Gettys, Toke Hoiland-Jorgensen, Geoff=
=0A> Huston, Cullen Jennings, Katarzyna Kosek-Szott, Mirja Kuehlewind,=0A> =
Jason Livingood, Matt Mathias, Randall Meyer, Kathleen Nichols,=0A> Christo=
ph Paasch, Tommy Pauly, Greg White, Keith Winstein.=0A> =0A> Send Submissio=
ns to: network-quality-workshop-pc@iab.org.=0A> =0A> Position papers from a=
cademia, industry, the open source community and=0A> others that focus on m=
easurements, experiences, observations and=0A> advice for the future are we=
lcome. Papers that reflect experience=0A> based on deployed services are es=
pecially welcome. The organizers=0A> understand that specific actions taken=
 by operators are unlikely to be=0A> discussed in detail, so papers discuss=
ing general categories of=0A> actions and issues without naming specific te=
chnologies, products, or=0A> other players in the ecosystem are expected. P=
apers should not focus=0A> on specific protocol solutions.=0A> =0A> The wor=
kshop will be by invitation only. Those wishing to attend=0A> should submit=
 a position paper to the address above; it may take the=0A> form of an Inte=
rnet-Draft.=0A> =0A> All inputs submitted and considered relevant will be p=
ublished on the=0A> workshop website. The organisers will decide whom to in=
vite based on=0A> the submissions received. Sessions will be organized acco=
rding to=0A> content, and not every accepted submission or invited attendee=
 will=0A> have an opportunity to present as the intent is to foster discuss=
ion=0A> and not simply to have a sequence of presentations.=0A> =0A> Positi=
on papers from those not planning to attend the virtual sessions=0A> themse=
lves are also encouraged. A workshop report will be published=0A> afterward=
s.=0A> =0A> Overview:=0A> =0A> "We believe that one of the major factors be=
hind this lack of progress=0A> is the popular perception that throughput is=
 the often sole measure of=0A> the quality of Internet connectivity. With s=
uch narrow focus, people=0A> don=E2=80=99t consider questions such as:=0A> =
=0A> What is the latency under typical working conditions?=0A> How reliable=
 is the connectivity across longer time periods?=0A> Does the network allow=
 the use of a broad range of protocols?=0A> What services can be run by cli=
ents of the network?=0A> What kind of IPv4, NAT or IPv6 connectivity is off=
ered, and are there firewalls?=0A> What security mechanisms are available f=
or local services, such as DNS?=0A> To what degree are the privacy, confide=
ntiality, integrity and=0A> authenticity of user communications guarded?=0A=
> =0A> Improving these aspects of network quality will likely depend on=0A>=
 measurement and exposing metrics to all involved parties, including to=0A>=
 end users in a meaningful way. Such measurements and exposure of the=0A> r=
ight metrics will allow service providers and network operators to=0A> focu=
s on the aspects that impacts the users=E2=80=99 experience most and at=0A>=
 the same time empowers users to choose the Internet service that will=0A> =
give them the best experience."=0A> =0A> =0A> --=0A> Latest Podcast:=0A> ht=
tps://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920/=0A>=
 =0A> Dave T=C3=A4ht CTO, TekLibre, LLC=0A> _______________________________=
________________=0A> Cerowrt-devel mailing list=0A> Cerowrt-devel@lists.buf=
ferbloat.net=0A> https://lists.bufferbloat.net/listinfo/cerowrt-devel=0A> 
------=_20210701211649000000_37808
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<font face=3D"arial" size=3D"2"><p style=3D"margin:0;padding:0;font-family:=
 arial; font-size: 10pt; overflow-wrap: break-word;">Well, nice that the fo=
lks doing the conference&nbsp; are willing to consider that quality of user=
 experience has little to do with signalling rate at the physical layer or =
throughput of FTP transfers.</p>=0A<p style=3D"margin:0;padding:0;font-fami=
ly: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p sty=
le=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap=
: break-word;">But honestly, the fact that they call the problem "network q=
uality" suggests that they REALLY, REALLY don't understand the Internet isn=
't the hardware or the routers or even the routing algorithms *to its users=
*.</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt=
; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;f=
ont-family: arial; font-size: 10pt; overflow-wrap: break-word;">By ignoring=
 the diversity of applications now and in the future, and the fact that we =
DON'T KNOW what will be coming up, this conference will likely fall into th=
e usual trap that net-heads fall into - optimizing for some imaginary reali=
ty that doesn't exist, and in fact will probably never be what users actual=
ly will do given the chance.</p>=0A<p style=3D"margin:0;padding:0;font-fami=
ly: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p sty=
le=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap=
: break-word;">I saw this issue in 1976 in the group developing the origina=
l Internet protocols - a desire to put *into the network* special tricks to=
 optimize ASR33 logins to remote computers from terminal concentrators (aka=
 remote login), bulk file transfers between file systems on different time-=
sharing systems, and "sessions" (virtual circuits) that required logins. An=
d then trying to exploit underlying "multicast" by building it into the IP =
layer, because someone thought that TV broadcast would be the dominant appl=
ication.</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size=
: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;paddi=
ng:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">Frank=
ly, to think of "quality" as something that can be "provided" by "the netwo=
rk" misses the entire point of "end-to-end argument in system design". Qual=
ity is not a property defined or created by The Network. If you want to tal=
k about Quality, you need to talk about users - all the users at all times,=
 now and into the future, and that's something you can't do if you don't bo=
ther to include current and future users talking about what they might expe=
ct to experience that they don't experience.</p>=0A<p style=3D"margin:0;pad=
ding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">&nb=
sp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10p=
t; overflow-wrap: break-word;">There was much fighting back in 1976 that ba=
sically involved "network experts" saying that the network was the place to=
 "solve" such issues as quality, so applications could avoid having to solv=
e such issues.</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; fon=
t-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0=
;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;"=
>What some of us managed to do was to argue that you can't "solve" such iss=
ues. All you can do is provide a framework that enables different uses to *=
cooperate* in some way.</p>=0A<p style=3D"margin:0;padding:0;font-family: a=
rial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D=
"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: bre=
ak-word;">Which is why the Internet drops packets rather than queueing them=
, and why diffserv cannot work.</p>=0A<p style=3D"margin:0;padding:0;font-f=
amily: arial; font-size: 10pt; overflow-wrap: break-word;">(I know the latt=
er is conftroversial, but at the moment, ALL of diffserv attempts to talk a=
bout end-to-end applicaiton specific metrics, but never, ever explains what=
 the diffserv control points actually do w.r.t. what the IP layer can actua=
lly control. So it is meaningless - another violation of the so-called end-=
to-end principle).</p>=0A<p style=3D"margin:0;padding:0;font-family: arial;=
 font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"marg=
in:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-wo=
rd;">Networks are about getting packets from here to there, multiplexing th=
e underlying resources. That's it. Quality is a whole different thing. Qual=
ity can be improved by end-to-end approaches, if the underlying network pro=
vides some kind of thing that actually creates a way for end-to-end applica=
tions to affect queueing and routing decisions, and more importantly gettin=
g "telemetry" from the network regarding what is actually going on with the=
 other end-to-end users sharing the infrastructure.</p>=0A<p style=3D"margi=
n:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-wor=
d;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-si=
ze: 10pt; overflow-wrap: break-word;">This conference won't talk about it t=
his way. So don't waste your time.</p>=0A<p style=3D"margin:0;padding:0;fon=
t-family: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A=
<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflo=
w-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-famil=
y: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p styl=
e=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap:=
 break-word;">On Wednesday, June 30, 2021 8:12pm, "Dave Taht" &lt;dave.taht=
@gmail.com&gt; said:<br /><br /></p>=0A<div id=3D"SafeStyles1625187388">=0A=
<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflo=
w-wrap: break-word;">&gt; The program committee members are *amazing*. Perh=
aps, finally, we can<br />&gt; move the bar for the internet's quality metr=
ics past endless, blind<br />&gt; repetitions of speedtest.<br />&gt; <br /=
>&gt; For complete details, please see:<br />&gt; https://www.iab.org/activ=
ities/workshops/network-quality/<br />&gt; <br />&gt; Submissions Due: Mond=
ay 2nd August 2021, midnight AOE (Anywhere On Earth)<br />&gt; Invitations =
Issued by: Monday 16th August 2021<br />&gt; <br />&gt; Workshop Date: This=
 will be a virtual workshop, spread over three days:<br />&gt; <br />&gt; 1=
400-1800 UTC Tue 14th September 2021<br />&gt; 1400-1800 UTC Wed 15th Septe=
mber 2021<br />&gt; 1400-1800 UTC Thu 16th September 2021<br />&gt; <br />&=
gt; Workshop co-chairs: Wes Hardaker, Evgeny Khorov, Omer Shapira<br />&gt;=
 <br />&gt; The Program Committee members:<br />&gt; <br />&gt; Jari Arkko,=
 Olivier Bonaventure, Vint Cerf, Stuart Cheshire, Sam<br />&gt; Crowford, N=
ick Feamster, Jim Gettys, Toke Hoiland-Jorgensen, Geoff<br />&gt; Huston, C=
ullen Jennings, Katarzyna Kosek-Szott, Mirja Kuehlewind,<br />&gt; Jason Li=
vingood, Matt Mathias, Randall Meyer, Kathleen Nichols,<br />&gt; Christoph=
 Paasch, Tommy Pauly, Greg White, Keith Winstein.<br />&gt; <br />&gt; Send=
 Submissions to: network-quality-workshop-pc@iab.org.<br />&gt; <br />&gt; =
Position papers from academia, industry, the open source community and<br /=
>&gt; others that focus on measurements, experiences, observations and<br /=
>&gt; advice for the future are welcome. Papers that reflect experience<br =
/>&gt; based on deployed services are especially welcome. The organizers<br=
 />&gt; understand that specific actions taken by operators are unlikely to=
 be<br />&gt; discussed in detail, so papers discussing general categories =
of<br />&gt; actions and issues without naming specific technologies, produ=
cts, or<br />&gt; other players in the ecosystem are expected. Papers shoul=
d not focus<br />&gt; on specific protocol solutions.<br />&gt; <br />&gt; =
The workshop will be by invitation only. Those wishing to attend<br />&gt; =
should submit a position paper to the address above; it may take the<br />&=
gt; form of an Internet-Draft.<br />&gt; <br />&gt; All inputs submitted an=
d considered relevant will be published on the<br />&gt; workshop website. =
The organisers will decide whom to invite based on<br />&gt; the submission=
s received. Sessions will be organized according to<br />&gt; content, and =
not every accepted submission or invited attendee will<br />&gt; have an op=
portunity to present as the intent is to foster discussion<br />&gt; and no=
t simply to have a sequence of presentations.<br />&gt; <br />&gt; Position=
 papers from those not planning to attend the virtual sessions<br />&gt; th=
emselves are also encouraged. A workshop report will be published<br />&gt;=
 afterwards.<br />&gt; <br />&gt; Overview:<br />&gt; <br />&gt; "We believ=
e that one of the major factors behind this lack of progress<br />&gt; is t=
he popular perception that throughput is the often sole measure of<br />&gt=
; the quality of Internet connectivity. With such narrow focus, people<br /=
>&gt; don=E2=80=99t consider questions such as:<br />&gt; <br />&gt; What i=
s the latency under typical working conditions?<br />&gt; How reliable is t=
he connectivity across longer time periods?<br />&gt; Does the network allo=
w the use of a broad range of protocols?<br />&gt; What services can be run=
 by clients of the network?<br />&gt; What kind of IPv4, NAT or IPv6 connec=
tivity is offered, and are there firewalls?<br />&gt; What security mechani=
sms are available for local services, such as DNS?<br />&gt; To what degree=
 are the privacy, confidentiality, integrity and<br />&gt; authenticity of =
user communications guarded?<br />&gt; <br />&gt; Improving these aspects o=
f network quality will likely depend on<br />&gt; measurement and exposing =
metrics to all involved parties, including to<br />&gt; end users in a mean=
ingful way. Such measurements and exposure of the<br />&gt; right metrics w=
ill allow service providers and network operators to<br />&gt; focus on the=
 aspects that impacts the users=E2=80=99 experience most and at<br />&gt; t=
he same time empowers users to choose the Internet service that will<br />&=
gt; give them the best experience."<br />&gt; <br />&gt; <br />&gt; --<br /=
>&gt; Latest Podcast:<br />&gt; https://www.linkedin.com/feed/update/urn:li=
:activity:6791014284936785920/<br />&gt; <br />&gt; Dave T=C3=A4ht CTO, Tek=
Libre, LLC<br />&gt; _______________________________________________<br />&=
gt; Cerowrt-devel mailing list<br />&gt; Cerowrt-devel@lists.bufferbloat.ne=
t<br />&gt; https://lists.bufferbloat.net/listinfo/cerowrt-devel<br />&gt; =
</p>=0A</div></font>
------=_20210701211649000000_37808--


--===============6937616946753086113==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============6937616946753086113==--

