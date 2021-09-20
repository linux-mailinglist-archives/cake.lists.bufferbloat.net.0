Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8834119E6
	for <lists+cake@lfdr.de>; Mon, 20 Sep 2021 18:37:10 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6AF273CB41;
	Mon, 20 Sep 2021 12:37:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1632155829;
	bh=kyHD/IVzIKoQntf8TU2JiD6LDstGUOPbV7SBhQ1ZXgA=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZGU290fbqAWLhUEYWIIhr0i95ipsSLbIM9SxlGLiYm3tS3tjK/RTfA3nRfOJgxQU9
	 O3xOgVnUqqmNAULq2JraAMvyeId2EL2FV40TdInBwufoatyRsflHo2M+brDtgM7qWF
	 OapDItc2FxVCQ1jmtC6YKWtjkfJCyn/Eh7USNzKWMBPG+p9P1SSwfiPQytaXtKXVYi
	 UFmAgMQPxRSHduEAC16UQ0hpdLlBguwX5TwMSc33nRmegV90d9AdV4khbzVmBLFpDT
	 Yk8fBpuVXlPod4TGkfv8ONf/4iMvlXpJ3cYWXsOcOD8wQlr92QLTSS2+gPJzXiRv3Z
	 7w47T92xTt2nw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
 [217.70.183.196])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 81EEC3B2A4;
 Mon, 20 Sep 2021 12:37:06 -0400 (EDT)
Received: (Authenticated sender: jcsmail@sager.me.uk)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 63A07E0008;
 Mon, 20 Sep 2021 16:37:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sager.me.uk; s=gm1;
 t=1632155825;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/InooEZwlAaQw8GXZt0apr29bJ5MugWBQRcaKxPMi58=;
 b=pEakvqx/auiYsJIASV06DXj/IjjWhjgzPEGSJlyvNwfW/oTcwJibiMT7LvRtIk25bgJjVm
 y5y75Pkwq6WsHs5Xd3/DRFMGr9Jmw63Xmg5IrOfYvtFhaxiRn6wVEdiExgFvS3mVQhGaOK
 NhiY1XdrP3SMFWJpDiLarBAyhG+86i0mAUcbnEegt1xKTATSNnH0gYPEyI9N5T7jbFF68f
 RdxUuZYZwd4xZb8TsY6Fh8VUp1VCSaRlu3Eopr839GGEp+XoYRJ72dEs38WIVjozdU0paL
 J4axdpTUiRjLKu7MoGPkAPzZH6subkv0kYm7jrS/MagPp9+Lv+7SzjnciymcGw==
Received: from [192.168.240.4] (helo=[127.0.0.1])
 by mainserver.wc with esmtp (Exim 4.93)
 (envelope-from <john@sager.me.uk>)
 id 1mSMHv-00319S-5e; Mon, 20 Sep 2021 17:37:03 +0100
Date: Mon, 20 Sep 2021 17:36:56 +0100
From: John Sager <john@sager.me.uk>
To: cake@lists.bufferbloat.net
User-Agent: K-9 Mail for Android
In-Reply-To: <CABf5zv+yq_oJ7O7YqVeSbZ2Qns3C4hESzNA2V0zNb0L1Zg-mgw@mail.gmail.com>
References: <CAA93jw7ZFWRWsBK-R1See9jRCASHd1U8ZFawyDXOT8fh2pLTag@mail.gmail.com>
 <1625188609.32718319@apps.rackspace.com>
 <CAA93jw5wQ5PYL08hWcdUucUYWt-n=uKDAbF23Pp3t5u9dEDEng@mail.gmail.com>
 <CAHb6LvrjgKnfe_jaGgx7_B1VDTkZfTmP0OyTmxL9ojWoxogrsA@mail.gmail.com>
 <989de0c1-e06c-cda9-ebe6-1f33df8a4c24@candelatech.com>
 <1625773080.94974089@apps.rackspace.com>
 <FDF5C7A7-47A6-4123-A948-352C07C35F02@cs.ucla.edu>
 <CAH8sseShtJHZ1mZWu-hhKYsDLG_LC9GBpX9XRrj68yyzQLPcAg@mail.gmail.com>
 <1625859083.09751240@apps.rackspace.com>
 <CAA93jw5QyH4SqKT07hP+skijfimZ0GU=AgLJtkVOQGzKrAkazg@mail.gmail.com>
 <257851.1632110422@turing-police>
 <CABf5zv+yq_oJ7O7YqVeSbZ2Qns3C4hESzNA2V0zNb0L1Zg-mgw@mail.gmail.com>
Message-ID: <27376364-28BC-44C1-B99C-2AE906AF3BB5@sager.me.uk>
MIME-Version: 1.0
Subject: Re: [Cake] [Starlink] [Cerowrt-devel] [Bloat] Little's Law mea
	culpa, but not invalidating my main point
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
Cc: starlink@lists.bufferbloat.net,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 codel@lists.bufferbloat.net,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============2340370791763901560=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============2340370791763901560==
Content-Type: multipart/alternative;
 boundary=----U2UI08VZ9VGKSK8P0OP3AGBREC27BS
Content-Transfer-Encoding: 7bit

------U2UI08VZ9VGKSK8P0OP3AGBREC27BS
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

You guys made the Internet too easy to use :-)


On 20 September 2021 13:57:33 BST, Steve Crocker <steve@shinkuro=2Ecom> wr=
ote:
>Related but slightly different: Attached is a slide some of my colleagues
>put together a decade ago showing the number of DNS lookups involved in
>displaying CNN's front page=2E
>
>Steve
>
>
>On Mon, Sep 20, 2021 at 8:18 AM Valdis Kl=C4=93tnieks <valdis=2Ekletnieks=
@vt=2Eedu>
>wrote:
>
>> On Sun, 19 Sep 2021 18:21:56 -0700, Dave Taht said:
>> > what actually happens during a web page load,
>>
>> I'm pretty sure that nobody actually understands that anymore, in any
>> more than handwaving levels=2E
>>
>> I have a nice Chrome extension called IPvFoo that actually tracks the I=
P
>> addresses contacted during the load of the displayed page=2E I'll let y=
ou
>> make
>> a guess as to how many unique IP addresses were contacted during a load
>> of https://www=2Ecnn=2Ecom
>>
>> =2E=2E=2E
>>
>>
>> =2E=2E=2E
>>
>>
>> =2E=2E=2E
>>
>>
>> 145, at least half of which appeared to be analytics=2E  And that's onl=
y the
>> hosts that were contacted by my laptop for HTTP, and doesn't count DNS,=
 or
>> load-balancing front ends, or all the back-end boxes=2E  As I commented=
 over
>> on
>> NANOG, we've gotten to a point similar to that of AT&T long distance,
>> where 60%
>> of the effort of connecting a long distance phone call was the cost of
>> accounting and billing for the call=2E
>>
>>
>>
>>
>>
>>
>>
>>
>> _______________________________________________
>> Starlink mailing list
>> Starlink@lists=2Ebufferbloat=2Enet
>> https://lists=2Ebufferbloat=2Enet/listinfo/starlink
>>

--=20
Sent from the Aether=2E
------U2UI08VZ9VGKSK8P0OP3AGBREC27BS
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body>You guys made the Internet too easy to use :-)<br>=
<br><br><div class=3D"gmail_quote">On 20 September 2021 13:57:33 BST, Steve=
 Crocker &lt;steve@shinkuro=2Ecom&gt; wrote:<blockquote class=3D"gmail_quot=
e" style=3D"margin: 0pt 0pt 0pt 0=2E8ex; border-left: 1px solid rgb(204, 20=
4, 204); padding-left: 1ex;">
<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,s=
ans-serif;font-size:small;color:#000000">Related but slightly different: At=
tached is a slide some of my colleagues put together a decade ago showing t=
he number of DNS lookups involved in displaying CNN's front page=2E</div><d=
iv class=3D"gmail_default" style=3D"font-family:arial,sans-serif;font-size:=
small;color:#000000"><br></div><div class=3D"gmail_default" style=3D"font-f=
amily:arial,sans-serif;font-size:small;color:#000000">Steve</div><div class=
=3D"gmail_default" style=3D"font-family:arial,sans-serif;font-size:small;co=
lor:#000000"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Mon, Sep 20, 2021 at 8:18 AM Valdis Kl=C4=93tniek=
s &lt;<a href=3D"mailto:valdis=2Ekletnieks@vt=2Eedu">valdis=2Ekletnieks@vt=
=2Eedu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0=2E8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">On Sun, 19 Sep 2021 18:21:56 -0700, Dave Taht said:<br>
&gt; what actually happens during a web page load,<br>
<br>
I'm pretty sure that nobody actually understands that anymore, in any<br>
more than handwaving levels=2E<br>
<br>
I have a nice Chrome extension called IPvFoo that actually tracks the IP<b=
r>
addresses contacted during the load of the displayed page=2E I'll let you =
make<br>
a guess as to how many unique IP addresses were contacted during a load<br=
>
of <a href=3D"https://www=2Ecnn=2Ecom" rel=3D"noreferrer" target=3D"_blank=
">https://www=2Ecnn=2Ecom</a><br>
<br>
=2E=2E=2E<br>
<br>
<br>
=2E=2E=2E<br>
<br>
<br>
=2E=2E=2E<br>
<br>
<br>
145, at least half of which appeared to be analytics=2E&nbsp; And that's o=
nly the<br>
hosts that were contacted by my laptop for HTTP, and doesn't count DNS, or=
<br>
load-balancing front ends, or all the back-end boxes=2E&nbsp; As I comment=
ed over on<br>
NANOG, we've gotten to a point similar to that of AT&amp;T long distance, =
where 60%<br>
of the effort of connecting a long distance phone call was the cost of<br>
accounting and billing for the call=2E<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
_______________________________________________<br>
Starlink mailing list<br>
<a href=3D"mailto:Starlink@lists=2Ebufferbloat=2Enet" target=3D"_blank">St=
arlink@lists=2Ebufferbloat=2Enet</a><br>
<a href=3D"https://lists=2Ebufferbloat=2Enet/listinfo/starlink" rel=3D"nor=
eferrer" target=3D"_blank">https://lists=2Ebufferbloat=2Enet/listinfo/starl=
ink</a><br>
</blockquote></div>
</blockquote></div><div style=3D'white-space: pre-wrap'><div class=3D'k9ma=
il-signature'>-- <br>Sent from the Aether=2E</div></div></body></html>
------U2UI08VZ9VGKSK8P0OP3AGBREC27BS--

--===============2340370791763901560==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============2340370791763901560==--
