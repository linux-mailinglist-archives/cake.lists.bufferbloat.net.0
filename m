Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B561396C2FF
	for <lists+cake@lfdr.de>; Wed,  4 Sep 2024 17:53:15 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 0F4F13CB4E;
	Wed,  4 Sep 2024 11:53:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1725465194;
	bh=FhVUf1GVZuk6nvKB8dGzLtsmZWA9Bq/63B78lgnfj30=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=awNBOa18BLnJwaoXJiQgl3CNmrrDV6uDE5UAtk1T/G/G2Ak9zrhQ+KJLEgCnfrh1o
	 6eADZ2IiNAMla5Di0Y2tnbQR/glsadXYaH5S7GPWTQGDlLWv35Gk310n06LBXO6fNU
	 MaeOZ9kRUtLm7vZLWnm4z9rc34ALvngHpmn9Ok4OxmYYheb5j5REjhFPvCXLWhfhZc
	 R2JI9nKhyMEFurV+sBg+JYFIndGjWPDkBgS9VOf7ElTKaEn2B3D9QFv3YkCzWkb1zD
	 NCzGefbTicIR3ozHWBe4At81M7sBudpxRFPQjC42kyxPqtVxKjcEETooYA+/uMhS54
	 4AnV7s+jh9YdQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-oa1-x29.google.com (mail-oa1-x29.google.com
 [IPv6:2001:4860:4864:20::29])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id CDD803B2A4
 for <cake@lists.bufferbloat.net>; Wed,  4 Sep 2024 11:53:12 -0400 (EDT)
Received: by mail-oa1-x29.google.com with SMTP id
 586e51a60fabf-2781cb2800eso1224568fac.1
 for <cake@lists.bufferbloat.net>; Wed, 04 Sep 2024 08:53:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1725465192; x=1726069992; darn=lists.bufferbloat.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=AmZMuXD+zLx3J5ibAWIgkFhxjB++JPWWW7xgelCddUc=;
 b=gesc2fIgXYqogdYM5BgYlRWDvksWK3KPIIDJ5N0gRYjkKX2gBciT3NnvmqGVTUpGN0
 VjPXPHiRtaA04GhlXxKEsUSH4P0Ixek29lRSCt7xsswIGV1ehFLZgalQRI/8HueLZw5C
 +dcPhTNBGSMivr9x+RccnmP9g1skoEO0P8xvBzODCKVFKpntUieArGbbwIne1wuGd8+W
 9DxhM6t66KjODXf1uUcQUQJGBmQRvwIJZ//q69Xh9Mnv2cPZkM+JbUTmVkBi+Lh4/gtg
 JJBjwqyXb4hluVYkLbYs350O2JkeGY5T3qkm/Nf4JlGFjlEqWM5SGFApDv+qR1+3Pugs
 ngxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725465192; x=1726069992;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=AmZMuXD+zLx3J5ibAWIgkFhxjB++JPWWW7xgelCddUc=;
 b=bbu73Aj74/iwiiHF7x22uJ4YRXCuJIbYPSSRj0cG2Avkc/t6m6lZQk2lGD4KTmDa+H
 aauerZ8ybPYYBGY8JlpZaD/6h3c0NO5519JrYTIH0F1qNrrHWeKzJA1g2nsQ2UM/jMJw
 6bRLeIcJupU1Fgm74jpy8Rx/qacOSo33AykcqL7k3HNr4q/G8B+NHTxcVswfkAdxpPeO
 yB/EQI6qOSKh4wQwtFEq0731uj6i1VHeq3Y5aX1eQ/hYUGtDtWvfT2HXpTiDF7hSsEIh
 KEm37JSwUzDwbQP/2a5TZZ8hAiiw8GaKzCfqlh5sU3N1Mg7nfykYiuJG8Pzq0WztWLis
 wb2w==
X-Forwarded-Encrypted: i=1;
 AJvYcCWBlGHMXR9kyiNk+6xMd+ODjpEpJzLOIlxeR6OabYG9IvYL+rvpdxV3cG24Pp0y29I1t7xD@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Yw8d8iBFb2YJecT589ZCyAfBHXYq5ihUMycP49xGcFOfs3+zRug
 nRTGv6u9ib2eSUD7DrqTXz4zR+1i7oDEvEp2aZrR5TQr3gZ/QHr35/33+kHkhvE1UUqVgTKvtgd
 WKHiSqRIxQplPJJMMhkQAozCZB4M=
X-Google-Smtp-Source: AGHT+IFqRW6Fsh/KXiym4501b7kvcTgMeAY9v6U/rnww2u8jEaoIJ8CjiDZ77A8r1ESTqtSHqI+4ZBdwcofy/8wohvg=
X-Received: by 2002:a05:6870:568b:b0:277:c0a9:f00d with SMTP id
 586e51a60fabf-277ccb0c9f5mr16706971fac.4.1725465192056; Wed, 04 Sep 2024
 08:53:12 -0700 (PDT)
MIME-Version: 1.0
References: <20240904100516.16926-1-toke@redhat.com>
In-Reply-To: <20240904100516.16926-1-toke@redhat.com>
Date: Wed, 4 Sep 2024 08:52:59 -0700
Message-ID: <CAA93jw5T57TXEHzEeEmDnJTrYS45-V3kDR9wGcws__SxaiGZFA@mail.gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
Subject: Re: [Cake] [PATCH net-next] sch_cake: constify inverse square root
	cache
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
From: Dave Taht via Cake <cake@lists.bufferbloat.net>
Reply-To: Dave Taht <dave.taht@gmail.com>
Cc: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 Jamal Hadi Salim <jhs@mojatatu.com>, cake@lists.bufferbloat.net,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Cong Wang <xiyou.wangcong@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: multipart/mixed; boundary="===============8867855864454963496=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============8867855864454963496==
Content-Type: multipart/alternative; boundary="000000000000d851c306214d2bc1"

--000000000000d851c306214d2bc1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

although REC_INV_SQRT_CACHE can just be pulled from the const size rather
than a define...

Acked-By: Dave Taht <dave.taht@gmail.com>

On Wed, Sep 4, 2024 at 3:05=E2=80=AFAM Toke H=C3=B8iland-J=C3=B8rgensen <to=
ke@redhat.com>
wrote:

> From: Dave Taht <dave.taht@gmail.com>
>
> sch_cake uses a cache of the first 16 values of the inverse square root
> calculation for the Cobalt AQM to save some cycles on the fast path.
> This cache is populated when the qdisc is first loaded, but there's
> really no reason why it can't just be pre-populated. So change it to be
> pre-populated with constants, which also makes it possible to constify
> it.
>
> This gives a modest space saving for the module (not counting debug data)=
:
> .text:  -224 bytes
> .rodata: +80 bytes
> .bss:    -64 bytes
> Total:  -192 bytes
>
> Signed-off-by: Dave Taht <dave.taht@gmail.com>
> [ fixed up comment, rewrote commit message ]
> Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
> ---
>  net/sched/sch_cake.c | 53 +++++++++++++++-----------------------------
>  1 file changed, 18 insertions(+), 35 deletions(-)
>
> diff --git a/net/sched/sch_cake.c b/net/sched/sch_cake.c
> index 9602dafe32e6..a51c43bde0de 100644
> --- a/net/sched/sch_cake.c
> +++ b/net/sched/sch_cake.c
> @@ -361,8 +361,24 @@ static const u8 besteffort[] =3D {
>  static const u8 normal_order[] =3D {0, 1, 2, 3, 4, 5, 6, 7};
>  static const u8 bulk_order[] =3D {1, 0, 2, 3};
>
> +/* There is a big difference in timing between the accurate values place=
d
> in the
> + * cache and the approximations given by a single Newton step for small
> count
> + * values, particularly when stepping from count 1 to 2 or vice versa.
> Hence,
> + * these values are calculated using eight Newton steps, using the
> implementation
> + * below. Above 16, a single Newton step gives sufficient accuracy in
> either
> + * direction, given the precision stored.
> + *
> + * The magnitude of the error when stepping up to count 2 is such as to
> give
> + * the value that *should* have been produced at count 4.
> + */
> +
>  #define REC_INV_SQRT_CACHE (16)
> -static u32 cobalt_rec_inv_sqrt_cache[REC_INV_SQRT_CACHE] =3D {0};
> +static const u32 inv_sqrt_cache[REC_INV_SQRT_CACHE] =3D {
> +               ~0,         ~0, 3037000500, 2479700525,
> +       2147483647, 1920767767, 1753413056, 1623345051,
> +       1518500250, 1431655765, 1358187914, 1294981364,
> +       1239850263, 1191209601, 1147878294, 1108955788
> +};
>
>  /* http://en.wikipedia.org/wiki/Methods_of_computing_square_roots
>   * new_invsqrt =3D (invsqrt / 2) * (3 - count * invsqrt^2)
> @@ -388,47 +404,14 @@ static void cobalt_newton_step(struct cobalt_vars
> *vars)
>  static void cobalt_invsqrt(struct cobalt_vars *vars)
>  {
>         if (vars->count < REC_INV_SQRT_CACHE)
> -               vars->rec_inv_sqrt =3D
> cobalt_rec_inv_sqrt_cache[vars->count];
> +               vars->rec_inv_sqrt =3D inv_sqrt_cache[vars->count];
>         else
>                 cobalt_newton_step(vars);
>  }
>
> -/* There is a big difference in timing between the accurate values place=
d
> in
> - * the cache and the approximations given by a single Newton step for
> small
> - * count values, particularly when stepping from count 1 to 2 or vice
> versa.
> - * Above 16, a single Newton step gives sufficient accuracy in either
> - * direction, given the precision stored.
> - *
> - * The magnitude of the error when stepping up to count 2 is such as to
> give
> - * the value that *should* have been produced at count 4.
> - */
> -
> -static void cobalt_cache_init(void)
> -{
> -       struct cobalt_vars v;
> -
> -       memset(&v, 0, sizeof(v));
> -       v.rec_inv_sqrt =3D ~0U;
> -       cobalt_rec_inv_sqrt_cache[0] =3D v.rec_inv_sqrt;
> -
> -       for (v.count =3D 1; v.count < REC_INV_SQRT_CACHE; v.count++) {
> -               cobalt_newton_step(&v);
> -               cobalt_newton_step(&v);
> -               cobalt_newton_step(&v);
> -               cobalt_newton_step(&v);
> -
> -               cobalt_rec_inv_sqrt_cache[v.count] =3D v.rec_inv_sqrt;
> -       }
> -}
> -
>  static void cobalt_vars_init(struct cobalt_vars *vars)
>  {
>         memset(vars, 0, sizeof(*vars));
> -
> -       if (!cobalt_rec_inv_sqrt_cache[0]) {
> -               cobalt_cache_init();
> -               cobalt_rec_inv_sqrt_cache[0] =3D ~0;
> -       }
>  }
>
>  /* CoDel control_law is t + interval/sqrt(count)
> --
> 2.46.0
>
>

--=20
Artists/Musician Campout Aug 9-11
https://www.eventbrite.com/e/healing-arts-event-tickets-928910826287
Dave T=C3=A4ht CSO, LibreQos

--000000000000d851c306214d2bc1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">although=C2=A0REC_INV_SQRT_CACHE can just be pulled from t=
he const size rather than a define...<div><br></div><div>Acked-By: Dave Tah=
t &lt;<a href=3D"mailto:dave.taht@gmail.com">dave.taht@gmail.com</a>&gt;</d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Wed, Sep 4, 2024 at 3:05=E2=80=AFAM Toke H=C3=B8iland-J=C3=B8rgensen =
&lt;<a href=3D"mailto:toke@redhat.com">toke@redhat.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">From: Dave Taht &lt;<=
a href=3D"mailto:dave.taht@gmail.com" target=3D"_blank">dave.taht@gmail.com=
</a>&gt;<br>
<br>
sch_cake uses a cache of the first 16 values of the inverse square root<br>
calculation for the Cobalt AQM to save some cycles on the fast path.<br>
This cache is populated when the qdisc is first loaded, but there&#39;s<br>
really no reason why it can&#39;t just be pre-populated. So change it to be=
<br>
pre-populated with constants, which also makes it possible to constify<br>
it.<br>
<br>
This gives a modest space saving for the module (not counting debug data):<=
br>
.text:=C2=A0 -224 bytes<br>
.rodata: +80 bytes<br>
.bss:=C2=A0 =C2=A0 -64 bytes<br>
Total:=C2=A0 -192 bytes<br>
<br>
Signed-off-by: Dave Taht &lt;<a href=3D"mailto:dave.taht@gmail.com" target=
=3D"_blank">dave.taht@gmail.com</a>&gt;<br>
[ fixed up comment, rewrote commit message ]<br>
Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen &lt;<a href=3D"mailto:toke@=
redhat.com" target=3D"_blank">toke@redhat.com</a>&gt;<br>
---<br>
=C2=A0net/sched/sch_cake.c | 53 +++++++++++++++----------------------------=
-<br>
=C2=A01 file changed, 18 insertions(+), 35 deletions(-)<br>
<br>
diff --git a/net/sched/sch_cake.c b/net/sched/sch_cake.c<br>
index 9602dafe32e6..a51c43bde0de 100644<br>
--- a/net/sched/sch_cake.c<br>
+++ b/net/sched/sch_cake.c<br>
@@ -361,8 +361,24 @@ static const u8 besteffort[] =3D {<br>
=C2=A0static const u8 normal_order[] =3D {0, 1, 2, 3, 4, 5, 6, 7};<br>
=C2=A0static const u8 bulk_order[] =3D {1, 0, 2, 3};<br>
<br>
+/* There is a big difference in timing between the accurate values placed =
in the<br>
+ * cache and the approximations given by a single Newton step for small co=
unt<br>
+ * values, particularly when stepping from count 1 to 2 or vice versa. Hen=
ce,<br>
+ * these values are calculated using eight Newton steps, using the impleme=
ntation<br>
+ * below. Above 16, a single Newton step gives sufficient accuracy in eith=
er<br>
+ * direction, given the precision stored.<br>
+ *<br>
+ * The magnitude of the error when stepping up to count 2 is such as to gi=
ve<br>
+ * the value that *should* have been produced at count 4.<br>
+ */<br>
+<br>
=C2=A0#define REC_INV_SQRT_CACHE (16)<br>
-static u32 cobalt_rec_inv_sqrt_cache[REC_INV_SQRT_CACHE] =3D {0};<br>
+static const u32 inv_sqrt_cache[REC_INV_SQRT_CACHE] =3D {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0~0,=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0~0, 3037000500, 2479700525,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A02147483647, 1920767767, 1753413056, 1623345051,=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A01518500250, 1431655765, 1358187914, 1294981364,=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A01239850263, 1191209601, 1147878294, 1108955788<=
br>
+};<br>
<br>
=C2=A0/* <a href=3D"http://en.wikipedia.org/wiki/Methods_of_computing_squar=
e_roots" rel=3D"noreferrer" target=3D"_blank">http://en.wikipedia.org/wiki/=
Methods_of_computing_square_roots</a><br>
=C2=A0 * new_invsqrt =3D (invsqrt / 2) * (3 - count * invsqrt^2)<br>
@@ -388,47 +404,14 @@ static void cobalt_newton_step(struct cobalt_vars *va=
rs)<br>
=C2=A0static void cobalt_invsqrt(struct cobalt_vars *vars)<br>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (vars-&gt;count &lt; REC_INV_SQRT_CACHE)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0vars-&gt;rec_inv_sq=
rt =3D cobalt_rec_inv_sqrt_cache[vars-&gt;count];<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0vars-&gt;rec_inv_sq=
rt =3D inv_sqrt_cache[vars-&gt;count];<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 else<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cobalt_newton_step(=
vars);<br>
=C2=A0}<br>
<br>
-/* There is a big difference in timing between the accurate values placed =
in<br>
- * the cache and the approximations given by a single Newton step for smal=
l<br>
- * count values, particularly when stepping from count 1 to 2 or vice vers=
a.<br>
- * Above 16, a single Newton step gives sufficient accuracy in either<br>
- * direction, given the precision stored.<br>
- *<br>
- * The magnitude of the error when stepping up to count 2 is such as to gi=
ve<br>
- * the value that *should* have been produced at count 4.<br>
- */<br>
-<br>
-static void cobalt_cache_init(void)<br>
-{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct cobalt_vars v;<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0memset(&amp;v, 0, sizeof(v));<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0v.rec_inv_sqrt =3D ~0U;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0cobalt_rec_inv_sqrt_cache[0] =3D v.rec_inv_sqrt=
;<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0for (v.count =3D 1; v.count &lt; REC_INV_SQRT_C=
ACHE; v.count++) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cobalt_newton_step(=
&amp;v);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cobalt_newton_step(=
&amp;v);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cobalt_newton_step(=
&amp;v);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cobalt_newton_step(=
&amp;v);<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cobalt_rec_inv_sqrt=
_cache[v.count] =3D v.rec_inv_sqrt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
-}<br>
-<br>
=C2=A0static void cobalt_vars_init(struct cobalt_vars *vars)<br>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 memset(vars, 0, sizeof(*vars));<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!cobalt_rec_inv_sqrt_cache[0]) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cobalt_cache_init()=
;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cobalt_rec_inv_sqrt=
_cache[0] =3D ~0;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
=C2=A0}<br>
<br>
=C2=A0/* CoDel control_law is t + interval/sqrt(count)<br>
-- <br>
2.46.0<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr"><div>Artists/Musician Campout Aug 9-11</div><div><a href=3D"=
https://www.eventbrite.com/e/healing-arts-event-tickets-928910826287" targe=
t=3D"_blank">https://www.eventbrite.com/e/healing-arts-event-tickets-928910=
826287</a><br></div><div>Dave T=C3=A4ht CSO, LibreQos<br></div></div></div>

--000000000000d851c306214d2bc1--

--===============8867855864454963496==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============8867855864454963496==--
