Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 182941C2147
	for <lists+cake@lfdr.de>; Sat,  2 May 2020 01:36:20 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id AA1163CB52;
	Fri,  1 May 2020 19:36:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1588376172;
	bh=cfGzbTWcm/Sxlf8JzbnzG4ARxc523AG4SDpZLdE2Uy4=;
	h=References:In-Reply-To:To:List-Id:List-Post:From:Cc:
	 List-Subscribe:List-Unsubscribe:List-Archive:Reply-To:List-Help:
	 Subject:From;
	b=MxBx5oTdRc53sTxhsWzhZ7CL7e4Bc9MJtoQ0yDpcOSBSgtyyylV+XxoqBnO9AiDCh
	 wbPHFiXM6BeAViMfivvwB4w1RzfpPrS5oOfoHUNabIpKqGazfozVQw6WSo/3p+Bo66
	 iTxig1j/2508rCen2uSFXeQYDuvLyGLLeF47Y/WHlBRYNYakbSBEY4Drl1ZBrjwPfy
	 56+y01umRDVTvzjnWAcWu7zafCseBsxvsaqrtIYDSlza2E1kD878WznkWSiom4ocry
	 I+aYh7Ousv+tI+X+2KKGTOWiWq+QPnVmIlLsF/cTLp4RDdmTfsvbvcNVzZj7Gd3wLg
	 eBQhqdAvxFHAA==
References: <CAA93jw5HbGBcy6uW0dLbjtLmp_g4SLdK8Ny7G8UvbX_d+H1yXg@mail.gmail.com>
 <05410663-5E50-4CF5-8ADE-3BBB985E32B1@gmx.de>
 <mailman.170.1588363787.24343.bloat@lists.bufferbloat.net>
 <24457.1588370840@localhost>
In-Reply-To: <24457.1588370840@localhost>
To: Michael Richardson <mcr@sandelman.ca>
MIME-Version: 1.0
Message-ID: <mailman.198.1588376171.24343.cake@lists.bufferbloat.net>
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
From: Sergey Fedorov via Cake <cake@lists.bufferbloat.net>
Precedence: list
Cc: Cake List <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
X-Mailman-Version: 2.1.20
X-BeenThere: cake@lists.bufferbloat.net
List-Subscribe: <https://lists.bufferbloat.net/listinfo/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=subscribe>
List-Unsubscribe: <https://lists.bufferbloat.net/options/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=unsubscribe>
List-Archive: <https://lists.bufferbloat.net/pipermail/cake>
Reply-To: Sergey Fedorov <sfedorov@netflix.com>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
Subject: Re: [Cake] [Bloat]  dslreports is no longer free
Content-Type: multipart/mixed; boundary="===============3607583800277535674=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============3607583800277535674==
Content-Type: message/rfc822
Content-Disposition: inline

Return-Path: <sfedorov@netflix.com>
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd2b.google.com (mail-io1-xd2b.google.com [IPv6:2607:f8b0:4864:20::d2b])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by lists.bufferbloat.net (Postfix) with ESMTPS id 3BDAA3CB39
	for <cake@lists.bufferbloat.net>; Fri,  1 May 2020 19:36:11 -0400 (EDT)
Received: by mail-io1-xd2b.google.com with SMTP id d7so1517158ioq.5
        for <cake@lists.bufferbloat.net>; Fri, 01 May 2020 16:36:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=netflix.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Bke8GDNhkktTEnK81NDXP4SMTXRhQzx0oLxTJg3JhH4=;
        b=fw9EAoD22UnrWLokd1vGN6pWTMWRGj09J780bxoNIS1mqyXCdzHX1nafK4NIec5cxr
         AEGHVOoq1boWV3M9IBWX0IfCqYEM1sYrpHFiFxYPNSe/QIapcribRIwcYAXFC2lfmRKr
         CdGBX1xXvcr9d8LiqnJ2ZDs2nzYpF7Mc+i9s0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Bke8GDNhkktTEnK81NDXP4SMTXRhQzx0oLxTJg3JhH4=;
        b=fz6cfvw7hCHscILlk/TIL3U52bYKtnhMHxXAR5KgKqf6mwVtU3XOYTufGT/Fv/OqzJ
         XrmdBrsPdzu3Hx44D5JZZeFGBFWQcHINkKF+ewIyeNwln/R5ti9c0eMWgECjxSMK3xGE
         M0u4wNzwsYQzSmL+n64d3cL3AsxNHf6ZP8o5GPVmubpaT/5s0oy6my0p+4Jkc9B/9fgo
         8ilC1sXxjMwbUmdG+Qsga1RMv/6QC1EAjg8oWcct5hXwZaG5yVGiJD+ljAFFeqS8tjqO
         uptSTELN3yeippb2ElmwRoWw26VX6+nqHryeOzNnv/OiXyNSWxo6VB3Wc2ysFnhaE5fF
         BYug==
X-Gm-Message-State: AGi0PuaaWXdMZU3kqhvIuHSGn+NP+UDnpb+NQdYyyEG5HXOtUSZwMTAn
	MMZfJXQSCpL+aYITsBYyaAOr0Zoum82KA8CW0dbxvw==
X-Google-Smtp-Source: APiQypIU+vCSJLoDue1/hG9tnZmc0u9qiiJyQardkEYZy5Jgy4YjLsUYiEa1ltbTnY1o2yX2umNg48k9VAs3pdDOgsE=
X-Received: by 2002:a5d:9604:: with SMTP id w4mr6202473iol.105.1588376170460;
 Fri, 01 May 2020 16:36:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw5HbGBcy6uW0dLbjtLmp_g4SLdK8Ny7G8UvbX_d+H1yXg@mail.gmail.com>
 <05410663-5E50-4CF5-8ADE-3BBB985E32B1@gmx.de> <mailman.170.1588363787.24343.bloat@lists.bufferbloat.net>
 <24457.1588370840@localhost>
In-Reply-To: <24457.1588370840@localhost>
From: Sergey Fedorov <sfedorov@netflix.com>
Date: Fri, 1 May 2020 16:35:34 -0700
Message-ID: <CADN=VJ=c1qamjof0_fqoxWcoha7qA=xGNBw=zjycxJs3gD0fQA@mail.gmail.com>
Subject: Re: [Bloat] [Cake] dslreports is no longer free
To: Michael Richardson <mcr@sandelman.ca>
Cc: Sebastian Moeller <moeller0@gmx.de>, Cake List <cake@lists.bufferbloat.net>, 
	Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, 
	cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/alternative; boundary="000000000000695c3a05a49ea592"

--000000000000695c3a05a49ea592
Content-Type: text/plain; charset="UTF-8"

Hi Michael,

This blog post <https://netflixtechblog.com/building-fast-com-4857fe0f8adb>
describes how
the test steers to the server(s).
Noted on the other thread, I hope to add the url param option reasonably
soon.

SERGEY FEDOROV

Director of Engineering

sfedorov@netflix.com

121 Albright Way | Los Gatos, CA 95032



On Fri, May 1, 2020 at 3:07 PM Michael Richardson <mcr@sandelman.ca> wrote:

>
> {Do I need all the lists?}
>
> Sergey Fedorov via Bloat <bloat@lists.bufferbloat.net> wrote:
>     > Just a note that I have a plan to separate the loaded latency into
>     > upload/download. It's not great UX now they way it's implemented.
>     > The timeline view is a bit more nuanced, in the spirit of the
> simplistic
>     > UX, but I've been thinking on a good way to show that for super
> users as
>     > well.
>     > Two latency numbers - that's more user friendly, we want the general
> user
>     > to understand the meaning. And latency under load is much easier than
>     > bufferbloat.
>
>     > As a side note, if our backend is decent, I'm curious what are the
> backends
>     > for the speed tests that exist that are great :)
>
> Does it find/use my nearest Netflix cache?
>
> As others asked, it would be great if we could put the settings into a URL,
> and having the "latency under upload" is probably the most important number
> that people trying to videoconference need to know.
>
> (it's also the thing that they can mostly directly/cheaply fix)
>
>     > SERGEY FEDOROV
>     > Director of Engineering
>     > sfedorov@netflix.com
>     > 121 Albright Way | Los Gatos, CA 95032
>
> Very happy that you are looped in here.
>
> --
> ]               Never tell me the odds!                 | ipv6 mesh
> networks [
> ]   Michael Richardson, Sandelman Software Works        |    IoT
> architect   [
> ]     mcr@sandelman.ca  http://www.sandelman.ca/        |   ruby on
> rails    [
>
>

--000000000000695c3a05a49ea592
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Michael,<div><br></div><div><a href=3D"https://netflixt=
echblog.com/building-fast-com-4857fe0f8adb">This blog post</a>=C2=A0describ=
es=C2=A0how the test steers to the server(s).</div><div>Noted on the other =
thread, I hope to add the url param option reasonably soon.</div><div><br><=
div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail=
_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><span><font size=3D"1"><=
p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><=
span style=3D"font-family:Arial;color:rgb(67,67,67);vertical-align:baseline=
;white-space:pre-wrap">SERGEY FEDOROV</span></p><p dir=3D"ltr" style=3D"lin=
e-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-family:=
Arial;color:rgb(102,102,102);vertical-align:baseline;white-space:pre-wrap">=
Director of Engineering</span></p><p style=3D"line-height:1.38;margin-top:0=
pt;margin-bottom:0pt"><span style=3D"font-family:Arial;color:rgb(102,102,10=
2);vertical-align:baseline;white-space:pre-wrap"><a href=3D"mailto:sfedorov=
@netflix.com" target=3D"_blank">sfedorov@netflix.com</a></span></p><p style=
=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-=
family:Arial;color:rgb(102,102,102);vertical-align:baseline;white-space:pre=
-wrap">121 Albright Way  |  Los Gatos, CA 95032</span></p><span style=3D"fo=
nt-family:Arial;color:rgb(136,136,136);vertical-align:baseline;white-space:=
pre-wrap"><img src=3D"https://lh6.googleusercontent.com/sXyXTYq5vF1C3sJhRzJ=
IQ0iYROwE8E1e0R6RY9hhgBZDVe6fLjmy_Y0F6RsQskALepS5t1zXm9JcQg-HXYQDbLZ6NS0YBj=
A3oh7IlhrUnR38ttr667EWpXydNk6U1I7FLO3civYI" width=3D"73" height=3D"44" styl=
e=3D"border:none"></span></font></span><br></div></div></div></div></div><b=
r></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, May 1, 2020 at 3:07 PM Michael Richardson &lt;<a hr=
ef=3D"mailto:mcr@sandelman.ca">mcr@sandelman.ca</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><br>
{Do I need all the lists?}<br>
<br>
Sergey Fedorov via Bloat &lt;<a href=3D"mailto:bloat@lists.bufferbloat.net"=
 target=3D"_blank">bloat@lists.bufferbloat.net</a>&gt; wrote:<br>
=C2=A0 =C2=A0 &gt; Just a note that I have a plan to separate the loaded la=
tency into<br>
=C2=A0 =C2=A0 &gt; upload/download. It&#39;s not great UX now they way it&#=
39;s implemented.<br>
=C2=A0 =C2=A0 &gt; The timeline view is a bit more nuanced, in the spirit o=
f the simplistic<br>
=C2=A0 =C2=A0 &gt; UX, but I&#39;ve been thinking on a good way to show tha=
t for super users as<br>
=C2=A0 =C2=A0 &gt; well.<br>
=C2=A0 =C2=A0 &gt; Two latency numbers - that&#39;s more user friendly, we =
want the general user<br>
=C2=A0 =C2=A0 &gt; to understand the meaning. And latency under load is muc=
h easier than<br>
=C2=A0 =C2=A0 &gt; bufferbloat.<br>
<br>
=C2=A0 =C2=A0 &gt; As a side note, if our backend is decent, I&#39;m curiou=
s what are the backends<br>
=C2=A0 =C2=A0 &gt; for the speed tests that exist that are great :)<br>
<br>
Does it find/use my nearest Netflix cache?<br>
<br>
As others asked, it would be great if we could put the settings into a URL,=
<br>
and having the &quot;latency under upload&quot; is probably the most import=
ant number<br>
that people trying to videoconference need to know.<br>
<br>
(it&#39;s also the thing that they can mostly directly/cheaply fix)<br>
<br>
=C2=A0 =C2=A0 &gt; SERGEY FEDOROV<br>
=C2=A0 =C2=A0 &gt; Director of Engineering<br>
=C2=A0 =C2=A0 &gt; <a href=3D"mailto:sfedorov@netflix.com" target=3D"_blank=
">sfedorov@netflix.com</a><br>
=C2=A0 =C2=A0 &gt; 121 Albright Way | Los Gatos, CA 95032<br>
<br>
Very happy that you are looped in here.<br>
<br>
--<br>
]=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Never tell me the o=
dds!=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| ipv6 me=
sh networks [<br>
]=C2=A0 =C2=A0Michael Richardson, Sandelman Software Works=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 |=C2=A0 =C2=A0 IoT architect=C2=A0 =C2=A0[<br>
]=C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:mcr@sandelman.ca" target=3D"_blank">=
mcr@sandelman.ca</a>=C2=A0 <a href=3D"http://www.sandelman.ca/" rel=3D"nore=
ferrer" target=3D"_blank">http://www.sandelman.ca/</a>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 |=C2=A0 =C2=A0ruby on rails=C2=A0 =C2=A0 [<br>
<br>
</blockquote></div>

--000000000000695c3a05a49ea592--

--===============3607583800277535674==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============3607583800277535674==--
