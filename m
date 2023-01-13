Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 423B28B658F
	for <lists+cake@lfdr.de>; Tue, 30 Apr 2024 00:19:34 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 651313CC83;
	Mon, 29 Apr 2024 18:18:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1714429135;
	bh=vmr3/qUzMwlKv+VSD5ezZMcR5zjqRTcFac2cLIzaQ9w=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=OFsjgnZe3yoXmM5JHMH6OTbotF4vHzhhBkW09YObmdMgy/95/SzuJBeHtQWdfWo21
	 4Pf9fWfUkmScOjLvleT+n0wD0ZE0Ws8z3UdQyDB5u1xN7DEf4KprEfPiyKf64JnLk7
	 5XGXq+z6kJdDbhmncM/oAyYKO+Kxk+ivJpjVbAQLHbaJV7syhTbt7kM136+Jpc4RC+
	 WSTR/MRDFgVp11nRbU/BF8bFbKwXDyvNOONS3Cvz8TdHop5jYu6PoIJMf6ItuUn3ha
	 Vdd9BGccTq8VlQGt636GucbJ+lQljmvVXA99qh6TF7uT10KTrcG6o7pPWIDkqF9Tyu
	 ymWYW0ZG+7LmQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ua1-x933.google.com (mail-ua1-x933.google.com
 [IPv6:2607:f8b0:4864:20::933])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id D2ABF3B2A4;
 Thu, 12 Jan 2023 22:31:48 -0500 (EST)
Received: by mail-ua1-x933.google.com with SMTP id u3so5009792uae.0;
 Thu, 12 Jan 2023 19:31:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=Q5e2rP03gevOj9S+JfMdpAgciQIEt9kx/ReGfrngrtM=;
 b=kLn3wbeXiksE8sqJpqXGdcS6hLuER9oSGWY6Fq6eYFyGqdZueCwKVUk8mjfANPj8Yu
 40mA/Xmkex3Vpp4j+ZBAAXZPg6ZCK+U/slKt2qLA/SQaG/UFQ9SZ7n5OLcF01QVVT/pV
 PbdWdDlYfFMOb2g33zNmuQXJ6uCeqqPd1/09Uci8uJB34jLWmFQYY/nF3xlVXPw8hUrh
 tPD5o1S/kjnVfippNlHRPlgleFgTIj0mSMZIXl5UJi+zvlyMObrR6w3sy4kGx04JYTgT
 LbGTNg19vkLvuuyGD7JJ1CjyasucyjecL/fVgSU0uMlcQkpbotDl36pM47+kQ1xcThtv
 humQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Q5e2rP03gevOj9S+JfMdpAgciQIEt9kx/ReGfrngrtM=;
 b=3/XUvSrWvkRvAqlMdBSwHR3/0LOI+TYTsxBigOSn2XjRpjZ2Wy2EGAojkJip6b+Fey
 gkgGUYYLllBiU5QB9560efUPJPd/LrlSSYjyFAcy0P4ZUfRzBQKzvqsVj+abUh1sbfQv
 HY6xDbroF6QKCwk3v7tf2WCwaJMvrn/BQJuH/0uDMGZ3aXoIA2cWE+SpdmdpiLtU0Kum
 zoPiVitZA3EcbCyisFcmZ5jJbn0SyhVd/0q+QbZW2GFI6PBsPkSNtSlQnpDXnRsg6EEZ
 3F28uUyw8+fdwttBohapcgfLjgDOeuvRvJI0Jg70mbpUe5zYBpHUPU62fTkdoTVQaRgH
 vpBA==
X-Gm-Message-State: AFqh2ko3iKeIbxkfOILPgkip4cY1TJqDuo2iykMSbTYx18FZ3QBdYIfI
 dopjB35wmftTOHFiA4sY4g8VptvIpLeFQYsaKhk=
X-Google-Smtp-Source: AMrXdXupJa8+4DZ+/hfyEavhZRZGrymaIy0PghCfkQF4yNHjOGgIRzTtrlY6qeq70BLRNh2LqijUaODtzDCAx4WmWys=
X-Received: by 2002:ab0:2005:0:b0:5f4:34e9:f5a4 with SMTP id
 v5-20020ab02005000000b005f434e9f5a4mr125075uak.51.1673580708324; Thu, 12 Jan
 2023 19:31:48 -0800 (PST)
MIME-Version: 1.0
References: <CAA93jw4sbPeZ42eTLQzPmg_-viBBtbdQogAMgMNndoEHjY5UNA@mail.gmail.com>
 <CH0PR02MB79809552F1D5CEDB832A8590D3FB9@CH0PR02MB7980.namprd02.prod.outlook.com>
 <fa20576f88b9a1880df67417bea48ba6@rjmcmahon.com>
 <89D796E75967416B9723211C183A8396@SRA6>
 <a082b2436e6ba7892d2de8e0dfcc5acd@rjmcmahon.com>
 <3696AEA5409D4303ABCBC439727A5E40@SRA6>
 <CAKJdXWBb0VxSSoGAQTe3BXFLXCHd6NSspRnXd1frK2f66SLiUw@mail.gmail.com>
 <CAA93jw6B_9-WE9EEFuac+FAH-2dcULk=_3i_HfhCSVSOxyM7Eg@mail.gmail.com>
 <CA+Ld8r8hR8KF35Yv7A3hb1QvC9v9ka2Nh2J=HEm0XhPfvAAcag@mail.gmail.com>
 <CAKJdXWC+aEy1b3vB-FFd+tnfT+Ni5O9bZ+p4kkhj-FzMPVGGcQ@mail.gmail.com>
 <CAA93jw4DcBhA8CevRQoMbzjO-3Jt+emr+xvnJ-hUGkT+n0KJzg@mail.gmail.com>
 <CH0PR02MB79800FF2E40CE037D6802D71D3FD9@CH0PR02MB7980.namprd02.prod.outlook.com>
In-Reply-To: <CH0PR02MB79800FF2E40CE037D6802D71D3FD9@CH0PR02MB7980.namprd02.prod.outlook.com>
Date: Thu, 12 Jan 2023 21:30:24 -0600
Message-ID: <CAKJdXWDrPiELbY1RHL6GEsncTdMVLO9SmNVa_e+LUpnf+GOaqQ@mail.gmail.com>
To: "MORTON JR., AL" <acmorton@att.com>
X-Mailman-Approved-At: Mon, 29 Apr 2024 18:18:51 -0400
Subject: Re: [Cake] [Bloat] [Rpm] [Starlink] [LibreQoS] the grinch meets
 cloudflare'schristmas present
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
From: "Luis A. Cornejo via Cake" <cake@lists.bufferbloat.net>
Reply-To: "Luis A. Cornejo" <luis.a.cornejo@gmail.com>
Cc: Rpm <rpm@lists.bufferbloat.net>, IETF IPPM WG <ippm@ietf.org>,
 libreqos <libreqos@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>,
 Jay Moran <jay@tp.org>, "dickroy@alum.mit.edu" <dickroy@alum.mit.edu>
Content-Type: multipart/mixed; boundary="===============0318001017510376782=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============0318001017510376782==
Content-Type: multipart/alternative; boundary="0000000000009f69e005f21cdf80"

--0000000000009f69e005f21cdf80
Content-Type: text/plain; charset="UTF-8"

Al,

I am not aware of the payload generation.

-Luis

On Thu, Jan 12, 2023 at 11:43 AM MORTON JR., AL <acmorton@att.com> wrote:

> Dave and Luis,
>
> Do you know if any of these tools are using ~random payloads, to defeat
> compression?
>
> UDPST has a CLI option:
> (m)    -X           Randomize datagram payload (else zeroes)
>
> When I used this option testing shipboard satellite access, download was
> about 115kbps.
>
> Al
>
> > -----Original Message-----
> > From: Dave Taht <dave.taht@gmail.com>
> > Sent: Thursday, January 12, 2023 11:12 AM
> > To: Luis A. Cornejo <luis.a.cornejo@gmail.com>
> > Cc: Jay Moran <jay@tp.org>; Cake List <cake@lists.bufferbloat.net>;
> IETF IPPM
> > WG <ippm@ietf.org>; MORTON JR., AL <acmorton@att.com>; Rpm
> > <rpm@lists.bufferbloat.net>; bloat <bloat@lists.bufferbloat.net>;
> > dickroy@alum.mit.edu; libreqos <libreqos@lists.bufferbloat.net>
> > Subject: Re: [Bloat] [Rpm] [Starlink] [LibreQoS] the grinch meets
> > cloudflare'schristmas present
> >
> > Either starlink has vastly improved, or the test is way off in this case.
>

--0000000000009f69e005f21cdf80
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Al,</div><div><br></div><div>I am not aware of the pa=
yload generation.</div><div><br></div><div>-Luis<br></div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jan 12, 2=
023 at 11:43 AM MORTON JR., AL &lt;<a href=3D"mailto:acmorton@att.com">acmo=
rton@att.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">Dave and Luis,<br>
<br>
Do you know if any of these tools are using ~random payloads, to defeat com=
pression?<br>
<br>
UDPST has a CLI option:<br>
(m)=C2=A0 =C2=A0 -X=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Randomize datag=
ram payload (else zeroes)<br>
<br>
When I used this option testing shipboard satellite access, download was ab=
out 115kbps.<br>
<br>
Al<br>
<br>
&gt; -----Original Message-----<br>
&gt; From: Dave Taht &lt;<a href=3D"mailto:dave.taht@gmail.com" target=3D"_=
blank">dave.taht@gmail.com</a>&gt;<br>
&gt; Sent: Thursday, January 12, 2023 11:12 AM<br>
&gt; To: Luis A. Cornejo &lt;<a href=3D"mailto:luis.a.cornejo@gmail.com" ta=
rget=3D"_blank">luis.a.cornejo@gmail.com</a>&gt;<br>
&gt; Cc: Jay Moran &lt;<a href=3D"mailto:jay@tp.org" target=3D"_blank">jay@=
tp.org</a>&gt;; Cake List &lt;<a href=3D"mailto:cake@lists.bufferbloat.net"=
 target=3D"_blank">cake@lists.bufferbloat.net</a>&gt;; IETF IPPM<br>
&gt; WG &lt;<a href=3D"mailto:ippm@ietf.org" target=3D"_blank">ippm@ietf.or=
g</a>&gt;; MORTON JR., AL &lt;<a href=3D"mailto:acmorton@att.com" target=3D=
"_blank">acmorton@att.com</a>&gt;; Rpm<br>
&gt; &lt;<a href=3D"mailto:rpm@lists.bufferbloat.net" target=3D"_blank">rpm=
@lists.bufferbloat.net</a>&gt;; bloat &lt;<a href=3D"mailto:bloat@lists.buf=
ferbloat.net" target=3D"_blank">bloat@lists.bufferbloat.net</a>&gt;;<br>
&gt; <a href=3D"mailto:dickroy@alum.mit.edu" target=3D"_blank">dickroy@alum=
.mit.edu</a>; libreqos &lt;<a href=3D"mailto:libreqos@lists.bufferbloat.net=
" target=3D"_blank">libreqos@lists.bufferbloat.net</a>&gt;<br>
&gt; Subject: Re: [Bloat] [Rpm] [Starlink] [LibreQoS] the grinch meets<br>
&gt; cloudflare&#39;schristmas present<br>
&gt; <br>
&gt; Either starlink has vastly improved, or the test is way off in this ca=
se.<br>
</blockquote></div>

--0000000000009f69e005f21cdf80--

--===============0318001017510376782==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============0318001017510376782==--
