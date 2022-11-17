Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D6162DEE8
	for <lists+cake@lfdr.de>; Thu, 17 Nov 2022 16:00:08 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 7F2333CB48;
	Thu, 17 Nov 2022 10:00:07 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1668697207;
	bh=upM0I6juNG4FkqP2tABNyLva0bmhFU1Y1dvKsG7YNSY=;
	h=Date:In-Reply-To:To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=RITD7DjHMM1t1VKEH9Uswu5HnCx7e7NExpFDP6xIIbgHCwEmPHrHEVugZ8iCv0n9D
	 61fMCYQE+A3/6kOWsAIh453D/RNSCL0lAXe6+qFWWyix3j5JEMwPDbn6rIhY3HReBl
	 kh1WAUi+yzauNBYama/h0X1NAd6FRFx44qkL6hfH4mZqYimG/kZeP7gJLOGUY68JiF
	 aSGR9D2u6hhn3gO1bG7dawfKzyytPRDUXQdIv9l+f1GEBYKnhM2IRWAZw5r77ZvNCv
	 4Yyea2586vC5DQHmecp8rg5Di9H/D+Iev7+LHZqurXIq7hiQ76xMDYwpcXmL2URiwD
	 WA+g6fuNok4rw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from vps.slashdirt.org (vps.slashdirt.org [144.91.108.218])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 438833B29D
 for <cake@lists.bufferbloat.net>; Thu, 17 Nov 2022 10:00:06 -0500 (EST)
Received: from smtpclient.apple (tardis.herebedragons.eu [171.22.3.161])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPSA id DC31D60186;
 Thu, 17 Nov 2022 16:00:04 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org DC31D60186
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1668697205; bh=v3dmalQBas8GtzyA01cx1yExOvZqRKaFT0Gx22RLXCM=;
 h=From:Subject:Date:In-Reply-To:Cc:To:References:From;
 b=LeT1fUg8U9hmjJPQG5semGTZfas70CHPnLet/8AqU4qquppV+OD+CD81yABq2FmUj
 Z8DFYJhRBF/bMAoxiQy0SEMhxyCfQEojb5E1BwS7B455k3idLuApcfD4glm6D/kfFB
 cBBUBkRp3YGvnGV6RJ7gyIMJYhGTc2s9xxBklyqI=
Message-Id: <3550010F-3EB3-4CF3-B107-367802DF39A1@slashdirt.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
Date: Thu, 17 Nov 2022 16:00:04 +0100
In-Reply-To: <DB9D7633-A166-4A13-8302-8129C00A7CEB@gmx.de>
To: Sebastian Moeller <moeller0@gmx.de>
References: <386F2ED9-3D39-4A42-8982-742B5D4B417F@slashdirt.org>
 <F2D11ACD-9A4E-43E5-A7FE-B7CE27581434@gmx.de>
 <4CF53FE3-D26A-4E32-8378-3B27BBB70AEF@slashdirt.org>
 <F5AFD318-A148-4C42-A401-F1B18BC76628@gmx.de>
 <4D5AA477-1547-441F-900C-6DC70C824960@slashdirt.org>
 <DB9D7633-A166-4A13-8302-8129C00A7CEB@gmx.de>
X-Mailer: Apple Mail (2.3696.120.41.1.1)
Subject: Re: [Cake] Help untangling CAKE settings for FTTH
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
From: Thibaut via Cake <cake@lists.bufferbloat.net>
Reply-To: Thibaut <hacks@slashdirt.org>
Cc: Cake List <cake@lists.bufferbloat.net>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============1039234995275933157=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>


--===============1039234995275933157==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_FE6AC6D7-9770-4823-B1F0-96FD1CA8269A"


--Apple-Mail=_FE6AC6D7-9770-4823-B1F0-96FD1CA8269A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> Le 17 nov. 2022 =C3=A0 15:42, Sebastian Moeller <moeller0@gmx.de> a =
=C3=A9crit :
>=20
> Hi Thibaut,
>=20
>> On Nov 17, 2022, at 15:22, Thibaut <hacks@slashdirt.org> wrote:
>>=20
>> Hi Sebastian,
>>=20
>>> Le 17 nov. 2022 =C3=A0 10:50, Sebastian Moeller <moeller0@gmx.de> a =
=C3=A9crit :
>>>=20
>>> Hi T.
>>>=20
>>>=20
>>> so taking your proposa under consideration I canged the section that =
threw you off course to read:
>>>=20
>>>=20
>>> 	=E2=80=A2 Ethernet with Overhead: SQM can also account for the =
overhead imposed by VDSL2 links - add 22 bytes of overhead (mpu 68). =
Cable Modems (DOCSIS) set both up- and downstream overhead to 18 bytes =
(6 bytes source MAC, 6 bytes destination MAC, 2 bytes ether-type, 4 =
bytes FCS), to allow for a possible 4 byte VLAN tag it is recommended to =
set the overhead to 18 + 4 =3D 22 (mpu 64). For FTTH the answer is less =
clear cut, since different underlaying technologies have different =
relevant per-packet-overheads; however underestimating the =
per-packet-overhead is considerably worse for responsiveness than =
(gently) overestimating it, so for FTTH set the overhead to 44 (mpu 84) =
unless there is more detailed information about the true overhead on a =
link available.
>>> 	=E2=80=A2 None: All shaping below the physical gross-rate of a =
link requires correct per-packet overhead accounting to be precise, so =
None is only useful if approximate shaping is sufficient, say if you =
want to clamp a guest network to at best ~50% of the available capacity =
or similar tasks, but even then configuring an approximate correct =
per-packet-overhead is recommended (overhead 44 (mpu 84) is a decent =
default to pick).
>>>=20
>>>=20
>>> I hope this is explicit enough.
>>=20
>> Yes this looks a lot better, thank you.
>>=20
>> Although I must confess that it certainly feels counter-intuitive =
that for ethernet (and FTTH) we suggest a higher overhead than e.g. =
VDSL2/cable (which themselves run off an ethernet interface).
>=20
> 	That is simply because for (ADSL) DOCSIS VDSL2 we have a much =
clear picture about what we need to account for. And AON can be =
essentially using true ethernet encapsulation so we can expect an =
unspecified "FTTH" class to encompass a broad set of different =
encapsulations, if we want to recommend a single number that should also =
cover AON (the PONs are much less clear*). Why do you assume that FTTH =
necessarily would have a smaller per-packet-overhead than other link =
technologies?=20

I=E2=80=99m not (necessarily) making that assumption for FTTH (although =
I would expect it to be the case, from my limited understanding of FTTH =
technologies), I am however certainly making that assumption for plain =
ethernet, which is included in the 44-byte documentation case. I think =
it=E2=80=99s a reasonable one?

> 	Now, if you have reliable information for say GPON-overhead, by =
all means add it (but to be useful this also should contain an easy =
identifier for other users to figure out whether they use GPON in the =
first place).
>=20
> 	The bigger point however is IMHO, from the perspective of =
minimizing bufferbloat/latency-under-load-increase using a slightly too =
large per-packet-overhead is fully benign, while specifying to small an =
overhead can easily result in measurable bufferbloat increase. So IMHO =
it is fine to err on the side of too large when estimating the =
per-packet-overhead.

OK. Although I would think people reading the detailed explanation are =
looking for precise info and explanations, not one-stop-shop =
approximations. Not to mention the kind of users who want to squeeze the =
maximum performance out of their setup.

> *) The core problem is that we have no straight forward way to =
empirically deduce the effective per-packet-overhead over an arbitrary =
network path, so if a link technology defines/documents the overhead =
well and conclusively (like docsis) we are in luck, but if the details a =
vague or leave many options to the ISP we have to make an educated =
guess.
>=20
>=20
>> I would also like to see some info about ppp vs ethernet interface in =
there (matching your previous email): unless you beat me to it I will =
add it.
>=20
> 	I will not beat you to it, because for users of cake it does not =
matter

You said the exact opposite in your previous email (persistence of =
statistics) :)

> and we do recommend to use cake in the first place... heck even for =
folks wanting to use HTB+fq_codel I would recommend to start with cake =
and then look at the output of `tc -s qdisc` to figure out the overhead =
that is already accounted for on an interface.
>=20
>> I also think the =C2=AB details =C2=BB page needs to be reformatted a =
bit, it=E2=80=99s very dense and relevant info is all over the place and =
not very well organized.
>=20
> 	Might well be true (the page evolved over time and might need a =
full editorial pass), but it covers quite some territory and hence =
always will be a bit unwieldy.
>=20
>=20
>> I=E2=80=99ll try to get around improving that.
>=20
> 	Please try to keep all correct information around in the =
document.

Sure.

Cheers=

--Apple-Mail=_FE6AC6D7-9770-4823-B1F0-96FD1CA8269A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D""><br =
class=3D""><div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D"">Le 17 nov. 2022 =C3=A0 15:42, Sebastian Moeller &lt;<a =
href=3D"mailto:moeller0@gmx.de" class=3D"">moeller0@gmx.de</a>&gt; a =
=C3=A9crit :</div><br class=3D"Apple-interchange-newline"><div =
class=3D""><meta charset=3D"UTF-8" class=3D""><span style=3D"caret-color: =
rgb(0, 0, 0); font-family: Menlo-Regular; font-size: 11px; font-style: =
normal; font-variant-caps: normal; font-weight: 400; letter-spacing: =
normal; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">Hi Thibaut,</span><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Menlo-Regular; font-size: 11px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><br style=3D"caret-color: rgb(0, 0, =
0); font-family: Menlo-Regular; font-size: 11px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><blockquote type=3D"cite" =
style=3D"font-family: Menlo-Regular; font-size: 11px; font-style: =
normal; font-variant-caps: normal; font-weight: 400; letter-spacing: =
normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D"">On Nov 17, 2022, at 15:22, Thibaut =
&lt;<a href=3D"mailto:hacks@slashdirt.org" =
class=3D"">hacks@slashdirt.org</a>&gt; wrote:<br class=3D""><br =
class=3D"">Hi Sebastian,<br class=3D""><br class=3D""><blockquote =
type=3D"cite" class=3D"">Le 17 nov. 2022 =C3=A0 10:50, Sebastian Moeller =
&lt;<a href=3D"mailto:moeller0@gmx.de" class=3D"">moeller0@gmx.de</a>&gt; =
a =C3=A9crit :<br class=3D""><br class=3D"">Hi T.<br class=3D""><br =
class=3D""><br class=3D"">so taking your proposa under consideration I =
canged the section that threw you off course to read:<br class=3D""><br =
class=3D""><br class=3D""><span class=3D"Apple-tab-span" =
style=3D"white-space: pre;">	</span>=E2=80=A2 Ethernet with Overhead: =
SQM can also account for the overhead imposed by VDSL2 links - add 22 =
bytes of overhead (mpu 68). Cable Modems (DOCSIS) set both up- and =
downstream overhead to 18 bytes (6 bytes source MAC, 6 bytes destination =
MAC, 2 bytes ether-type, 4 bytes FCS), to allow for a possible 4 byte =
VLAN tag it is recommended to set the overhead to 18 + 4 =3D 22 (mpu =
64). For FTTH the answer is less clear cut, since different underlaying =
technologies have different relevant per-packet-overheads; however =
underestimating the per-packet-overhead is considerably worse for =
responsiveness than (gently) overestimating it, so for FTTH set the =
overhead to 44 (mpu 84) unless there is more detailed information about =
the true overhead on a link available.<br class=3D""><span =
class=3D"Apple-tab-span" style=3D"white-space: pre;">	</span>=E2=80=A2 =
None: All shaping below the physical gross-rate of a link requires =
correct per-packet overhead accounting to be precise, so None is only =
useful if approximate shaping is sufficient, say if you want to clamp a =
guest network to at best ~50% of the available capacity or similar =
tasks, but even then configuring an approximate correct =
per-packet-overhead is recommended (overhead 44 (mpu 84) is a decent =
default to pick).<br class=3D""><br class=3D""><br class=3D"">I hope =
this is explicit enough.<br class=3D""></blockquote><br class=3D"">Yes =
this looks a lot better, thank you.<br class=3D""><br class=3D"">Although =
I must confess that it certainly feels counter-intuitive that for =
ethernet (and FTTH) we suggest a higher overhead than e.g. VDSL2/cable =
(which themselves run off an ethernet interface).<br =
class=3D""></blockquote><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Menlo-Regular; font-size: 11px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span class=3D"Apple-tab-span" =
style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; =
font-size: 11px; font-style: normal; font-variant-caps: normal; =
font-weight: 400; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: pre; word-spacing: =
0px; -webkit-text-stroke-width: 0px; text-decoration: none;">	=
</span><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">That is =
simply because for (ADSL) DOCSIS VDSL2 we have a much clear picture =
about what we need to account for. And AON can be essentially using true =
ethernet encapsulation so we can expect an unspecified "FTTH" class to =
encompass a broad set of different encapsulations, if we want to =
recommend a single number that should also cover AON (the PONs are much =
less clear*). Why do you assume that FTTH necessarily would have a =
smaller per-packet-overhead than other link technologies?<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; =
font-size: 11px; font-style: normal; font-variant-caps: normal; =
font-weight: 400; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""></div></blockquote><div><br class=3D""></div><div>I=E2=80=
=99m not (necessarily) making that assumption for FTTH (although I would =
expect it to be the case, from my limited understanding of FTTH =
technologies), I am however certainly making that assumption for plain =
ethernet, which is included in the 44-byte documentation case. I think =
it=E2=80=99s a reasonable one?</div><br class=3D""><blockquote =
type=3D"cite" class=3D""><div class=3D""><span class=3D"Apple-tab-span" =
style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; =
font-size: 11px; font-style: normal; font-variant-caps: normal; =
font-weight: 400; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: pre; word-spacing: =
0px; -webkit-text-stroke-width: 0px; text-decoration: none;">	=
</span><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">Now, if you =
have reliable information for say GPON-overhead, by all means add it =
(but to be useful this also should contain an easy identifier for other =
users to figure out whether they use GPON in the first place).</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; =
font-size: 11px; font-style: normal; font-variant-caps: normal; =
font-weight: 400; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span class=3D"Apple-tab-span" style=3D"caret-color: =
rgb(0, 0, 0); font-family: Menlo-Regular; font-size: 11px; font-style: =
normal; font-variant-caps: normal; font-weight: 400; letter-spacing: =
normal; text-align: start; text-indent: 0px; text-transform: none; =
white-space: pre; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;">	</span><span style=3D"caret-color: =
rgb(0, 0, 0); font-family: Menlo-Regular; font-size: 11px; font-style: =
normal; font-variant-caps: normal; font-weight: 400; letter-spacing: =
normal; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">The bigger point however is IMHO, from the perspective of =
minimizing bufferbloat/latency-under-load-increase using a slightly too =
large per-packet-overhead is fully benign, while specifying to small an =
overhead can easily result in measurable bufferbloat increase. So IMHO =
it is fine to err on the side of too large when estimating the =
per-packet-overhead.</span><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Menlo-Regular; font-size: 11px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""></div></blockquote><div><br =
class=3D""></div>OK. Although I would think people reading the detailed =
explanation are looking for precise info and explanations, not =
one-stop-shop approximations. Not to mention the kind of users who want =
to squeeze the maximum performance out of their setup.</div><div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; =
font-size: 11px; font-style: normal; font-variant-caps: normal; =
font-weight: 400; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">*) The core =
problem is that we have no straight forward way to empirically deduce =
the effective per-packet-overhead over an arbitrary network path, so if =
a link technology defines/documents the overhead well and conclusively =
(like docsis) we are in luck, but if the details a vague or leave many =
options to the ISP we have to make an educated guess.</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; =
font-size: 11px; font-style: normal; font-variant-caps: normal; =
font-weight: 400; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><blockquote type=3D"cite" style=3D"font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D"">I =
would also like to see some info about ppp vs ethernet interface in =
there (matching your previous email): unless you beat me to it I will =
add it.<br class=3D""></blockquote><br style=3D"caret-color: rgb(0, 0, =
0); font-family: Menlo-Regular; font-size: 11px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span class=3D"Apple-tab-span" =
style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; =
font-size: 11px; font-style: normal; font-variant-caps: normal; =
font-weight: 400; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: pre; word-spacing: =
0px; -webkit-text-stroke-width: 0px; text-decoration: none;">	=
</span><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">I will not =
beat you to it, because for users of cake it does not =
matter</span></div></blockquote><div><br class=3D""></div><div>You said =
the exact opposite in your previous email (persistence of statistics) =
:)</div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D""> and we do =
recommend to use cake in the first place... heck even for folks wanting =
to use HTB+fq_codel I would recommend to start with cake and then look =
at the output of `tc -s qdisc` to figure out the overhead that is =
already accounted for on an interface.</span><br style=3D"caret-color: =
rgb(0, 0, 0); font-family: Menlo-Regular; font-size: 11px; font-style: =
normal; font-variant-caps: normal; font-weight: 400; letter-spacing: =
normal; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><br style=3D"caret-color: rgb(0, 0, =
0); font-family: Menlo-Regular; font-size: 11px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><blockquote type=3D"cite" =
style=3D"font-family: Menlo-Regular; font-size: 11px; font-style: =
normal; font-variant-caps: normal; font-weight: 400; letter-spacing: =
normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D"">I also think the =C2=AB details =C2=BB =
page needs to be reformatted a bit, it=E2=80=99s very dense and relevant =
info is all over the place and not very well organized.<br =
class=3D""></blockquote><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Menlo-Regular; font-size: 11px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span class=3D"Apple-tab-span" =
style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; =
font-size: 11px; font-style: normal; font-variant-caps: normal; =
font-weight: 400; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: pre; word-spacing: =
0px; -webkit-text-stroke-width: 0px; text-decoration: none;">	=
</span><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">Might well be =
true (the page evolved over time and might need a full editorial pass), =
but it covers quite some territory and hence always will be a bit =
unwieldy.</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><blockquote type=3D"cite" style=3D"font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D"">I=E2=80=
=99ll try to get around improving that.<br class=3D""></blockquote><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; =
font-size: 11px; font-style: normal; font-variant-caps: normal; =
font-weight: 400; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span class=3D"Apple-tab-span" style=3D"caret-color: =
rgb(0, 0, 0); font-family: Menlo-Regular; font-size: 11px; font-style: =
normal; font-variant-caps: normal; font-weight: 400; letter-spacing: =
normal; text-align: start; text-indent: 0px; text-transform: none; =
white-space: pre; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;">	</span><span style=3D"caret-color: =
rgb(0, 0, 0); font-family: Menlo-Regular; font-size: 11px; font-style: =
normal; font-variant-caps: normal; font-weight: 400; letter-spacing: =
normal; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">Please try to keep all correct information around in the =
document.</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""></div></blockquote><div><br =
class=3D""></div>Sure.</div><div><br =
class=3D""></div><div>Cheers</div></body></html>=

--Apple-Mail=_FE6AC6D7-9770-4823-B1F0-96FD1CA8269A--

--===============1039234995275933157==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============1039234995275933157==--
