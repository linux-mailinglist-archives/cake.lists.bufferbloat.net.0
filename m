Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF1341316B
	for <lists+cake@lfdr.de>; Tue, 21 Sep 2021 12:22:18 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 65BB93CB44;
	Tue, 21 Sep 2021 06:22:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1632219737;
	bh=SsFbpEcV0dHSWWszaZ2kObaHfkFX7CO/24rI8ePEQbE=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=OWZ3w0RQIHRIowbxcQpyrqSPwr7MtslSPHhF48h+Kz3uCD+XzWPIW4Va9HFpMJLC8
	 GBIAGcO87ZRApylLSzsTfRb4Uco2Ak6qrA+CXiRPe1VtDk7oji8SFoP8jeU00mf5NO
	 zqVv6KGHIKkvKL/SWHqKlW4aYaKoLbn83BRMAhW1aYudXdHph6XNiNEQl0LjMkNdo6
	 NSx4oZZ9p6dwmVQXyLxcOOYkUy4rL1/xnSwTTOj+JIUB04vtR4/qYjCoARfEdJFbvk
	 zt/Pg1Ftfdr++dFIqkM/bYUEJDv6ojHLttz4iUkHSbAPEDcBINM06YzFgp0Di/7fB1
	 aUIL0uSESa+BA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 643AD3CB40
 for <cake@lists.bufferbloat.net>; Mon, 20 Sep 2021 22:40:17 -0400 (EDT)
Received: by mail-wr1-x42e.google.com with SMTP id w17so26735367wrv.10
 for <cake@lists.bufferbloat.net>; Mon, 20 Sep 2021 19:40:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1oIerjvhTpV1iiiIk+6Ft9cMiiCc6cnQlWO5xYPq+jY=;
 b=Ja3WHSbv8jKA3AKHIq/YgRALS2UIXEtBdCo6w4QI9ePTEgXPlDFLQIxx6e6C9qXVls
 iVaPZNcNQjaZST9y8GXRdALzAkEwEYT4+UA6f9NX2KGpkY3WBJLLDyNW0IRNMoPPF3vJ
 LSBRebRCl3yGyhQl6HNdjoWsB5wwfGolzsng34cXz2DPlrFRyk5ALg2rLE5rg2SZVTkw
 ntLPRhJEMIPpMH1aI1H2TIR+zopf3h6K64Tr8VIpmHdOKk88fuaMGgcD2kkIbfFT94Xy
 ThfGOz1Uo0Zd88luan9dkfCjFdVBDl34nOUaY0JqT+/9n9etrtF7F7BK+WyIOkzHPvyL
 n0aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1oIerjvhTpV1iiiIk+6Ft9cMiiCc6cnQlWO5xYPq+jY=;
 b=3NUOJTSHYIElGIGtTKut2g9fNsFJ7pfZnmnpG46eeEnin/xUZHg4SUGHkJtY//nPJr
 S/9QNiJLuKBC6rVg322Mg9JSdgiwjAw3gAI1xZNW0+Dpe2AEcIdNVm4cbgI0AIbnc0GP
 v7eYZsSbFtJZh5HLXPcjnZjafZ8mWwfs1xww+l/bow4pIelEuusTMPSiQqnXIirau4PX
 lGAbExiyvbJlZvw9tGUm51xGdtWU/vgs5zz49hGTgxDSNufhLtsyWGg7xF0FloYaknp1
 kZ9Ymo5UU7hI/fQMBDVzhyrqx9KA7Cf6l8Og+eNLAtPrQXsWuon/RsVX4IQqQPBHK33x
 8gww==
X-Gm-Message-State: AOAM532+uGwcwB15J/LmD8xCRfsggxYbs23uZSHcUoZ0GYxoSZJYZUs9
 S6Z6XH4gH8vbuX2e3haIditceDvxP7d8y5RLx/QMeQ==
X-Google-Smtp-Source: ABdhPJwdKyEjiJ/Qmv+/CvUc0yTKhtfZt1lrBYtfg3eYpbYkMY++gnUYLHyAxi7NTFzSm1IVi82vgpiw1JX2hPn/Qy0=
X-Received: by 2002:adf:f890:: with SMTP id u16mr31052376wrp.388.1632192016174; 
 Mon, 20 Sep 2021 19:40:16 -0700 (PDT)
MIME-Version: 1.0
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
In-Reply-To: <CABf5zv+yq_oJ7O7YqVeSbZ2Qns3C4hESzNA2V0zNb0L1Zg-mgw@mail.gmail.com>
Date: Mon, 20 Sep 2021 22:40:04 -0400
Message-ID: <CAHxHggd-4rZ5Nc4raaoRUjjL17MVh8UsNu_5eL8eiLJ=R_68wA@mail.gmail.com>
To: Steve Crocker <steve@shinkuro.com>
X-Mailman-Approved-At: Tue, 21 Sep 2021 06:22:16 -0400
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
From: Vint Cerf via Cake <cake@lists.bufferbloat.net>
Reply-To: Vint Cerf <vint@google.com>
Cc: Cake List <cake@lists.bufferbloat.net>,
 =?UTF-8?Q?Valdis_Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Bob McMahon <bob.mcmahon@broadcom.com>, starlink@lists.bufferbloat.net,
 codel@lists.bufferbloat.net,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============5938920889959085488=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============5938920889959085488==
Content-Type: multipart/alternative; boundary="00000000000054a53c05cc785120"

--00000000000054a53c05cc785120
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

see https://mediatrust.com/
v


On Mon, Sep 20, 2021 at 10:28 AM Steve Crocker <steve@shinkuro.com> wrote:

> Related but slightly different: Attached is a slide some of my colleagues
> put together a decade ago showing the number of DNS lookups involved in
> displaying CNN's front page.
>
> Steve
>
>
> On Mon, Sep 20, 2021 at 8:18 AM Valdis Kl=C4=93tnieks <valdis.kletnieks@v=
t.edu>
> wrote:
>
>> On Sun, 19 Sep 2021 18:21:56 -0700, Dave Taht said:
>> > what actually happens during a web page load,
>>
>> I'm pretty sure that nobody actually understands that anymore, in any
>> more than handwaving levels.
>>
>> I have a nice Chrome extension called IPvFoo that actually tracks the IP
>> addresses contacted during the load of the displayed page. I'll let you
>> make
>> a guess as to how many unique IP addresses were contacted during a load
>> of https://www.cnn.com
>>
>> ...
>>
>>
>> ...
>>
>>
>> ...
>>
>>
>> 145, at least half of which appeared to be analytics.  And that's only t=
he
>> hosts that were contacted by my laptop for HTTP, and doesn't count DNS, =
or
>> load-balancing front ends, or all the back-end boxes.  As I commented
>> over on
>> NANOG, we've gotten to a point similar to that of AT&T long distance,
>> where 60%
>> of the effort of connecting a long distance phone call was the cost of
>> accounting and billing for the call.
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
>> Starlink@lists.bufferbloat.net
>> https://lists.bufferbloat.net/listinfo/starlink
>>
> _______________________________________________
> Starlink mailing list
> Starlink@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/starlink
>


--=20
Please send any postal/overnight deliveries to:
Vint Cerf
1435 Woodhurst Blvd
McLean, VA 22102
703-448-0965

until further notice

--00000000000054a53c05cc785120
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">see <a href=3D"https://mediatrust.com/">https://mediatrust=
.com/</a><div>v</div><div><br></div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Mon, Sep 20, 2021 at 10:28 AM Steve =
Crocker &lt;<a href=3D"mailto:steve@shinkuro.com">steve@shinkuro.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div di=
r=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,sans-seri=
f;font-size:small;color:rgb(0,0,0)">Related but slightly different: Attache=
d is a slide some of my colleagues put together a decade ago showing the nu=
mber of DNS lookups involved in displaying CNN&#39;s front page.</div><div =
class=3D"gmail_default" style=3D"font-family:arial,sans-serif;font-size:sma=
ll;color:rgb(0,0,0)"><br></div><div class=3D"gmail_default" style=3D"font-f=
amily:arial,sans-serif;font-size:small;color:rgb(0,0,0)">Steve</div><div cl=
ass=3D"gmail_default" style=3D"font-family:arial,sans-serif;font-size:small=
;color:rgb(0,0,0)"><br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Mon, Sep 20, 2021 at 8:18 AM Valdis Kl=C4=
=93tnieks &lt;<a href=3D"mailto:valdis.kletnieks@vt.edu" target=3D"_blank">=
valdis.kletnieks@vt.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">On Sun, 19 Sep 2021 18:21:56 -0700, Dave Taht said:<=
br>
&gt; what actually happens during a web page load,<br>
<br>
I&#39;m pretty sure that nobody actually understands that anymore, in any<b=
r>
more than handwaving levels.<br>
<br>
I have a nice Chrome extension called IPvFoo that actually tracks the IP<br=
>
addresses contacted during the load of the displayed page. I&#39;ll let you=
 make<br>
a guess as to how many unique IP addresses were contacted during a load<br>
of <a href=3D"https://www.cnn.com" rel=3D"noreferrer" target=3D"_blank">htt=
ps://www.cnn.com</a><br>
<br>
...<br>
<br>
<br>
...<br>
<br>
<br>
...<br>
<br>
<br>
145, at least half of which appeared to be analytics.=C2=A0 And that&#39;s =
only the<br>
hosts that were contacted by my laptop for HTTP, and doesn&#39;t count DNS,=
 or<br>
load-balancing front ends, or all the back-end boxes.=C2=A0 As I commented =
over on<br>
NANOG, we&#39;ve gotten to a point similar to that of AT&amp;T long distanc=
e, where 60%<br>
of the effort of connecting a long distance phone call was the cost of<br>
accounting and billing for the call.<br>
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
<a href=3D"mailto:Starlink@lists.bufferbloat.net" target=3D"_blank">Starlin=
k@lists.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/starlink" rel=3D"noreferr=
er" target=3D"_blank">https://lists.bufferbloat.net/listinfo/starlink</a><b=
r>
</blockquote></div>
_______________________________________________<br>
Starlink mailing list<br>
<a href=3D"mailto:Starlink@lists.bufferbloat.net" target=3D"_blank">Starlin=
k@lists.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/starlink" rel=3D"noreferr=
er" target=3D"_blank">https://lists.bufferbloat.net/listinfo/starlink</a><b=
r>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div>Please send any postal/ove=
rnight deliveries to:</div><div>Vint Cerf</div><div>1435 Woodhurst Blvd=C2=
=A0</div><div>McLean, VA 22102</div><div>703-448-0965</div><div><br></div><=
div>until further notice</div><div><br></div><div><br></div><div><br></div>=
</div></div>

--00000000000054a53c05cc785120--

--===============5938920889959085488==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============5938920889959085488==--
