Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B7ACB032ED
	for <lists+cake@lfdr.de>; Sun, 13 Jul 2025 22:36:37 +0200 (CEST)
ARC-Seal: i=1; d=toke.dk; s=arc202507; a=rsa-sha256; cv=none; t=1752438991;
	b=bXKzpKPMTnyWjREQGUCepZQu+xVYPDMhfiPYyMaX/iaZwwV18A/2nUbXyPcvxwWekCWs
	 S+WKusKV9mTaYvBfFu6QvOnVK2QirQ6RnJ1gv1WBdqUsmjDzyXcJ8ytmuLaj0SsarWIO3
	 lgdfNeczf8HO6fi6nqUuuGZeTEZgAZzDls=
ARC-Message-Signature: i=1; d=toke.dk; s=arc202507; a=rsa-sha256;
	c=relaxed/simple; t=1752438991;
	h=Received:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Google-Smtp-Source:
	 X-Received:MIME-Version:References:In-Reply-To:From:Date:
	 X-Gm-Features:Message-ID:To:Cc:Message-ID-Hash:X-Message-ID-Hash:
	 X-MailFrom:X-Mailman-Rule-Misses:X-Mailman-Version:Precedence:Subject:
	 List-Id:Archived-At:List-Archive:List-Help:List-Owner:List-Post:
	 List-Subscribe:List-Unsubscribe:Content-Type;
	bh=p3xrhTc1w+ewb7X32PrWV0No43HQmxqxzh1AYIPcaVw=;
	b=Exur6dMHh/uZxNvXG8yddRPpoIui060PJ+ypcgnnAiC95qBplL28l5qQRzkzHSLxt3FC
	 t7K8cocB4yUoJr5Ice4aHdA6DYIonqV3HC9DDip03rLmlZyzv3ZoP8oAPdW4H60/VZQdO
	 +eqae3DydlFRh25WP9FozYnEQ2OF+axUgQ=
ARC-Authentication-Results: i=1; mail.toke.dk; dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=ASF0IMdA;
	arc=none smtp.remote-ip="::1"
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 9C85FB62006;
	Sun, 13 Jul 2025 22:36:31 +0200 (CEST)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=ASF0IMdA
Authentication-Results: mail.toke.dk;
 arc=none smtp.remote-ip="2a00:1450:4864:20::636"
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
	by mail.toke.dk (Postfix) with ESMTPS id 62948B61F7F;
	Sun, 13 Jul 2025 22:35:57 +0200 (CEST)
Received: by mail-ej1-x636.google.com with SMTP id
 a640c23a62f3a-ae0dffaa8b2so732564766b.0;
        Sun, 13 Jul 2025 13:35:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752438897; x=1753043697;
 darn=lists.bufferbloat.net;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=fKSPaUPl2QvhKbzmBIuuX5fqYBCeCixgSvFI/elkpH0=;
        b=ASF0IMdAwxGC05evKLEhoCDoIvCcfaLrm9jCDGvQMQdYxL3ZZZZsGYdaKb36O4Ozdl
         9rf26h31HEeYB3WWlEViAgcd0pG5VBH52C3EWWHbaHSehpqC0fy5ZmOiG5HM7zIzUKOG
         NTu+N7wszw2sRC1IbDBWVGhOXEfuTXfyBSh78mp0owHD61d7cpD4oFro996hXdtKQVtl
         INQVBOa2znHbSYGtp/8ezlYVy5f9y0CU4gPs4fXfGB0+dKqVLxxK2hWWtUJ4bsy+lxv8
         YQ1AnFqQH73k20Z4Ynkt828J7JsVzGd7uW1rsVzchLU0gasXAZQs7+ZY6kX/0O96cPG2
         fk4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752438897; x=1753043697;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fKSPaUPl2QvhKbzmBIuuX5fqYBCeCixgSvFI/elkpH0=;
        b=pxJBt7sBpD1J2UIn9eERGBS13sdGgbCAkO9ouLjqF207W4OHnabpnfYmbThjqE5R2N
         jYQM5nh2QKQlfHxf71lgQDgpDZqSFi72JHwsjAj/lvNP1DXxyYUiMFPmQu5MBlLi4fLU
         5r2wgIlkUJCmnj/fG0VdJ6psUPV1nIMa1MamYcy+zAx8j3xjutJqGcBFBD0V0lq3uDRr
         /t/rk3oCd0wWR3GHrpfCCq81cwKBgmVBwjB9f6hHxFNORLA+CPfQdCQtmwW7ZOykN7QI
         TW+Wo6jt7Fs0vQaX3gORI6REzpGeB0ThaiWxilwFle43FJ5gHKWPDK71vgCI0v/WzNT7
         Qf1A==
X-Forwarded-Encrypted: i=1;
 AJvYcCUDHMJL/CEacVhwRl6L17B/vkeBVWKgZi4pB5l/W9edkhVH3Sd35aYr9KiEpu3itOss/S0mThsvOb4=@lists.bufferbloat.net,
 AJvYcCUI7oP3f/CTSY3kBTImPiHTlWOwtjbhasTnf32YTVb9ip7IhFQbOAzcnYk20aObIohVS3pJ@lists.bufferbloat.net,
 AJvYcCUg9dzzkgGaafr2Dn10Ao0pPKGUgHWTsUN9NzJg/wl3fl5cHFPjJdgRg7ElykQEk1ncMZiVfcbRwA==@lists.bufferbloat.net,
 AJvYcCVBPry0xjnemLUtw3WOnNpIw5zg1AcDGvrpg9ZiEWzNUWAo3D3w+SLM8LYvs2yeCw0CUG18/3A=@lists.bufferbloat.net,
 AJvYcCVWYM075/ucRW/iBcirScgKJiJrWJ8VxlTIym4yTRiumDOzH9K/H87NbP1MD8PdDBBQdbupzH+B1tFkTUwtHQ==@lists.bufferbloat.net,
 AJvYcCWZZHNSOcqAWNKpDtH4DEtb/CjcjWxKjZy2e4XTJ3j9LktA8B+3v0GVyue6l8ds7T9ltFGFUe3/yRuQx42Gd/w=@lists.bufferbloat.net,
 AJvYcCWdgA/Uga80ll2SIipEnkZvd8N4ZUsx9wLhOtX/sNzqEQ4LoQIPfvfwbE8UwDzj4Cuhn1+aqEjisJc=@lists.bufferbloat.net,
 AJvYcCXDrsiAnaPbpQ3nAXW74GpG7A9iWrElEi1NwwAb2uyqYUL+TPc8C/I2uE6nMEWwExQSTcgK@lists.bufferbloat.net,
 AJvYcCXX4JNH8KZ2JI/jrT06LlUJhTghTnme3GtCEB8TJXcmuKdJDx7Z2rpfCFgaNflu3A4Xj4kZ4blvGvA=@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YypqP0si/aRc9xEXbZ5mMXrDFP2fdTFF1OkIz5jm+mnCvivsTEH
	1Css49P/rSGvsjDd8xkc4aKMNsWoO7P0YtKM9sbnMWEYmX7J5N/q8Ux4z3SzK2VTpn0akVJ51dm
	DI8DP7IIWRH9CgjmdIBoeHTujXesfJKc=
X-Gm-Gg: ASbGnctPTgDEq/rFHCeqXknJBpPSuhnsOBIBL1UFOeOveR2m3RDES0cJzqNTsflqvFD
	A8zf3fwO10WqnoGj1CkDWBWjpF4hMjdkFbB5JEKV0j1JeEUZPV0IThI+ToRYnDL2zp1i1cQpqq9
	qTSH7koG7GpmhvrpBAkSA44tkPgVcBWG2IWCNxfm5B3tpuIzo2nvqO+PHZ77MjcigGs80EuzF0Q
	5KAKFK7JesQ1uugmuA/Z/ZmqxK/1A4MTu/Kh4gJdZL7lqvXPEta
X-Google-Smtp-Source: 
 AGHT+IEnyHKqpC80uGECCfRR2aezFkdYyFyqxaMC5/1ViQOsUiui9q6+oukrf+jq/sU3Hiwh/U9RFKH6AybiXoPxW00=
X-Received: by 2002:a17:907:6d12:b0:add:f191:d851 with SMTP id
 a640c23a62f3a-ae6fbf26d3dmr1066264566b.32.1752438896610; Sun, 13 Jul 2025
 13:34:56 -0700 (PDT)
MIME-Version: 1.0
References: <87h5zg0xyg.fsf@toke.dk>
In-Reply-To: <87h5zg0xyg.fsf@toke.dk>
From: dave seddon <dave.seddon.ca@gmail.com>
Date: Sun, 13 Jul 2025 13:34:47 -0700
X-Gm-Features: Ac12FXw4BJ4YYgGHz_bVqPMsQ-8YZyGyEL14JsfdrgaAgC9XjUhK7NiDs4zsTmA
Message-ID: 
 <CANypexSfiDYsSohFASw1ioiAmxAi=8N39+DbXvT1JhZmc2JQOg@mail.gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@toke.dk>
Cc: bloat <bloat@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>,
	cerowrt-devel@lists.bufferbloat.net, codel@lists.bufferbloat.net,
	ecn-sane@lists.bufferbloat.net, libreqos <libreqos@lists.bufferbloat.net>,
	Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 nnagain@lists.bufferbloat.net,
	Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
	Dave Taht via Starlink <starlink@lists.bufferbloat.net>
Message-ID-Hash: PYEX4ERLI7DTEGG56OFJYNZIDQVIUE7A
X-Message-ID-Hash: PYEX4ERLI7DTEGG56OFJYNZIDQVIUE7A
X-MailFrom: dave.seddon.ca@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: Mailing list migration complete
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/CANypexSfiDYsSohFASw1ioiAmxAi=8N39+DbXvT1JhZmc2JQOg@mail.gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============3809155775197052011=="

--===============3809155775197052011==
Content-Type: multipart/alternative; boundary="000000000000ec53fb0639d5796a"

--000000000000ec53fb0639d5796a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Well done =F0=9F=91=8D

On Sun, Jul 13, 2025, 11:04 Toke H=C3=B8iland-J=C3=B8rgensen via Cake <
cake@lists.bufferbloat.net> wrote:

> Hi folks
>
> The mailing list migration is now complete, and everything should be up
> and running on my mail server. Please let me know of any oddities or
> weird failures you encounter.
>
> List archives are available for all lists at the toplevel URL:
> https://lists.bufferbloat.net/
>
> The archives are based on the public-inbox archiver[0], also used by the
> Lore email archives for the Linux kernel lists. This means that the
> archives are git repositories under the hood, and can be easily
> mirrored. I very much encourage anyone who can to set up a mirror (see
> instructions at the "mirroring instructions" link at the bottom of each
> list archive page). If you do, and want the mirror linked from the list
> description, let me know!
>
> -Toke
>
> [0] https://public-inbox.org/
> _______________________________________________
> Cake mailing list -- cake@lists.bufferbloat.net
> To unsubscribe send an email to cake-leave@lists.bufferbloat.net
>

--000000000000ec53fb0639d5796a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Well done =F0=9F=91=8D=C2=A0</div></div><br><div cla=
ss=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Sun, Jul 13, 2025, 11:04 Toke H=C3=B8iland-J=C3=B8rgensen via Cake &=
lt;<a href=3D"mailto:cake@lists.bufferbloat.net">cake@lists.bufferbloat.net=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi folks<br>
<br>
The mailing list migration is now complete, and everything should be up<br>
and running on my mail server. Please let me know of any oddities or<br>
weird failures you encounter.<br>
<br>
List archives are available for all lists at the toplevel URL:<br>
<a href=3D"https://lists.bufferbloat.net/" rel=3D"noreferrer noreferrer" ta=
rget=3D"_blank">https://lists.bufferbloat.net/</a><br>
<br>
The archives are based on the public-inbox archiver[0], also used by the<br=
>
Lore email archives for the Linux kernel lists. This means that the<br>
archives are git repositories under the hood, and can be easily<br>
mirrored. I very much encourage anyone who can to set up a mirror (see<br>
instructions at the &quot;mirroring instructions&quot; link at the bottom o=
f each<br>
list archive page). If you do, and want the mirror linked from the list<br>
description, let me know!<br>
<br>
-Toke<br>
<br>
[0] <a href=3D"https://public-inbox.org/" rel=3D"noreferrer noreferrer" tar=
get=3D"_blank">https://public-inbox.org/</a><br>
_______________________________________________<br>
Cake mailing list -- <a href=3D"mailto:cake@lists.bufferbloat.net" target=
=3D"_blank" rel=3D"noreferrer">cake@lists.bufferbloat.net</a><br>
To unsubscribe send an email to <a href=3D"mailto:cake-leave@lists.bufferbl=
oat.net" target=3D"_blank" rel=3D"noreferrer">cake-leave@lists.bufferbloat.=
net</a><br>
</blockquote></div>

--000000000000ec53fb0639d5796a--

--===============3809155775197052011==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net

--===============3809155775197052011==--
