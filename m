Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC563E8554
	for <lists+cake@lfdr.de>; Tue, 10 Aug 2021 23:33:29 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id E62FD3CB58;
	Tue, 10 Aug 2021 17:33:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1628631206;
	bh=2tVyaHNIHCzmPemjXHLqTuqxz5NCuwfBbEYp3O7tRs0=;
	h=From:To:References:In-Reply-To:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=kxfd8Mh7Bfux+RhNppOeX0kv3dgsexv91E0n2QU3ntfu8+3CYx+M4OmaqQIyXHF1W
	 a78JEAEs5hqVGGn1GK5PVSUwX5s5ix9add3qpnh7B1PpFA3IZUdLacZ41rb18GzjM3
	 QpCGyQkQfizDEh1TncU71hGW91F5eFkn+jbBZjsPDryAn5R/Am3jsusx+qZG4o9p0g
	 ggEhF2nuZUO6GWuRKt7MYkzPST1kHE7iKWtfhVS70Sx1kn5XWCk3+d/OIxMP2qPaej
	 jh9AmrBg3egr3lFiUNXzXTMGh9m2nyy5R1MBVh7SW/79A6hzxuezJMTkDCHuq5oTdq
	 9Vq+TgeE1LQvQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from bosmailout05.eigbox.net (bosmailout05.eigbox.net [66.96.186.5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 2C6403B2A4;
 Tue, 10 Aug 2021 13:56:52 -0400 (EDT)
Received: from bosmailscan10.eigbox.net ([10.20.15.10])
 by bosmailout05.eigbox.net with esmtp (Exim)
 id 1mDVzf-0004y5-NV; Tue, 10 Aug 2021 13:56:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=alum.mit.edu; s=dkim; h=Sender:Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:Cc:To:From:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CdEbYj3BzrqXfBoVkr2Ja0z6I4XCJf0y+Nu3m2itwAY=; b=qzzGp6sHI5cFmn56g+C4XWUyms
 fZXmX1+i9XGmycXWT87q44qBeQWSzkGbr49qm5KaLbfaLF4iRg5BSNAJoC8B2mNOQrDQwMrnOW48G
 wzJ4wMOMPWDNOLY9SsvPOtC0rpBCVvLx9cKUtPrBwUHAX5QWGfHrjk2ruQr7WwSAGLrxVVA6/rzGj
 YnNIoE4BLb08yxBDYN4KbvShNitx1MfsUs2SM4tx+/4RJDnahY9c6lttetEyKWSomdx2+QczySpeo
 pAs+7/SwGWN9l7itS3yiBUYkpLrKFIwxAQjjvZuHnYGXUBjBeICCFmwC+YWDSsyrHKTgbFQKe2hw9
 VNUH+kAA==;
Received: from [10.115.3.34] (helo=bosimpout04)
 by bosmailscan10.eigbox.net with esmtp (Exim)
 id 1mDVzf-0000Xi-Ec; Tue, 10 Aug 2021 13:56:51 -0400
Received: from bosauthsmtp17.yourhostingaccount.com ([10.20.18.17])
 by bosimpout04 with 
 id ftwo250060N5uqq01twr6W; Tue, 10 Aug 2021 13:56:51 -0400
X-Authority-Analysis: v=2.1 cv=RJw9HuS+ c=1 sm=1 tr=0
 a=f4kFLigMKr8AH7rIJ//qJA==:117 a=x+7tlP9+fMpTIVJEmcsKvw==:17
 a=L9H7d07YOLsA:10 a=9cW_t1CCXrUA:10 a=s5jvgZ67dGcA:10 a=MhDmnRu9jo8A:10
 a=Wo7qeYC63mUA:10 a=r77TgQKjGQsHNAKrUKIA:9 a=Q-fNiiVtAAAA:8 a=kurRqvosAAAA:8
 a=Zu4GJTUZAAAA:20 a=uYVGJH5IAAAA:8 a=fQyf-teQbTITjx-0wPgA:9 a=CjuIK1q_8ugA:10
 a=KE_Xhenx_AQA:10 a=SSmOFEACAAAA:8 a=di9ROJzFMXmQyWqxjHcA:9
 a=puiLy-0-qCJzNoe1:21 a=gKO2Hq4RSVkA:10 a=UiCQ7L4-1S4A:10 a=hTZeC7Yk6K0A:10
 a=frz4AuCg-hUA:10 a=0pNmr27YDSQA:10 a=Fp8MccfUoT0GBdDC_Lng:22
 a=kbxRQ_lfPIoQnHsAj2-A:22 a=ZkEWZNUrOYKkpCLSUeX7:22
Received: from c-73-222-32-85.hsd1.ca.comcast.net ([73.222.32.85]:55403
 helo=SRA6) by bosauthsmtp17.eigbox.net with esmtpa (Exim)
 id 1mDVzb-0006c5-Li; Tue, 10 Aug 2021 13:56:48 -0400
From: "Dick Roy" <dickroy@alum.mit.edu>
To: "'Bob McMahon'" <bob.mcmahon@broadcom.com>
References: <CAHb6LvqfRxKU0BW04ypRcPDpCcWymnS6qzb3gneQSbBrAbRhHQ@mail.gmail.com>
 <202108101410.17AEAR4w075939@gndrsh.dnsmgr.net>
 <5AF5551E2A7041168E7071FDA0F6B8EC@SRA6>
 <CAHb6LvpAmUKgsMAoZGrbAvS01DF=yWyJj56ox+FrDM_tEc=0Ng@mail.gmail.com>
In-Reply-To: <CAHb6LvpAmUKgsMAoZGrbAvS01DF=yWyJj56ox+FrDM_tEc=0Ng@mail.gmail.com>
Date: Tue, 10 Aug 2021 10:56:37 -0700
Organization: SRA
Message-ID: <B15C19B9F1C7473089029B4DE06D2725@SRA6>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdeOCiREC1nZa7lXS/OzTdHTG7wUJwAAzx7A
X-MimeOLE: Produced By Microsoft MimeOLE
X-EN-UserInfo: f809475445fb8041985048e338e1a001:931c98230c6409dcc37fa7e93b490c27
X-EN-AuthUser: dickroy@intellicommunications.com
X-EN-OrigIP: 73.222.32.85
X-EN-OrigHost: c-73-222-32-85.hsd1.ca.comcast.net
X-Mailman-Approved-At: Tue, 10 Aug 2021 17:33:25 -0400
Subject: Re: [Cake] [Starlink] [Make-wifi-fast] [Cerowrt-devel] Due Aug 2:
	Internet Quality workshop CFP for the internet architecture board
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
Reply-To: dickroy@alum.mit.edu
Cc: starlink@lists.bufferbloat.net,
 'Make-Wifi-fast' <make-wifi-fast@lists.bufferbloat.net>,
 'Cake List' <cake@lists.bufferbloat.net>,
 'codel' <codel@lists.bufferbloat.net>,
 'cerowrt-devel' <cerowrt-devel@lists.bufferbloat.net>,
 'bloat' <bloat@lists.bufferbloat.net>,
 "'Rodney W. Grimes'" <starlink@gndrsh.dnsmgr.net>
Content-Type: multipart/mixed; boundary="===============6849162040428236792=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

This is a multi-part message in MIME format.

--===============6849162040428236792==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0251_01D78DD6.6A6E72E0"

This is a multi-part message in MIME format.

------=_NextPart_000_0251_01D78DD6.6A6E72E0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

You can approximate the H-matrix as containing only complex numbers or
complex frequency responses as below, however the truth is that in the real
world, in general, the entries in the H-matrix are Green's functions, aka
impulse response functions derivable from Maxwell's equations and all the
surrounding boundary conditions (and yes they are time-varying) which give
the output (at the receiver) due to an input impulse (from the transmitter).
"You bang on the box and see what comes out!"  For "narrowband", nearly
"time-invariant" systems, these complex transfer functions can be
approximated by complex numbers  For non-narrowband, yet still (slowly)
time-varying systems, the H-matrix can be approximated (as shown below) by a
time-invariant transfer (Green's) function whose Fourier transform (aka the
spectrum) can be calculated (and plotted as shown below . although as noted
the phase is missing!)  Each point in the spectral domain is actually a
complex number (amplitude and phase as a function of frequency if you will)
again as noted below.  FWIW, the understanding that the ability to quickly
and accurately obtain estimates of the entries of the H-matrix (aka the
spectral response) under these "almost time-invariant" assumptions is
crucially important to achieving anything near channel capacity is what
makes the choice of an OFDM PHY "optimal" (aka really good . and there is
the issue of "water-pouring", but that's another story for another day).  

 

That said, it is really important to remember that a (relatively) stationary
STA and AP does NOT mean that the channel is time-invariant.  It's not.  The
magnitude of the variations depend on how fast the environment around them
is changing (remember Maxwell's equations and the boundary conditions)!
This really matters in the vehicular (aka transportation) environment.  The
ability of a pedestrian in a cross-walk to connect to an AP in the
Starbuck's on the other side of the street depends on how many cars are in
the vicinity and how fast they are moving!

 

As for using expensive phase-shifters cabled together to make Butler
matrices at $2.5k per pop, I guess I'm in the wrong business:^)))))

 

RR

 

  _____  

From: Bob McMahon [mailto:bob.mcmahon@broadcom.com] 
Sent: Tuesday, August 10, 2021 10:07 AM
To: dickroy@alum.mit.edu
Cc: Rodney W. Grimes; Cake List; Make-Wifi-fast;
starlink@lists.bufferbloat.net; codel; cerowrt-devel; bloat
Subject: Re: [Starlink] [Cake] [Make-wifi-fast] [Cerowrt-devel] Due Aug 2:
Internet Quality workshop CFP for the internet architecture board

 

The slides show that for WiFi every transmission produces a complex
frequency response, aka the h-matrix. This is valid for that one
transmission only.  The slides show an amplitude plot for a 3 radio device
hence the 9 elements per the h-matrix. It's assumed that the WiFi STA/AP is
stationary such that doppler effects aren't a consideration. WiFi isn't a
car trying to connect to a cell tower.  The plot doesn't show the phase
effects but they are included as the output of the channel estimate is a
complex frequency response. Each RX produces the h-matrix ahead of the MAC.
These may not be symmetric in the real world but that's ok as transmission
and reception is one way only, i.e. the treating them as repcripocol and the
matrix as hollows symmetric isn't going to be a "test blocker" as the goal
is to be able to use software and programmable devices to change them in
near real time. The current approach used by many using butler matrices to
produce off-diagonal effects  is woefully inadequate. And we're paying about
$2.5K per each butler.
 
<https://lh3.googleusercontent.com/WqWMFHFPo3ltkxkpoyvgPxgdFxmnZpVvpw0NcCTFh
GiOTjolvKbP4NugcE-vw1Q3vk9Z7R04YA1k3kQMvyiR5RhcHOjbXbsRMfjLBY-RYML2tFxovzMpT
www5UZiu0Xgxzhi8fFru_g> 
Bob

 

On Tue, Aug 10, 2021 at 9:13 AM Dick Roy <dickroy@alum.mit.edu> wrote:

Well, I hesitate to drag this out, however Maxwell's equations and the
invariance of the laws of physics ensure that all path loss matrices are
reciprocal.  What that means is that at any for any given set of fixed
boundary conditions (nothing moving/changing!), the propagation loss between
any two points in the domain is the same in both directions. The
"multipathing" in one direction is the same in the other because the
two-parameter (angle1,angle2) scattering cross sections of all objects
(remember they are fixed here) are independent of the ordering of the
angles.  

Very importantly, path loss is NOT the same as the link loss (aka link
budget) which involves tx power and rx noise figure (and in the case of
smart antennas, there is a link per spatial stream and how those links are
managed/controlled really matters, but let's just keep it simple for this
discussion) and these generally are different on both ends of a link for a
variety of reasons. The other very important issue is that of the
""measurement plane", or "where tx power and rx noise figure are being
measured/referenced to and how well the interface at that plane is
"matched".  We generally assume that the matching is perfect, however it
never is. All of these effects contribute to the link loss which determines
the strength of the signal coming out of the receiver (not the receive
antenna, the receiver) for a given signal strength coming out of the
transmitter (not the transmit antenna, the tx output port).   

In the real world, things change.  Sources and sinks move as do many of the
objects around them.  This creates a time-varying RF environment, and now
the path loss matrix is a function of time and a few others things, so it
matters WHEN something is transmitted, and WHEN it is received, and the two
WHEN's are generally separated by "the speed of light" which is a ft/ns
roughly. As important is the fact that it's no longer really a path loss
matrix containing a single scalar because among other things, the time
varying environment induces change in the transmitted waveform on its way to
the receiver most commonly referred to as the Doppler effect which means
there is a frequency translation/shift for each (multi-)path of which there
are in general an uncountably infinite number because this is a continuous
world in which we live (the space quantization experiment being conducted in
the central US aside:^)). As a consequence of these physical laws, the
entries in the path loss matrix become complex functions of a number of
variables including time. These functions are quite often characterized in
terms of Doppler and delay-spread, terms used to describe in just a few
parameters the amount of "distortion" a complex function causes. 

Hope this helps ... probably a bit more than you really wanted to know as
queuing theorists, but ...

-----Original Message-----
From: Starlink [mailto:starlink-bounces@lists.bufferbloat.net] On Behalf Of
Rodney W. Grimes
Sent: Tuesday, August 10, 2021 7:10 AM
To: Bob McMahon
Cc: Cake List; Make-Wifi-fast; starlink@lists.bufferbloat.net;
codel@lists.bufferbloat.net; cerowrt-devel; bloat
Subject: Re: [Starlink] [Cake] [Make-wifi-fast] [Cerowrt-devel] Due Aug 2:
Internet Quality workshop CFP for the internet architecture board

> The distance matrix defines signal attenuations/loss between pairs.  It's
> straightforward to create a distance matrix that has hidden nodes because
> all "signal  loss" between pairs is defined.  Let's say a 120dB
attenuation
> path will cause a node to be hidden as an example.
> 
>      A    B     C    D
> A   -   35   120   65
> B         -      65   65
> C               -       65
> D                         -
> 
> So in the above, AC are hidden from each other but nobody else is. It does
> assume symmetry between pairs but that's typically true.

That is not correct, symmetry in the RF world, especially wifi, is rare
due to topology issues.  A high transmitter, A,  and a low receiver, B,
has a good path A - > B, but a very weak path B -> A.   Multipathing
is another major issue that causes assymtry.

> 
> The RF device takes these distance matrices as settings and calculates the
> five branch tree values (as demonstrated in the video). There are
> limitations to solutions though but I've found those not to be an issue to
> date. I've been able to produce hidden nodes quite readily. Add the phase
> shifters and spatial stream powers can also be affected, but this isn't
> shown in this simple example.
> 
> Bob
> 
> On Mon, Aug 2, 2021 at 8:12 PM David Lang <david@lang.hm> wrote:
> 
> > I guess it depends on what you are intending to test. If you are not
going
> > to
> > tinker with any of the over-the-air settings (including the number of
> > packets
> > transmitted in one aggregate), the details of what happen over the air
> > don't
> > matter much.
> >
> > But if you are going to be doing any tinkering with what is getting
sent,
> > and
> > you ignore the hidden transmitter type problems, you will create a
> > solution that
> > seems to work really well in the lab and falls on it's face out in the
> > wild
> > where spectrum overload and hidden transmitters are the norm (at least
in
> > urban
> > areas), not rare corner cases.
> >
> > you don't need to include them in every test, but you need to have a way
> > to
> > configure your lab to include them before you consider any
> > settings/algorithm
> > ready to try in the wild.
> >
> > David Lang
> >
> > On Mon, 2 Aug 2021, Bob McMahon wrote:
> >
> > > We find four nodes, a primary BSS and an adjunct one quite good for
lots
> > of
> > > testing.  The six nodes allows for a primary BSS and two adjacent
ones.
> > We
> > > want to minimize complexity to necessary and sufficient.
> > >
> > > The challenge we find is having variability (e.g. montecarlos) that's
> > > reproducible and has relevant information. Basically, the distance
> > matrices
> > > have h-matrices as their elements. Our chips can provide these
> > h-matrices.
> > >
> > > The parts for solid state programmable attenuators and phase shifters
> > > aren't very expensive. A device that supports a five branch tree and
2x2
> > > MIMO seems a very good starting point.
> > >
> > > Bob
> > >
> > > On Mon, Aug 2, 2021 at 4:55 PM Ben Greear <greearb@candelatech.com>
> > wrote:
> > >
> > >> On 8/2/21 4:16 PM, David Lang wrote:
> > >>> If you are going to setup a test environment for wifi, you need to
> > >> include the ability to make a fe cases that only happen with RF, not
> > with
> > >> wired networks and
> > >>> are commonly overlooked
> > >>>
> > >>> 1. station A can hear station B and C but they cannot hear each
other
> > >>> 2. station A can hear station B but station B cannot hear station A
3.
> > >> station A can hear that station B is transmitting, but not with a
strong
> > >> enough signal to
> > >>> decode the signal (yes in theory you can work around interference,
but
> > >> in practice interference is still a real thing)
> > >>>
> > >>> David Lang
> > >>>
> > >>
> > >> To add to this, I think you need lots of different station devices,
> > >> different capabilities (/n, /ac, /ax, etc)
> > >> different numbers of spatial streams, and different distances from
the
> > >> AP.  From download queueing perspective, changing
> > >> the capabilities may be sufficient while keeping all stations at same
> > >> distance.  This assumes you are not
> > >> actually testing the wifi rate-ctrl alg. itself, so different
throughput
> > >> levels for different stations would be enough.
> > >>
> > >> So, a good station emulator setup (and/or pile of real stations) and
a
> > few
> > >> RF chambers and
> > >> programmable attenuators and you can test that setup...
> > >>
> > >>  From upload perspective, I guess same setup would do the job.
> > >> Queuing/fairness might depend a bit more on the
> > >> station devices, emulated or otherwise, but I guess a clever AP could
> > >> enforce fairness in upstream direction
> > >> too by implementing per-sta queues.
> > >>
> > >> Thanks,
> > >> Ben
> > >>
> > >> --
> > >> Ben Greear <greearb@candelatech.com>
> > >> Candela Technologies Inc  http://www.candelatech.com
> > >>
> > >
> > >
> >
> 
> -- 
> This electronic communication and the information and any files
transmitted 
> with it, or attached to it, are confidential and are intended solely for 
> the use of the individual or entity to whom it is addressed and may
contain 
> information that is confidential, legally privileged, protected by privacy

> laws, or otherwise restricted from disclosure to anyone else. If you are 
> not the intended recipient or the person responsible for delivering the 
> e-mail to the intended recipient, you are hereby notified that any use, 
> copying, distributing, dissemination, forwarding, printing, or copying of 
> this e-mail is strictly prohibited. If you received this e-mail in error, 
> please return the e-mail to the sender, delete it from your computer, and 
> destroy any printed copy of it.

[ Charset UTF-8 unsupported, converting... ]
> _______________________________________________
> Starlink mailing list
> Starlink@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/starlink
> 
_______________________________________________
Starlink mailing list
Starlink@lists.bufferbloat.net
https://lists.bufferbloat.net/listinfo/starlink


This electronic communication and the information and any files transmitted
with it, or attached to it, are confidential and are intended solely for the
use of the individual or entity to whom it is addressed and may contain
information that is confidential, legally privileged, protected by privacy
laws, or otherwise restricted from disclosure to anyone else. If you are not
the intended recipient or the person responsible for delivering the e-mail
to the intended recipient, you are hereby notified that any use, copying,
distributing, dissemination, forwarding, printing, or copying of this e-mail
is strictly prohibited. If you received this e-mail in error, please return
the e-mail to the sender, delete it from your computer, and destroy any
printed copy of it.


------=_NextPart_000_0251_01D78DD6.6A6E72E0
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:st1=3D"urn:schemas-microsoft-com:office:smarttags" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii">
<meta name=3DGenerator content=3D"Microsoft Word 11 (filtered medium)">
<!--[if !mso]>
<style>
v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style>
<![endif]--><o:SmartTagType
 namespaceuri=3D"urn:schemas-microsoft-com:office:smarttags" =
name=3D"country-region"/>
<o:SmartTagType =
namespaceuri=3D"urn:schemas-microsoft-com:office:smarttags"
 name=3D"City"/>
<o:SmartTagType =
namespaceuri=3D"urn:schemas-microsoft-com:office:smarttags"
 name=3D"place"/>
<o:SmartTagType =
namespaceuri=3D"urn:schemas-microsoft-com:office:smarttags"
 name=3D"PersonName"/>
<!--[if !mso]>
<style>
st1\:*{behavior:url(#default#ieooui) }
</style>
<![endif]-->
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:"MS Mincho";
	panose-1:2 2 6 9 4 2 5 8 3 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"\@MS Mincho";
	panose-1:0 0 0 0 0 0 0 0 0 0;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman";}
a:link, span.MsoHyperlink
	{color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{color:blue;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-reply;
	font-family:Arial;
	color:navy;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
div.Section1
	{page:Section1;}
-->
</style>

</head>

<body lang=3DEN-US link=3Dblue vlink=3Dblue>

<div class=3DSection1>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'>You can approximate the H-matrix as
containing only complex numbers or complex frequency responses as below,
however the truth is that in the real world, in general, the entries in =
the H-matrix
are Green&#8217;s functions, aka impulse response functions derivable =
from
Maxwell&#8217;s equations and all the surrounding boundary conditions =
(and yes
they are time-varying) which give the output (at the receiver) due to an =
input
impulse (from the transmitter). &nbsp;&#8220;You bang on the box and see =
what
comes out!&#8221;&nbsp; For &#8220;narrowband&#8221;, nearly =
&#8220;time-invariant&#8221;
systems, these complex transfer functions can be approximated by complex
numbers&nbsp; For non-narrowband, yet still (slowly) time-varying =
systems, the
H-matrix can be approximated (as shown below) by a time-invariant =
transfer (Green&#8217;s)
function whose Fourier transform (aka the spectrum) can be calculated =
(and
plotted as shown below &#8230; although as noted the phase is missing!) =
&nbsp;Each
point in the spectral domain is actually a complex number (amplitude and =
phase as
a function of frequency if you will) again as noted below.&nbsp; FWIW, =
the
understanding that the ability to quickly and accurately obtain =
estimates of
the entries of the H-matrix (aka the spectral response) under these =
&#8220;almost
time-invariant&#8221; assumptions is crucially important to achieving =
anything
near channel capacity is what makes the choice of an OFDM PHY =
&#8220;optimal&#8221;
(aka really good &#8230; and there is the issue of =
&#8220;water-pouring&#8221;,
but that&#8217;s another story for another day).&nbsp; =
<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'>That said, it is really important =
to
remember that a (relatively) stationary STA and AP does NOT mean that =
the
channel is time-invariant. &nbsp;It&#8217;s not.&nbsp; The magnitude of =
the
variations depend on how fast the environment around them is changing =
(remember
Maxwell&#8217;s equations and the boundary conditions)! &nbsp;This =
really
matters in the vehicular (aka transportation) environment.&nbsp; The =
ability of
a pedestrian in a cross-walk to connect to an AP in the Starbuck&#8217;s =
on the
other side of the street depends on how many cars are in the vicinity =
and how
fast they are moving!<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'>As for using expensive =
phase-shifters cabled
together to make <st1:City w:st=3D"on"><st1:place =
w:st=3D"on">Butler</st1:place></st1:City>
matrices at $2.5k per pop, I guess I&#8217;m in the wrong =
business:^)))))<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'>RR<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'><o:p>&nbsp;</o:p></span></font></p>

<div>

<div class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><font =
size=3D3
face=3D"Times New Roman"><span style=3D'font-size:12.0pt'>

<hr size=3D3 width=3D"100%" align=3Dcenter tabindex=3D-1>

</span></font></div>

<p class=3DMsoNormal><b><font size=3D2 face=3DTahoma><span =
style=3D'font-size:10.0pt;
font-family:Tahoma;font-weight:bold'>From:</span></font></b><font =
size=3D2
face=3DTahoma><span style=3D'font-size:10.0pt;font-family:Tahoma'> Bob =
McMahon
[mailto:bob.mcmahon@broadcom.com] <br>
<b><span style=3D'font-weight:bold'>Sent:</span></b> Tuesday, August 10, =
2021
10:07 AM<br>
<b><span style=3D'font-weight:bold'>To:</span></b> <st1:PersonName =
w:st=3D"on">dickroy@alum.mit.edu</st1:PersonName><br>
<b><span style=3D'font-weight:bold'>Cc:</span></b> Rodney W. Grimes; =
Cake List;
Make-Wifi-fast; starlink@lists.bufferbloat.net; codel; cerowrt-devel; =
bloat<br>
<b><span style=3D'font-weight:bold'>Subject:</span></b> Re: [Starlink] =
[Cake] [Make-wifi-fast]
[Cerowrt-devel] Due Aug 2: Internet Quality workshop CFP for the =
internet
architecture board</span></font><o:p></o:p></p>

</div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<div>

<p class=3DMsoNormal style=3D'margin-bottom:12.0pt'><font size=3D3
face=3D"Times New Roman"><span style=3D'font-size:12.0pt'>The slides =
show that for
WiFi every transmission produces a complex frequency&nbsp;response, aka =
the
h-matrix. This is valid for that one transmission only.&nbsp; The slides =
show
an amplitude plot for a 3 radio device hence the 9 elements per the =
h-matrix.
It's assumed that the WiFi STA/AP is stationary such that doppler =
effects
aren't a consideration. WiFi isn't a car trying to connect to a cell
tower.&nbsp; The plot doesn't show the phase effects but they are =
included as
the output of the channel estimate is a complex frequency response. Each =
RX
produces the h-matrix ahead of the MAC. These may not be symmetric in =
the real
world but that's ok as transmission&nbsp;and reception is one way only, =
i.e.
the treating them as repcripocol and the matrix as hollows symmetric =
isn't
going to be a &quot;test blocker&quot; as the goal is to be able to use
software and programmable devices to change them in near real time. The =
current
approach used by many using butler matrices to produce
off-diagonal&nbsp;effects&nbsp; is woefully inadequate. And we're paying =
about
$2.5K per each butler.<br>
<span =
id=3Dgmail-docs-internal-guid-c23f4170-7fff-947a-4651-888888f0a88e><img
width=3D1200 height=3D900 id=3D"_x0000_i1025"
src=3D"https://lh3.googleusercontent.com/WqWMFHFPo3ltkxkpoyvgPxgdFxmnZpVv=
pw0NcCTFhGiOTjolvKbP4NugcE-vw1Q3vk9Z7R04YA1k3kQMvyiR5RhcHOjbXbsRMfjLBY-RY=
ML2tFxovzMpTwww5UZiu0Xgxzhi8fFru_g"><br>
</span>Bob<o:p></o:p></span></font></p>

</div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<div>

<div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'>On Tue, Aug 10, 2021 at 9:13 AM Dick <st1:City =
w:st=3D"on"><st1:place
 w:st=3D"on">Roy</st1:place></st1:City> &lt;<a =
href=3D"mailto:dickroy@alum.mit.edu">dickroy@alum.mit.edu</a>&gt;
wrote:<o:p></o:p></span></font></p>

</div>

<blockquote style=3D'border:none;border-left:solid #CCCCCC =
1.0pt;padding:0in 0in 0in 6.0pt;
margin-left:4.8pt;margin-right:0in'>

<p class=3DMsoNormal style=3D'margin-bottom:12.0pt'><font size=3D3
face=3D"Times New Roman"><span style=3D'font-size:12.0pt'>Well, I =
hesitate to drag
this out, however Maxwell's equations and the<br>
invariance of the laws of physics ensure that all path loss matrices =
are<br>
reciprocal.&nbsp; What that means is that at any for any given set of =
fixed<br>
boundary conditions (nothing moving/changing!), the propagation loss =
between<br>
any two points in the domain is the same in both directions. The<br>
&quot;multipathing&quot; in one direction is the same in the other =
because the<br>
two-parameter (angle1,angle2) scattering cross sections of all =
objects<br>
(remember they are fixed here) are independent of the ordering of =
the<br>
angles.&nbsp; <br>
<br>
Very importantly, path loss is NOT the same as the link loss (aka =
link<br>
budget) which involves tx power and rx noise figure (and in the case =
of<br>
smart antennas, there is a link per spatial stream and how those links =
are<br>
managed/controlled really matters, but let's just keep it simple for =
this<br>
discussion) and these generally are different on both ends of a link for =
a<br>
variety of reasons. The other very important issue is that of the<br>
&quot;&quot;measurement plane&quot;, or &quot;where tx power and rx =
noise
figure are being<br>
measured/referenced to and how well the interface at that plane is<br>
&quot;matched&quot;.&nbsp; We generally assume that the matching is =
perfect,
however it<br>
never is. All of these effects contribute to the link loss which =
determines<br>
the strength of the signal coming out of the receiver (not the =
receive<br>
antenna, the receiver) for a given signal strength coming out of the<br>
transmitter (not the transmit antenna, the tx output port).&nbsp; =
&nbsp;<br>
<br>
In the real world, things change.&nbsp; Sources and sinks move as do =
many of
the<br>
objects around them.&nbsp; This creates a time-varying RF environment, =
and now<br>
the path loss matrix is a function of time and a few others things, so =
it<br>
matters WHEN something is transmitted, and WHEN it is received, and the =
two<br>
WHEN's are generally separated by &quot;the speed of light&quot; which =
is a
ft/ns<br>
roughly. As important is the fact that it's no longer really a path =
loss<br>
matrix containing a single scalar because among other things, the =
time<br>
varying environment induces change in the transmitted waveform on its =
way to<br>
the receiver most commonly referred to as the Doppler effect which =
means<br>
there is a frequency translation/shift for each (multi-)path of which =
there<br>
are in general an uncountably infinite number because this is a =
continuous<br>
world in which we live (the space quantization experiment being =
conducted in<br>
the central <st1:country-region w:st=3D"on"><st1:place =
w:st=3D"on">US</st1:place></st1:country-region>
aside:^)). As a consequence of these physical laws, the<br>
entries in the path loss matrix become complex functions of a number =
of<br>
variables including time. These functions are quite often characterized =
in<br>
terms of Doppler and delay-spread, terms used to describe in just a =
few<br>
parameters the amount of &quot;distortion&quot; a complex function =
causes. <br>
<br>
Hope this helps ... probably a bit more than you really wanted to know =
as<br>
queuing theorists, but ...<br>
<br>
-----Original Message-----<br>
From: Starlink [mailto:<a =
href=3D"mailto:starlink-bounces@lists.bufferbloat.net"
target=3D"_blank">starlink-bounces@lists.bufferbloat.net</a>] On Behalf =
Of<br>
Rodney W. Grimes<br>
Sent: Tuesday, August 10, 2021 7:10 AM<br>
To: Bob McMahon<br>
Cc: Cake List; Make-Wifi-fast; <a =
href=3D"mailto:starlink@lists.bufferbloat.net"
target=3D"_blank">starlink@lists.bufferbloat.net</a>;<br>
<a href=3D"mailto:codel@lists.bufferbloat.net" =
target=3D"_blank">codel@lists.bufferbloat.net</a>;
cerowrt-devel; bloat<br>
Subject: Re: [Starlink] [Cake] [Make-wifi-fast] [Cerowrt-devel] Due Aug =
2:<br>
Internet Quality workshop CFP for the internet architecture board<br>
<br>
&gt; The distance matrix defines signal attenuations/loss between =
pairs.&nbsp;
It's<br>
&gt; straightforward to create a distance matrix that has hidden nodes =
because<br>
&gt; all &quot;signal&nbsp; loss&quot; between pairs is defined.&nbsp; =
Let's
say a 120dB<br>
attenuation<br>
&gt; path will cause a node to be hidden as an example.<br>
&gt; <br>
&gt;&nbsp; &nbsp; &nbsp; A&nbsp; &nbsp; B&nbsp; &nbsp; &nbsp;C&nbsp; =
&nbsp; D<br>
&gt; A&nbsp; &nbsp;-&nbsp; &nbsp;35&nbsp; &nbsp;120&nbsp; &nbsp;65<br>
&gt; B&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;-&nbsp; &nbsp; &nbsp; 65&nbsp; =
&nbsp;65<br>
&gt; C&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;-&nbsp; =
&nbsp;
&nbsp; &nbsp;65<br>
&gt; D&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;
&nbsp; &nbsp; &nbsp;-<br>
&gt; <br>
&gt; So in the above, AC are hidden from each other but nobody else is. =
It does<br>
&gt; assume symmetry between pairs but that's typically true.<br>
<br>
That is not correct, symmetry in the RF world, especially wifi, is =
rare<br>
due to topology issues.&nbsp; A high transmitter, A,&nbsp; and a low =
receiver,
B,<br>
has a good path A - &gt; B, but a very weak path B -&gt; A.&nbsp;
&nbsp;Multipathing<br>
is another major issue that causes assymtry.<br>
<br>
&gt; <br>
&gt; The RF device takes these distance matrices as settings and =
calculates the<br>
&gt; five branch tree values (as demonstrated in the video). There =
are<br>
&gt; limitations to solutions though but I've found those not to be an =
issue to<br>
&gt; date. I've been able to produce hidden nodes quite readily. Add the =
phase<br>
&gt; shifters and spatial stream powers can also be affected, but this =
isn't<br>
&gt; shown in this simple example.<br>
&gt; <br>
&gt; Bob<br>
&gt; <br>
&gt; On Mon, Aug 2, 2021 at 8:12 PM David Lang &lt;<a
href=3D"mailto:david@lang.hm" target=3D"_blank">david@lang.hm</a>&gt; =
wrote:<br>
&gt; <br>
&gt; &gt; I guess it depends on what you are intending to test. If you =
are not<br>
going<br>
&gt; &gt; to<br>
&gt; &gt; tinker with any of the over-the-air settings (including the =
number of<br>
&gt; &gt; packets<br>
&gt; &gt; transmitted in one aggregate), the details of what happen over =
the
air<br>
&gt; &gt; don't<br>
&gt; &gt; matter much.<br>
&gt; &gt;<br>
&gt; &gt; But if you are going to be doing any tinkering with what is =
getting<br>
sent,<br>
&gt; &gt; and<br>
&gt; &gt; you ignore the hidden transmitter type problems, you will =
create a<br>
&gt; &gt; solution that<br>
&gt; &gt; seems to work really well in the lab and falls on it's face =
out in
the<br>
&gt; &gt; wild<br>
&gt; &gt; where spectrum overload and hidden transmitters are the norm =
(at
least<br>
in<br>
&gt; &gt; urban<br>
&gt; &gt; areas), not rare corner cases.<br>
&gt; &gt;<br>
&gt; &gt; you don't need to include them in every test, but you need to =
have a
way<br>
&gt; &gt; to<br>
&gt; &gt; configure your lab to include them before you consider any<br>
&gt; &gt; settings/algorithm<br>
&gt; &gt; ready to try in the wild.<br>
&gt; &gt;<br>
&gt; &gt; David Lang<br>
&gt; &gt;<br>
&gt; &gt; On Mon, 2 Aug 2021, Bob McMahon wrote:<br>
&gt; &gt;<br>
&gt; &gt; &gt; We find four nodes, a primary BSS and an adjunct one =
quite good
for<br>
lots<br>
&gt; &gt; of<br>
&gt; &gt; &gt; testing.&nbsp; The six nodes allows for a primary BSS and =
two
adjacent<br>
ones.<br>
&gt; &gt; We<br>
&gt; &gt; &gt; want to minimize complexity to necessary and =
sufficient.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; The challenge we find is having variability (e.g. =
montecarlos)
that's<br>
&gt; &gt; &gt; reproducible and has relevant information. Basically, the
distance<br>
&gt; &gt; matrices<br>
&gt; &gt; &gt; have h-matrices as their elements. Our chips can provide =
these<br>
&gt; &gt; h-matrices.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; The parts for solid state programmable attenuators and =
phase
shifters<br>
&gt; &gt; &gt; aren't very expensive. A device that supports a five =
branch tree
and<br>
2x2<br>
&gt; &gt; &gt; MIMO seems a very good starting point.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Bob<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; On Mon, Aug 2, 2021 at 4:55 PM Ben Greear &lt;<a
href=3D"mailto:greearb@candelatech.com" =
target=3D"_blank">greearb@candelatech.com</a>&gt;<br>
&gt; &gt; wrote:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;&gt; On 8/2/21 4:16 PM, David Lang wrote:<br>
&gt; &gt; &gt;&gt;&gt; If you are going to setup a test environment for =
wifi,
you need to<br>
&gt; &gt; &gt;&gt; include the ability to make a fe cases that only =
happen with
RF, not<br>
&gt; &gt; with<br>
&gt; &gt; &gt;&gt; wired networks and<br>
&gt; &gt; &gt;&gt;&gt; are commonly overlooked<br>
&gt; &gt; &gt;&gt;&gt;<br>
&gt; &gt; &gt;&gt;&gt; 1. station A can hear station B and C but they =
cannot
hear each<br>
other<br>
&gt; &gt; &gt;&gt;&gt; 2. station A can hear station B but station B =
cannot
hear station A<br>
3.<br>
&gt; &gt; &gt;&gt; station A can hear that station B is transmitting, =
but not
with a<br>
strong<br>
&gt; &gt; &gt;&gt; enough signal to<br>
&gt; &gt; &gt;&gt;&gt; decode the signal (yes in theory you can work =
around
interference,<br>
but<br>
&gt; &gt; &gt;&gt; in practice interference is still a real thing)<br>
&gt; &gt; &gt;&gt;&gt;<br>
&gt; &gt; &gt;&gt;&gt; David Lang<br>
&gt; &gt; &gt;&gt;&gt;<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; To add to this, I think you need lots of different =
station
devices,<br>
&gt; &gt; &gt;&gt; different capabilities (/n, /ac, /ax, etc)<br>
&gt; &gt; &gt;&gt; different numbers of spatial streams, and different
distances from<br>
the<br>
&gt; &gt; &gt;&gt; AP.&nbsp; From download queueing perspective, =
changing<br>
&gt; &gt; &gt;&gt; the capabilities may be sufficient while keeping all
stations at same<br>
&gt; &gt; &gt;&gt; distance.&nbsp; This assumes you are not<br>
&gt; &gt; &gt;&gt; actually testing the wifi rate-ctrl alg. itself, so
different<br>
throughput<br>
&gt; &gt; &gt;&gt; levels for different stations would be enough.<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; So, a good station emulator setup (and/or pile of =
real
stations) and<br>
a<br>
&gt; &gt; few<br>
&gt; &gt; &gt;&gt; RF chambers and<br>
&gt; &gt; &gt;&gt; programmable attenuators and you can test that =
setup...<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt;&nbsp; From upload perspective, I guess same setup =
would do
the job.<br>
&gt; &gt; &gt;&gt; Queuing/fairness might depend a bit more on the<br>
&gt; &gt; &gt;&gt; station devices, emulated or otherwise, but I guess a =
clever
AP could<br>
&gt; &gt; &gt;&gt; enforce fairness in upstream direction<br>
&gt; &gt; &gt;&gt; too by implementing per-sta queues.<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; Thanks,<br>
&gt; &gt; &gt;&gt; Ben<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; --<br>
&gt; &gt; &gt;&gt; Ben Greear &lt;<a =
href=3D"mailto:greearb@candelatech.com"
target=3D"_blank">greearb@candelatech.com</a>&gt;<br>
&gt; &gt; &gt;&gt; Candela Technologies Inc&nbsp; <a
href=3D"http://www.candelatech.com" =
target=3D"_blank">http://www.candelatech.com</a><br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt;<br>
&gt; <br>
&gt; -- <br>
&gt; This electronic communication and the information and any files<br>
transmitted <br>
&gt; with it, or attached to it, are confidential and are intended =
solely for <br>
&gt; the use of the individual or entity to whom it is addressed and =
may<br>
contain <br>
&gt; information that is confidential, legally privileged, protected by =
privacy<br>
<br>
&gt; laws, or otherwise restricted from disclosure to anyone else. If =
you are <br>
&gt; not the intended recipient or the person responsible for delivering =
the <br>
&gt; e-mail to the intended recipient, you are hereby notified that any =
use, <br>
&gt; copying, distributing, dissemination, forwarding, printing, or =
copying of <br>
&gt; this e-mail is strictly prohibited. If you received this e-mail in =
error, <br>
&gt; please return the e-mail to the sender, delete it from your =
computer, and <br>
&gt; destroy any printed copy of it.<br>
<br>
[ Charset UTF-8 unsupported, converting... ]<br>
&gt; _______________________________________________<br>
&gt; Starlink mailing list<br>
&gt; <a href=3D"mailto:Starlink@lists.bufferbloat.net" =
target=3D"_blank">Starlink@lists.bufferbloat.net</a><br>
&gt; <a href=3D"https://lists.bufferbloat.net/listinfo/starlink" =
target=3D"_blank">https://lists.bufferbloat.net/listinfo/starlink</a><br>=

&gt; <br>
_______________________________________________<br>
Starlink mailing list<br>
<a href=3D"mailto:Starlink@lists.bufferbloat.net" =
target=3D"_blank">Starlink@lists.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/starlink" =
target=3D"_blank">https://lists.bufferbloat.net/listinfo/starlink</a><o:p=
></o:p></span></font></p>

</blockquote>

</div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'><br>
</span></font><font size=3D2><span =
style=3D'font-size:10.0pt;background:white'>This
electronic communication and the information and any files transmitted =
with it,
or attached to it, are confidential and are intended solely for the use =
of the
individual or entity to whom it is addressed and may contain information =
that
is confidential, legally privileged, protected by privacy laws, or =
otherwise
restricted from disclosure to anyone else. If you are not the intended
recipient or the person responsible for delivering the e-mail to the =
intended
recipient, you are hereby notified that any use, copying, distributing,
dissemination, forwarding, printing, or copying of this e-mail is =
strictly
prohibited. If you received this e-mail in error, please return the =
e-mail to
the sender, delete it from your computer, and destroy any printed copy =
of it.</span></font><o:p></o:p></p>

</div>

</body>

</html>

------=_NextPart_000_0251_01D78DD6.6A6E72E0--


--===============6849162040428236792==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============6849162040428236792==--

