Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B950980BF
	for <lists+cake@lfdr.de>; Wed, 21 Aug 2019 18:56:36 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 236283CB38;
	Wed, 21 Aug 2019 12:56:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566406595;
	bh=YY7ACjFnGkE4jeaydT5x7SywotTTwfLblv63J9Im6YM=;
	h=From:References:To:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From;
	b=hB3EyVgvW3hs88zP+uQYY4r8GX0bEfK8EAXYYhDxmZGUZicDyXSFTnO6RMbpIXN6Y
	 GkAluiQ5CuWqi70BaPyPn63VzjMogA8qJ2H/aOZ3czxCrqVaZnKGd24JIpPkH1hBDR
	 xYHUcbuvjcAnKyO7by9ulbj70/WpXG1mPjVJJ/GoO0ivR081wT+Q/OoMD2aNfK2/CQ
	 mkKLYHzbLlM6gmteFC4QnD9Gj+2SilHtnweyLAEUSmcauiTSYDSZKO9BqQJmPKCZLO
	 GRE0gEbN9dQoRbK08XD5LBINb8yWIuev7CsHkdGeah/HYuW2ZrX+rl4AQEmlDwJ54b
	 1FmzBhkQSv59w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 68D043CB35
 for <cake@lists.bufferbloat.net>; Wed, 21 Aug 2019 12:56:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566406592;
 bh=n5jHISeShBX3ogoSPjnwGXspzEWtxGd1jP/QVuFIW70=;
 h=X-UI-Sender-Class:From:Subject:References:To:Date;
 b=Qy5fChlcmY6CDIB9eNbO+6Ca4ze8LMPX+uoklqBdPtrI3j2oMU6u1F6Sy4Ph1qM7G
 q4UR1IdNUiSmwro0fdippehkHiNYVkGEsbWIrV2BYYSUbOjiGP2VWn1M6fdp3XxZbI
 MoR80DfVRLZVJNxao1FN7oM741fNyA7d27uBBlyE=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from hms-beagle2.lan ([77.180.203.161]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1N3KPq-1iRSew04SA-010N3u for
 <cake@lists.bufferbloat.net>; Wed, 21 Aug 2019 18:56:32 +0200
From: Sebastian Moeller <moeller0@gmx.de>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Message-Id: <90B2ABE1-F5D5-4D70-A08E-964BD1118E35@gmx.de>
References: <044B06C0-EBE5-44D3-85BA-E1F33B05CFFE@gmx.de>
To: "cake@lists.bufferbloat.net >> Cake List" <cake@lists.bufferbloat.net>
Date: Wed, 21 Aug 2019 18:56:31 +0200
X-Mailer: Apple Mail (2.3445.104.11)
X-Provags-ID: V03:K1:KGnt00dxAoT1PC39KI46YpDXFOFTFN3kvZSYUd9ZGURMlYTxR/M
 /DLLJhatU8Lbz3oMpSeHdxN0DDrNXE0DndRHHNEHe5s6TiuCPL3XT/x7gS2CnEfLuvlk7a6
 u4GP0PM8fITxwAoODgaEpWd+VQ4eNglgaz2yPCdPQIE2+trzS4NQrdRRmmMa/cqbucBeyHv
 QlebDsFUkjiP52L1qYheQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:GlWbt9nh96Y=:3ow5MmLqrq6rcwWH/kL9sO
 r0cy0i5EVHXZgQM1WFp03rT7ZcXYpOatPet2GJV9IFBprMVAU1hxOQygiklqfRdZY574iWV5c
 ly+c/q66QZFgOywbUFrpU9N8muBOKxGDom4QioGm/JT3YaVviImazJBRF2n/s3cCSSeMS1mPQ
 S0b8lvdqNjNH2uOH+ZSslNPpHaxvgklWnyuSKk/hiMqsDigFUaVuBfssEulcp9xOnBqOzCFsL
 Iabih3hUWIAljseRX+Sqql002yYFSYtxFVztLd4tZDL3sxkcdzUHkVhg3oZ3OuvTMbJ4bWVOO
 2IF1qgkYRNmffGmpstzxUuHgMbfJlY/U4VVWlNdxsmW1phH1KMDBg+k9nsgIAOaiDYfmxSTDY
 HcxP9JmOlrozncwoD7BqHKZA10lQLlXV9BhDecsIc/bLuFVrCV+LaxWURSt7iDXNJA0fHgs9F
 G5YgybmKFJLocrUsZYc0lG3B6r9IUv/QYQoHtFyLhaL1UCew/wAEVguDh0l8824HPqLEAxJXY
 GJ6JhxYaclgpi4kmi2t2rRljZ3kxLJP8P9vmlmNojfUAXXOHlmdUkdgWwbz5T+oP6zqzWHVeh
 tbAtG+DHLFx5KunViTOYTaewspCxtYokcnoHNYB2OjDbB1CsUmUBPAVTw5kPCK+4+dFvX0FJq
 rmuX/DSxehITSnh1d6IBv6C4qAGHJnyXnS9FwpQ9VSaMnZzk+pKHwjtRIoYTjbF73wynLSGTS
 YQzLnNhy6yjE46zEKl1gErPWHUOys8PqFItWwSFaQLMFIAcJ7OnqdHr+/rIsWgjqMGSh9xZy1
 o5JwKvNtbGC9IRubVTntZw37kqlqA5XbPnTYTiJ0xeXgaMq5O9zwvK/W9eajJlj+IXDHME+St
 +k28HRw54KfefHM+wAs9CcZC9Mel44u1NBP5GY0URAJZFm5TY0sfXEnzfQBnW9Q2MpEQLnLUC
 Sjj5YwFYY4u6PW8eXiAcBXkvg309+dbmmvVNE1AJ0x9bfbEbpCVT7bGcxZcleigK1i2OQaxNN
 D8VBs3U6DZaXzmBwsduNpeUZLoJfg249FZ7LGcTnNiR1RX02YqU6rvUpv4zZ89JD1uLXcEDk7
 qKfF8nuL2olOe9vJpWH3yp3kJQ5KVxHfIWCqk6YS4Pd35KeyBamxI05bgk1jFSUvdxF3oGfO3
 OrJ84=
Subject: [Cake] Fwd:  cake in dd-wrt
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
Content-Type: multipart/mixed; boundary="===============7803666751695809527=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>


--===============7803666751695809527==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_3693D900-81A0-4E8B-96F3-97B953B3DCDC"


--Apple-Mail=_3693D900-81A0-4E8B-96F3-97B953B3DCDC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


This went private by accident...


> On Aug 21, 2019, at 14:04, Sebastian Gottschall =
<s.gottschall@newmedia-net.de> wrote:
>=20
>=20
> Am 21.08.2019 um 13:27 schrieb Sebastian Moeller:
>>=20
>>> On Aug 21, 2019, at 13:19, Sebastian Gottschall =
<s.gottschall@newmedia-net.de> wrote:
>>>=20
>>>=20
>>>> 	Nah, barely good enough, breitbandmessung.de might be suited =
(they have access control to not overwhelm their test servers), but =
other Speedtests are notoriously inaccurate* (I am looking at you =
Ookla...) and occasionally report "measured" goodput in excess over the =
actual goddput achivable over the given gross access rate.
>>>> 	IMHO the real challenge is that to set our shaper correctly we =
need both information about the gross rate of the link (which can bei =
either physically bound, by say a dsl-link's sync-rates, or in softwar, =
say in a BRAS/BNG-level traffic shaper) and of the worst applicable =
overhead between user and ISP (which again might be a physical link =
property or might come from the configuration of the ISPs traffic =
shaper). Most ISP will giver very little information about the precise =
value of any of the two. So we need to solve for two unkowns (per =
direction, even though per-packet-overhead likely is going to be =
identical for both directions), making the whole endeavor way more =
complicated than it should be. If we would know at least one of the =
values precisely, gross-limit-rates or per-packet-overhead, we could =
"simply" try different values fr the other and measure the resulting =
bufferbloat, plotting the bloat versus the variable should show a more =
or less step-like increase once we exceed the parameter's true value. =
But I digress, we do not know any of the two...
>>>>=20
>>>>=20
>>>>=20
>>>> *) I guess they are precise and accurate enough for their intended =
use-case, but they are somewhat problematic for precise measurements of =
real maximum goodput.
>>> anotherway is using a adaptive algorithm. so changing values in =
binary searching tree form to find the best matching value. so some sort =
of calibration phase
>> 	Not a bad idea, but IMHO also problematic with our two unknowns, =
if the overhead is set to low, we can, for the typical close to full =
MTU1500 sized packets, make up for that by setting the shaper-rate a bit =
lower, and conversely if the overhead is set to high we can adapt by =
setting the shaper gross-rate a bit higher. But that only works as long =
as we are talking large packets. Once a link carries a sufficient number =
of small packets our adjustments are getting worse and worse and =
bufferbloat begins to raise its ugly head again... So any adaptive =
method would need to probe with packets of differing sizes. I guess I am =
making a mountain out of a mole-hill, but empirically deducing these two =
numbers (or four if we count up- and downstream separately) seems much =
harder than it should be ;)
> if course the real mtu size must be detected first. but that isnt a =
big deal to find out where the fragmentation limit is

	Well, that by itself, while important to know, does not help =
much. The issue I see is if you find a combination of shaper-rate and =
accounted-overhead that works for saturating the link at a given =
packetsize without causing bufferbloat, these settings are not =
guaranteed to actually work just as well for smaller packets. You =
basically need to find a combination of rate and overhead that keep =
bufferbloat under control both for small and large packets (or better =
independent of packetsize) without sacrificing (too much) bandwidth. The =
math is not terribly tricky, but it helps to put things into formulas.

So, let me illustrate conceptually one possible way to tackle this issue =
that with some silly calculations:

	[1] GrossRate *  (PayloadSize) / (PayloadSize  + =
PerPacketOverheads) =3D Goodput

It is obvious that Goodput for a fixed GrossRate now is a function of =
PayloadSize, approaching GrossRate if=20
PayloadSize >> PerPacketOverheads
and approaching  0 if=20
PayloadSize << PerPacketOverheads
(well there is a lower limit below which measuring goodput becomes =
futile, being 1 Byte)
Conversely, this dependence of Goodput on payload size is the reason why =
no sane ISP actually promises/guarantees unqualified Goodput and ISP =
shapers mostly work with a fixed GrossRate.

with PayloadSize depending on PacketSize:

	[2] PayloadSize =3D  PacketSize - PayLoadOverhead

(MTU sets an upper limit for PacketSize, but packets can be smaller) and=20=


	[3] PerPacketOverheads =3D PayloadOverhead + "TransportOverhead"

expressed as a formula for GrossRate we get

	[4] GrossRate =3D  Goodput / ((PayloadSize) / (PayloadSize  + =
PerPacketOverheads)) =3D Goodput *  ((PayloadSize  + PerPacketOverheads) =
/ (PayloadSize))=20

Now since the real GrossRate and PerPacketOverheads are constants they =
will not depend on the payload size (but goodput will):

	[5] Goodput(small) *  ((PayloadSize(small)  + =
PerPacketOverheads) / (PayloadSize(small))) =3D  Goodput(big) *  =
((PayloadSize(big)  + PerPacketOverheads) / (PayloadSize(big)))=20

with small < big <=3D MTU, now PayloadSize is known (or can be easily =
deduced by a packet capture), Goodput(small) and Goodput(big) can be =
empirically measured, that in turn allows us to calculate =
PerPacketOverheads, and from that the "TransportOverhead" that we =
actually after...

	[6] PerPacketOverheads =3D ((Goodput(big) - Goodput(small)) * =
(PayloadSize(small) * PayloadSize(big))) / ((Goodput(small) * =
PayloadSize(big)) - ( Goodput(big) * PayloadSize(small)))


and armed with that knowledge any side of [5] will give us GrossRate.

All well and dandy, the issue is that this really needs precise Goodput =
measurements that really veridically measure the capacity of the link.


Let's just play with a few real numbers to get a  handle on the =
permissible measurement error (and I am going for simple Gb-ethernet =
TCP/IPv4 data here):

big: "MTU1500"
Goodput(big): 1000 * (1500 - 20 - 20) / (1500 + 38) =3D 949.284785436
PayloadSize(big) =3D 1500 - 20 - 20 =3D 1460
PerPacketOverheads =3D 20 + 20 + 38 =3D 78

small: "MTU150"
Goodput(small): 1000 * (150 - 20 - 20) / (150 + 38) =3D 585.106382979
PayloadSize(small) =3D 150 - 20 - 20 =3D 110

If we put these numbers back into [5] things just work
585.106382979 *  ((110  + 78) / (110)) =3D 1000 =3D 949.284785436 *  =
((1460  + 78) / (1460))

Now plug these into [6] gives:
PerPacketOverheads =3D ((949.284785436 - 585.106382979) * (110 * 1460)) =
/ ((585.106382979 * 1460) - ( 949.284785436 * 110)) =3D 78

Let's just reduce the Goodput for the big packetsize by 1% from the =
theoretical value (and if speedtests were reliably correct to 1% I would =
be amazed)
PerPacketOverheads =3D (((949.284785436 * 0.99) - (585.106382979 * 1)) * =
(110 * 1460)) / (((585.106382979 * 1) * 1460) - ((949.284785436 * 0.99) =
* 110)) =3D 75.8611711098 ~ 76

As a saving grace, if both speedtests suffer equal "underreporting", =
things are just fine again.
PerPacketOverheads =3D (((949.284785436 * 0.5) - (585.106382979 * 0.5)) =
* (110 * 1460)) / (((585.106382979 * 0.5) * 1460) - ((949.284785436 * =
0.5) * 110)) =3D 78


Mmmh, that is actually better than I realized. In theory we can now use =
any speedtest we want together with MSS clamping to measure goodput at =
our desired payloadsizes and actually have a fighting chance of this =
getting somewhere... This probably could also be improved by measuring =
at more than just 2 paketsizes...
Time to move this from the drawing board to the real world... (were =
Linux just had a recommendation to increase the minimum allowed MSS =
sizes to work around remotely trigger-able resource exhaustions, but the =
above formula in theory)


In theory the above approach should not care about the delta in =
packetsize between the two probes:
small: "MTU1499"
Goodput(small): 1000 * (1499 - 20 - 20) / (1499 + 38) =3D 949.2517892
PayloadSize(small) =3D 1499 - 20 - 20 =3D 1459
PerPacketOverheads =3D (((949.284785436 * 1) - (949.2517892 * 1)) * =
(1459 * 1460)) / (((949.2517892 * 1) * 1460) - ((949.284785436 * 1) * =
1459)) =3D 78.0000002717

But again, time to test this in the real world again.

>>=20
>>=20
>>=20
>> Best Regards
>> 	Sebastian
>>=20
>>=20
>>>>=20
>>>>>> Best Regards
>>>>>> 	Sebastian
>>>>>>=20
>>>>>>=20
>>>>>>> Sebastian


--Apple-Mail=_3693D900-81A0-4E8B-96F3-97B953B3DCDC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D""><br =
class=3D""><div><div class=3D"">This went private by =
accident...</div><div class=3D""><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><br style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><blockquote type=3D"cite" =
style=3D"font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D"">On Aug 21, 2019, at 14:04, Sebastian =
Gottschall &lt;<a href=3D"mailto:s.gottschall@newmedia-net.de" =
class=3D"">s.gottschall@newmedia-net.de</a>&gt; wrote:<br class=3D""><br =
class=3D""><br class=3D"">Am 21.08.2019 um 13:27 schrieb Sebastian =
Moeller:<br class=3D""><blockquote type=3D"cite" class=3D""><br =
class=3D""><blockquote type=3D"cite" class=3D"">On Aug 21, 2019, at =
13:19, Sebastian Gottschall &lt;<a =
href=3D"mailto:s.gottschall@newmedia-net.de" =
class=3D"">s.gottschall@newmedia-net.de</a>&gt; wrote:<br class=3D""><br =
class=3D""><br class=3D""><blockquote type=3D"cite" class=3D""><span =
class=3D"Apple-tab-span" style=3D"white-space: pre;">	</span>Nah, =
barely good enough, <a href=3D"http://breitbandmessung.de" =
class=3D"">breitbandmessung.de</a> might be suited (they have access =
control to not overwhelm their test servers), but other Speedtests are =
notoriously inaccurate* (I am looking at you Ookla...) and occasionally =
report "measured" goodput in excess over the actual goddput achivable =
over the given gross access rate.<br class=3D""><span =
class=3D"Apple-tab-span" style=3D"white-space: pre;">	</span>IMHO the =
real challenge is that to set our shaper correctly we need both =
information about the gross rate of the link (which can bei either =
physically bound, by say a dsl-link's sync-rates, or in softwar, say in =
a BRAS/BNG-level traffic shaper) and of the worst applicable overhead =
between user and ISP (which again might be a physical link property or =
might come from the configuration of the ISPs traffic shaper). Most ISP =
will giver very little information about the precise value of any of the =
two. So we need to solve for two unkowns (per direction, even though =
per-packet-overhead likely is going to be identical for both =
directions), making the whole endeavor way more complicated than it =
should be. If we would know at least one of the values precisely, =
gross-limit-rates or per-packet-overhead, we could "simply" try =
different values fr the other and measure the resulting bufferbloat, =
plotting the bloat versus the variable should show a more or less =
step-like increase once we exceed the parameter's true value. But I =
digress, we do not know any of the two...<br class=3D""><br class=3D""><br=
 class=3D""><br class=3D"">*) I guess they are precise and accurate =
enough for their intended use-case, but they are somewhat problematic =
for precise measurements of real maximum goodput.<br =
class=3D""></blockquote>anotherway is using a adaptive algorithm. so =
changing values in binary searching tree form to find the best matching =
value. so some sort of calibration phase<br class=3D""></blockquote><span =
class=3D"Apple-tab-span" style=3D"white-space: pre;">	</span>Not a bad =
idea, but IMHO also problematic with our two unknowns, if the overhead =
is set to low, we can, for the typical close to full MTU1500 sized =
packets, make up for that by setting the shaper-rate a bit lower, and =
conversely if the overhead is set to high we can adapt by setting the =
shaper gross-rate a bit higher. But that only works as long as we are =
talking large packets. Once a link carries a sufficient number of small =
packets our adjustments are getting worse and worse and bufferbloat =
begins to raise its ugly head again... So any adaptive method would need =
to probe with packets of differing sizes. I guess I am making a mountain =
out of a mole-hill, but empirically deducing these two numbers (or four =
if we count up- and downstream separately) seems much harder than it =
should be ;)<br class=3D""></blockquote>if course the real mtu size must =
be detected first. but that isnt a big deal to find out where the =
fragmentation limit is<br class=3D""></blockquote><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
class=3D"Apple-tab-span" style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
pre; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;">	</span><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">Well, that by =
itself, while important to know, does not help much. The issue I see is =
if you find a combination of shaper-rate and accounted-overhead that =
works for saturating the link at a given packetsize without causing =
bufferbloat, these settings are not guaranteed to actually work just as =
well for smaller packets. You basically need to find a combination of =
rate and overhead that keep bufferbloat under control both for small and =
large packets (or better independent of packetsize) without sacrificing =
(too much) bandwidth. The math is not terribly tricky, but it helps to =
put things into formulas.</span><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><br style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">So, let me illustrate conceptually one possible way to tackle =
this issue that with some silly calculations:</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
class=3D"Apple-tab-span" style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
pre; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;">	</span><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">[1] GrossRate =
* &nbsp;(PayloadSize) / (PayloadSize &nbsp;+ PerPacketOverheads) =3D =
Goodput</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">It is obvious =
that Goodput for a fixed GrossRate now is a function of PayloadSize, =
approaching GrossRate if<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">PayloadSize &gt;&gt; =
PerPacketOverheads</span><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">and approaching &nbsp;0 if<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">PayloadSize &lt;&lt; =
PerPacketOverheads</span><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">(well there is a lower limit below which measuring goodput =
becomes futile, being 1 Byte)</span><br style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">Conversely, this dependence of Goodput on payload size is the =
reason why no sane ISP actually promises/guarantees unqualified Goodput =
and ISP shapers mostly work with a fixed GrossRate.</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">with PayloadSize depending on =
PacketSize:</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span class=3D"Apple-tab-span" style=3D"caret-color: =
rgb(0, 0, 0); font-family: Helvetica; font-size: 14px; font-style: =
normal; font-variant-caps: normal; font-weight: normal; letter-spacing: =
normal; text-align: start; text-indent: 0px; text-transform: none; =
white-space: pre; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;">	</span><span style=3D"caret-color: =
rgb(0, 0, 0); font-family: Helvetica; font-size: 14px; font-style: =
normal; font-variant-caps: normal; font-weight: normal; letter-spacing: =
normal; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">[2] PayloadSize =3D &nbsp;PacketSize - =
PayLoadOverhead</span><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><br style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">(MTU sets an upper limit for PacketSize, but packets can be =
smaller) and<span class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
class=3D"Apple-tab-span" style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
pre; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;">	</span><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">[3] =
PerPacketOverheads =3D PayloadOverhead + "TransportOverhead"</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">expressed as a formula for =
GrossRate we get</span><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><br style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span class=3D"Apple-tab-span" =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: pre; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;">	=
</span><span style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; =
font-size: 14px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">[4] GrossRate =
=3D &nbsp;Goodput / ((PayloadSize) / (PayloadSize &nbsp;+ =
PerPacketOverheads)) =3D Goodput * &nbsp;((PayloadSize &nbsp;+ =
PerPacketOverheads) / (PayloadSize))<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">Now since the real GrossRate and =
PerPacketOverheads are constants they will not depend on the payload =
size (but goodput will):</span><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><br style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span class=3D"Apple-tab-span" =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: pre; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;">	=
</span><span style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; =
font-size: 14px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">[5] =
Goodput(small) * &nbsp;((PayloadSize(small) &nbsp;+ PerPacketOverheads) =
/ (PayloadSize(small))) =3D &nbsp;Goodput(big) * =
&nbsp;((PayloadSize(big) &nbsp;+ PerPacketOverheads) / =
(PayloadSize(big)))<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">with small &lt; big &lt;=3D MTU, =
now PayloadSize is known (or can be easily deduced by a packet capture), =
Goodput(small) and Goodput(big) can be empirically measured, that in =
turn allows us to calculate PerPacketOverheads, and from that the =
"TransportOverhead" that we actually after...</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
class=3D"Apple-tab-span" style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
pre; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;">	</span><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">[6] =
PerPacketOverheads =3D ((Goodput(big) - Goodput(small)) * =
(PayloadSize(small) * PayloadSize(big))) / ((Goodput(small) * =
PayloadSize(big)) - ( Goodput(big) * PayloadSize(small)))</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">and armed with that knowledge =
any side of [5] will give us GrossRate.</span><br style=3D"caret-color: =
rgb(0, 0, 0); font-family: Helvetica; font-size: 14px; font-style: =
normal; font-variant-caps: normal; font-weight: normal; letter-spacing: =
normal; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><br style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">All well and dandy, the issue is that this really needs =
precise Goodput measurements that really veridically measure the =
capacity of the link.</span><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><br style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><br style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">Let's just play with a few real numbers to get a &nbsp;handle =
on the permissible measurement error (and I am going for simple =
Gb-ethernet TCP/IPv4 data here):</span><br style=3D"caret-color: rgb(0, =
0, 0); font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><br style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">big: "MTU1500"</span><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">Goodput(big): 1000 * (1500 - 20 - 20) / (1500 + 38) =3D =
949.284785436</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" =
class=3D"">PayloadSize(big) =3D 1500 - 20 - 20 =3D 1460</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">PerPacketOverheads =3D 20 + 20 + =
38 =3D 78</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">small: =
"MTU150"</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">Goodput(small):=
 1000 * (150 - 20 - 20) / (150 + 38) =3D 585.106382979</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">PayloadSize(small) =3D 150 - 20 =
- 20 =3D 110</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">If we put =
these numbers back into [5] things just work</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">585.106382979 * &nbsp;((110 =
&nbsp;+ 78) / (110)) =3D 1000 =3D 949.284785436 * &nbsp;((1460 &nbsp;+ =
78) / (1460))</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">Now plug =
these into [6] gives:</span><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">PerPacketOverheads =3D ((949.284785436 - 585.106382979) * =
(110 * 1460)) / ((585.106382979 * 1460) - ( 949.284785436 * 110)) =3D =
78</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; =
font-size: 14px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">Let's just =
reduce the Goodput for the big packetsize by 1% from the theoretical =
value (and if speedtests were reliably correct to 1% I would be =
amazed)</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" =
class=3D"">PerPacketOverheads =3D (((949.284785436 * 0.99) - =
(585.106382979 * 1)) * (110 * 1460)) / (((585.106382979 * 1) * 1460) - =
((949.284785436 * 0.99) * 110)) =3D 75.8611711098 ~ 76</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">As a saving grace, if both =
speedtests suffer equal "underreporting", things are just fine =
again.</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" =
class=3D"">PerPacketOverheads =3D (((949.284785436 * 0.5) - =
(585.106382979 * 0.5)) * (110 * 1460)) / (((585.106382979 * 0.5) * 1460) =
- ((949.284785436 * 0.5) * 110)) =3D 78</span><br style=3D"caret-color: =
rgb(0, 0, 0); font-family: Helvetica; font-size: 14px; font-style: =
normal; font-variant-caps: normal; font-weight: normal; letter-spacing: =
normal; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><br style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><br style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">Mmmh, that is actually better than I realized. In theory we =
can now use any speedtest we want together with MSS clamping to measure =
goodput at our desired payloadsizes and actually have a fighting chance =
of this getting somewhere... This probably could also be improved by =
measuring at more than just 2 paketsizes...</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">Time to move this from the =
drawing board to the real world... (were Linux just had a recommendation =
to increase the minimum allowed MSS sizes to work around remotely =
trigger-able resource exhaustions, but the above formula in =
theory)</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">In theory the =
above approach should not care about the delta in packetsize between the =
two probes:</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">small: =
"MTU1499"</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">Goodput(small):=
 1000 * (1499 - 20 - 20) / (1499 + 38) =3D 949.2517892</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">PayloadSize(small) =3D 1499 - 20 =
- 20 =3D 1459</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" =
class=3D"">PerPacketOverheads =3D (((949.284785436 * 1) - (949.2517892 * =
1)) * (1459 * 1460)) / (((949.2517892 * 1) * 1460) - ((949.284785436 * =
1) * 1459)) =3D 78.0000002717</span><br style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><br style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">But again, time to test this in the real world =
again.</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><blockquote type=3D"cite" style=3D"font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; text-decoration: none;" =
class=3D""><blockquote type=3D"cite" class=3D""><br class=3D""><br =
class=3D""><br class=3D"">Best Regards<br class=3D""><span =
class=3D"Apple-tab-span" style=3D"white-space: pre;">	=
</span>Sebastian<br class=3D""><br class=3D""><br class=3D""><blockquote =
type=3D"cite" class=3D""><blockquote type=3D"cite" class=3D""><br =
class=3D""><blockquote type=3D"cite" class=3D""><blockquote type=3D"cite" =
class=3D"">Best Regards<br class=3D""><span class=3D"Apple-tab-span" =
style=3D"white-space: pre;">	</span>Sebastian<br class=3D""><br =
class=3D""><br class=3D""><blockquote type=3D"cite" =
class=3D"">Sebastian</blockquote></blockquote></blockquote></blockquote></=
blockquote></blockquote></blockquote></div></div><br =
class=3D""></body></html>=

--Apple-Mail=_3693D900-81A0-4E8B-96F3-97B953B3DCDC--

--===============7803666751695809527==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============7803666751695809527==--
