Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D2531F078
	for <lists+cake@lfdr.de>; Thu, 18 Feb 2021 20:55:54 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A18E63CB38;
	Thu, 18 Feb 2021 14:55:53 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1613678153;
	bh=VWk9BTPmRHklPaRGV4OwFne3EFK49fDwJUC7B8lpfpM=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TqElPpqf9jkDU7ix46kfYPBD4MWYZPCvNcfD+ykFiVNgW9GDFOOpbg3gAOXk6qfQx
	 j/S2oqMje26hBbO4Qt5k88eq+9YTbVDcQgiligMAJD0YlJBezRIsevdOnOURfuIhAc
	 ywu8I7amO1GHGN9BgyOyrq0avrHvE8ZYF4lZVRy76zeiySGswltuIiJEmo0i/tu7L2
	 vgr2d6pZqlBl+7MONAyy+MKL7RvPKO9KyeKy+JFkZXV9t2bzVn4rTFYq+E8ydlZbmE
	 u+xGxENt95M6wZ/DVghx+Bv9tBcbvpdI9j/gAt7QhHkPefkDcCLZVXYUwaaYHpxmkS
	 aNT9+NNs15m0g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com
 [IPv6:2a00:1450:4864:20::22c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id BD73A3B29D
 for <cake@lists.bufferbloat.net>; Thu, 18 Feb 2021 14:55:51 -0500 (EST)
Received: by mail-lj1-x22c.google.com with SMTP id g1so1822979ljj.13
 for <cake@lists.bufferbloat.net>; Thu, 18 Feb 2021 11:55:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Qe8KB2+DvW2giMyXBlBYmPrGltGYRgduS1NojKbJ7IY=;
 b=D3/7xka1zNYx5Uu1vzkf9eamw0TIgmCKcVwGn6iiD/x32MUEEDSzgE7WWjEtY4vylO
 bLnN4D0dpfd2SEkje+YKdvMctOIrePigrf3+KIZ7QpnxalRAHsEuldESJ9YGa/zlzbts
 WgSVdOjAVhQS76IIyc8syJq6iKBEJ/rV7aMcDE2J4eJf89740GVRl0FER3ITnyb5TSmv
 hE3o9MYTJRTWCb1M6rpTYIZXKGXs1AdRpeIGU58v6r8DKtWalJmlme/bsXNuNBzTe/Do
 SPy5fk22zRy04IQH0aCYyqThTs6g9i8ckm43n1lQo5Qrvu5G1LDCLu4ENRmJq5QAIgiZ
 K8JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Qe8KB2+DvW2giMyXBlBYmPrGltGYRgduS1NojKbJ7IY=;
 b=EUHP7/uZy98kfBMRMa5pg19LtRWEd3TKSK3KcEuH6E2pTDjCaWq17VCrDztTv8NqiN
 P660QC6EtLd2nzbZLnSA3W64nnh3H1C/2XZAZcV7ACJqTx3CGUgfG+aQepaI16nsLW4/
 Bg3SgyJDL6vOEPTmaAcGPUBEBUEiqICvZSxPuuL5T+ecPli132vV6I13D7KA+OlMp/un
 N+yYVDnQQx3s8pATBBg8REgModxNikd3M5XpT/JI5z0ZF7Ufs1HkgL2U8DtCaVdXSZxu
 xsyyY08ThdqXqOx5EVPOLqHI+GpJHBwNfchFihN9aSl2U68X+rd7idfocj+k0jY0saCf
 s1Mw==
X-Gm-Message-State: AOAM5306GUkJ7bhjydfvVXz4FNjdHmrki3Qg5VV9pHJkClP8HT+CsTxU
 1Ogzeogv50u8pS+Yi9OX0MeIvHo7VJLvxY561e4=
X-Google-Smtp-Source: ABdhPJwOrIq+dKTEekAnwIzZaniQ+BybqZhEJ5NcJepGZmJedZBNCODqrKvbU02WNXVgnxXQesyOc+moLYLAukFu62E=
X-Received: by 2002:ac2:4850:: with SMTP id 16mr1103110lfy.493.1613678150630; 
 Thu, 18 Feb 2021 11:55:50 -0800 (PST)
MIME-Version: 1.0
References: <CANmPAYHxP9mdmPMsvR=bi=TSNi9+0HbZGz0r89zOLbe3dAyk-Q@mail.gmail.com>
 <87mtw1kx9c.fsf@toke.dk>
 <CANmPAYHFrtbLhGZ1yXNzsaGGf8gP09ap_vUCMX9ggbSRUcpRFg@mail.gmail.com>
 <87im6pkweq.fsf@toke.dk>
 <CANmPAYFviqW_FekQ-xag-i1qhZ1JHP71MvB+M-qFKdOXLKEUaw@mail.gmail.com>
In-Reply-To: <CANmPAYFviqW_FekQ-xag-i1qhZ1JHP71MvB+M-qFKdOXLKEUaw@mail.gmail.com>
From: N0man Tech <n0manletter@gmail.com>
Date: Thu, 18 Feb 2021 14:55:39 -0500
Message-ID: <CA+sFVOeAYDk2bm80UWOBZLa+aL=MZba0SX==6-TNXZS6XKgbyw@mail.gmail.com>
To: Peter Lepeska <bizzbyster@gmail.com>
Subject: Re: [Cake] Enforcing video quality question
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
Cc: cake@lists.bufferbloat.net
Content-Type: multipart/mixed; boundary="===============4061894168570156818=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============4061894168570156818==
Content-Type: multipart/alternative; boundary="000000000000f340ce05bba1b8fb"

--000000000000f340ce05bba1b8fb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Try looking at fireqos, a component of firehol. It can do per-device limits
via a config file.

The developers provide an OpenWrt package and you can change the default
qdisc to Cake and modify Cake settings.

On Thu, Feb 18, 2021 at 2:43 PM Peter Lepeska <bizzbyster@gmail.com> wrote:

> Ok that makes sense. I'll do some reading. Thank you!
>
> On Thu, Feb 18, 2021 at 2:28 PM Toke H=C3=B8iland-J=C3=B8rgensen <toke@to=
ke.dk>
> wrote:
>
>> Peter Lepeska <bizzbyster@gmail.com> writes:
>>
>> > A user on the OpenWrt forum suggested hashlimit rules supported by
>> > iptables. How does that idea sound to you?
>>
>> That will result in a cliff-edge policer (i.e., as soon as a device goes
>> over its limits it will see every packet get dropped). This doesn't
>> interact too well with the burstiness of TCP, so you'll likely get
>> erratic behaviour of the traffic if you do that. Doing the same thing
>> with HTB means the router will queue+shape each class (and with FQ-CoDel
>> on the leaves, you'll get a nice AQM behaviour as well), so that will be
>> smoother and less prone to bloat :)
>>
>> -Toke
>>
> _______________________________________________
> Cake mailing list
> Cake@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/cake
>

--000000000000f340ce05bba1b8fb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Try looking at fireqos, a component of firehol. It can do=
 per-device limits via a config file.</div><div dir=3D"auto"><br></div><div=
 dir=3D"auto">The developers provide an OpenWrt package and you can change =
the default qdisc to Cake and modify Cake settings.</div><div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 18, 202=
1 at 2:43 PM Peter Lepeska &lt;<a href=3D"mailto:bizzbyster@gmail.com">bizz=
byster@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:s=
olid;padding-left:1ex;border-left-color:rgb(204,204,204)"><div dir=3D"ltr">=
Ok that makes sense. I&#39;ll do some reading. Thank you!</div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 18, 20=
21 at 2:28 PM Toke H=C3=B8iland-J=C3=B8rgensen &lt;<a href=3D"mailto:toke@t=
oke.dk" target=3D"_blank">toke@toke.dk</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1=
px;border-left-style:solid;padding-left:1ex;border-left-color:rgb(204,204,2=
04)">Peter Lepeska &lt;<a href=3D"mailto:bizzbyster@gmail.com" target=3D"_b=
lank">bizzbyster@gmail.com</a>&gt; writes:<br>
<br>
&gt; A user on the OpenWrt forum suggested hashlimit rules supported by<br>
&gt; iptables. How does that idea sound to you?<br>
<br>
That will result in a cliff-edge policer (i.e., as soon as a device goes<br=
>
over its limits it will see every packet get dropped). This doesn&#39;t<br>
interact too well with the burstiness of TCP, so you&#39;ll likely get<br>
erratic behaviour of the traffic if you do that. Doing the same thing<br>
with HTB means the router will queue+shape each class (and with FQ-CoDel<br=
>
on the leaves, you&#39;ll get a nice AQM behaviour as well), so that will b=
e<br>
smoother and less prone to bloat :)<br>
<br>
-Toke<br>
</blockquote></div>
_______________________________________________<br>
Cake mailing list<br>
<a href=3D"mailto:Cake@lists.bufferbloat.net" target=3D"_blank">Cake@lists.=
bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/cake" rel=3D"noreferrer" =
target=3D"_blank">https://lists.bufferbloat.net/listinfo/cake</a><br>
</blockquote></div></div>

--000000000000f340ce05bba1b8fb--

--===============4061894168570156818==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============4061894168570156818==--
