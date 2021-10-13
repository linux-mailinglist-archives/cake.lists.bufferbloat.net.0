Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE5742C515
	for <lists+cake@lfdr.de>; Wed, 13 Oct 2021 17:45:56 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A1F5B3CB4B;
	Wed, 13 Oct 2021 11:45:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1634139954;
	bh=jb7fxgYOgUvOWY9ldEJNWjpWknCmSORHv6IfZ9c/ogA=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AgBn0FRzvQjSkc+KyaA90+wV9s/6FSzVazzdMEs3cGsJ/mSgtfQU1Z/ors5XPTjGa
	 bnwI+dBTt1BUiIBuyxlJTud3a1VLOIY9skzZscj70ObLXksomvmoDkE5ZGVikBupYM
	 POrTZRk+J1OsJj5wOiWAp9eayeU0W7tlnzPHV/KiIC0XwwS0VI9XVYggnmEf/BqU0L
	 PlX21sgUKUaxNH24+6dI+eTdikQSJPqYwJHaD18KRFRDXvL2x9N0dr5LZm53GxvuQ4
	 zUtkx0obneYZSaU9zBgqC+qdWIupfKYcAK1j0SGKfaPzmb08zPD8eaTySFmltUQHoE
	 sKeSvXot2ou2Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd2c.google.com (mail-io1-xd2c.google.com
 [IPv6:2607:f8b0:4864:20::d2c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 4FBE63B29D;
 Wed, 13 Oct 2021 11:45:52 -0400 (EDT)
Received: by mail-io1-xd2c.google.com with SMTP id s17so146329ioa.13;
 Wed, 13 Oct 2021 08:45:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=u9p/ehOOfnwDVd+KpbE6YkVK8duuA0UNFE1SM8Kc+Vg=;
 b=PPB0JJwt69Cz66lwrTv7IkDNhUHFEIWcvMWD+O3IqGyWksGVQeuVF9tO0TKIShgxLk
 rC/sdzG16Z+eJv4vqVz31zl+dQwLtCp9mflnE3Xuob4Tvy8XD7tRAjK+uF3UbaAKizRu
 w1GWzpcD2qcWmlQH9vqzfW0kvowtkUm0utWkAFLYsIKsJQ5uJ+lQBY5HwiC1A63Eldii
 o/FQjWEw5JvXCdxpAYb0dvCbTF6+gSrPfTEWAwuojWlbAMPmp5FEhBNIr5afnVRk9Wzb
 vJ8UCyI0Bfk2Fv5fTM5fE1KFfdSMppgOU1V/UMQIo7YsSPRrYepO2BUz6WklQaGvwZLV
 zn7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=u9p/ehOOfnwDVd+KpbE6YkVK8duuA0UNFE1SM8Kc+Vg=;
 b=OIVM3UtFaxy9R5bQSukKqwRK0nv2glU4y4Us/3lkMkK64Brf3XVXQ2yxYejBNhYGIO
 Wa++7LwX2yZdb28PhCJYPVdVImygbqahYVP7F1xaZc7GMoD5sDj7XL11h28nvbqEoICJ
 dW9EzHBJONUTZrD4x9kfzio7Z3DCKTurEnzV76THcIOFnotKkKuDwlCSNkZI4Ws8RxM0
 KZhdVFVYwVK33DHOysga4/JGU9AAjMIhxJUSsqYT5NUYIhbQNzwougeP9nO+ldCEVCRH
 5ned8CnUXFNokHORShj7/JJcsYr2YKc6fnhsWLwTAXe0Acp8tFrhHbNmreiowNgHE/rV
 i+iw==
X-Gm-Message-State: AOAM533MHbBucW/P6uqQshtBKhV0qbQUtdG5qPkpvk3hKp0Ogi5I6E7L
 JmRR7d3YEcrr7azbd8xoNDnPcJR0FhNcTVoEwN+q0fSS
X-Google-Smtp-Source: ABdhPJy6dN42tUYFugStdrIW9Bb9nuTDYtLL1jut1+OE9HFMM/TywtW7RQrtP26jpiIWQnKAA+edTKrYomeycp4cztY=
X-Received: by 2002:a6b:cd87:: with SMTP id d129mr33146iog.28.1634139951330;
 Wed, 13 Oct 2021 08:45:51 -0700 (PDT)
MIME-Version: 1.0
References: <1634137216941.ae398a38-f121-4190-bc20-a53a30e13458@bf06x.hubspotemail.net>
In-Reply-To: <1634137216941.ae398a38-f121-4190-bc20-a53a30e13458@bf06x.hubspotemail.net>
From: Dave Taht <dave.taht@gmail.com>
Date: Wed, 13 Oct 2021 08:45:37 -0700
Message-ID: <CAA93jw6jtBMhE57wqdJHVZnESUEqx6hFqrWXzq_M=SXtcuB4BQ@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>, 
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>
Subject: [Cake] Fwd: Call for Papers: KNIT Winter '21
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
Content-Type: multipart/mixed; boundary="===============2453875386202856027=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============2453875386202856027==
Content-Type: multipart/alternative; boundary="0000000000004ff9b105ce3ddb5e"

--0000000000004ff9b105ce3ddb5e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I actually have no idea what fabric is.

---------- Forwarded message ---------
From: Bryttany Todd <fabric-info@renci.org>
Date: Wed, Oct 13, 2021 at 8:04 AM
Subject: Call for Papers: KNIT Winter '21
To: <dave.taht@gmail.com>


Experimenters who submit a paper may be selected for a poster session,
whiteboard session, or an office hours meeting to discuss their work.
[image: 2019_NRIG_Fabric dark text right]
<https://cMhdn04.na1.hubspotlinks.com/Btc/T9+113/cMhdn04/VWJDKP24lZvNW5hz-B=
Q26R1MCW3cF4jk4yCC63N6klYW53lSbtV1-WJV7CgZNWW5W0FXF3fV6JjW991r5s8Y93zgW7ZZz=
SR8d7Wy9W6yThXN4nJpRhN83-rmsvkVQXW8kZh7L7ZLzqdW5YFpLT1vBYLSW94r5Dx8q5FGMN8d=
nNs1lk1cJVnVt2N21_bFgN75JgJX7HGq5W3DKJT42KymkgW2T8FX059dLg0W7LCQNN4ljTsZW6r=
QNry7PnsVyW3wn2tx72Bd2TW1yG_lr241dgHN6fgCqvh2jYjW93h7_n4Fb5n3W36g6YJ8RJklt3=
1lT1>
KNIT Winter '21: A FABRIC Community Workshop

*Event Date: December 8-9, 2021*
[image: KNIT Winter 21 A FABRIC Community Workshop]

Join us December 8-9, 2021 for the =E2=80=9CKeeping Networks Innovative Tog=
ether
(KNIT) Winter =E2=80=9821: A FABRIC Community Workshop=E2=80=9D. During the=
 workshop, the
FABRIC (and FAB) Leadership team will demonstrate new platform highlights, =
beta
testers
<https://cMhdn04.na1.hubspotlinks.com/Btc/T9+113/cMhdn04/VWJDKP24lZvNW5hz-B=
Q26R1MCW3cF4jk4yCC63N6klYWp3lSbNV1-WJV7CgFXqW4FGyfT8tMdyZW2MjBls5RRttMW6w8v=
p26R0dlcW5KRXgD65CY94N42dRd3XwcqGW46BbCn1-Wq0SW5TyJp35pZdnCVnbFfR4pG0q-N3mZ=
wykHWGmHW2BQFT359vJnXVz_ky267hm21W7G5BSK3hqBXmW3Yvdjw7Zf-KdW6ylHB96j1fNzW75=
pPqJ4lJ3HMW8v0Mqm8TZSW3W139dJF5mvR9YW1c355z2kqMQhW3SC-x-3gnZdrW4YdHxx43Z2yR=
W4mDjTW40ktXqF9cpcxxH1653kw_1>
will
showcase their early experiments and we=E2=80=99ll demonstrate how to set u=
p an
experiment.



Those new to testbeds are encouraged to join and listen to why the FABRIC
International testbed is a perfect complement to their research or product
development lifecycle. Our facility partners will share their early
experiences in FABRIC infrastructure deployment and operation. Industries
are welcome to participate to see emerging FABRIC research experiments.



Experimenters may be selected for a poster session, whiteboard session, or
an office hours meeting to discuss their experiment. Submit a whitepaper by
October 15 to be considered.
*Submit Whitepaper*
<https://cMhdn04.na1.hubspotlinks.com/Btc/T9+113/cMhdn04/VWJDKP24lZvNW5hz-B=
Q26R1MCW3cF4jk4yCC63N6klYW53lSbtV1-WJV7CgTJFW4RMfpc257Dt6W4J2Byz8JlZn5W8l8C=
6m92W3lMW50fpfl8Vg3TPW4XW6tR9jLhg5W4w9knK27PJxpW3-Xy092nQxsXW67Cj2F97LjTDW6=
FD_Vg4DDv4lW2z_y-j25vypjVbYVqj46ylXPW2fvlmW74vSwvW5JcnNM5sZRddW2dWs-M4475d6=
W2SXvQV3k7zrHW4QkBQg4QxLZqW3Y4BXL26M0JHW29CGKB3QJsvZW2Q5T-t5qsDHmW49GRJx83S=
sfP3gHY1>

Connect with us on Twitter

Share your thoughts about this workshop by using #FABRICCommunity and stay
updated by following us @FABRICtestbed
<https://cMhdn04.na1.hubspotlinks.com/Btc/T9+113/cMhdn04/VWJDKP24lZvNW5hz-B=
Q26R1MCW3cF4jk4yCC63N6klYW53lSbtV1-WJV7Cg-FRV_kQ9F6RV941W3P5PT_7R69qXW7ZwcD=
w68-pnwW319_BL4FkQvLW4WdF-g4kMP_kW7Zzyhk8719gwW5fKNS22YgW2fW6GVXXm30YfYwW5M=
YFqg2g01cZW4sqbnM9gth6xV7_LD791yMp2W6cZ5P62bXQkVW2FxjC23KWB5lW36vfkC1Rk3pQW=
1zKC7h1S0cV0W48K0ZH4LT1lYW1DGSy41LW6YcW1lC0qH5NFNcGW1PDl2p3MDGjbW8sdg-R75j3=
8F3jrK1>
on Twitter.
[image: Twitter]
<https://cMhdn04.na1.hubspotlinks.com/Btc/T9+113/cMhdn04/VWJDKP24lZvNW5hz-B=
Q26R1MCW3cF4jk4yCC63N6klYW53lSbtV1-WJV7CgHkRM7gnpblx5mLW435TPQ93WFB0W5DS8kT=
342Jt9W6JHMvw6Wy3pgW4FZzNv7jgGSYN2N99KNvqnC_N9kB43gjjLz-W5Ql90_1FGJB1W918cc=
R2vNLjVV3qqsy5-DJcWW73vP2f4h-q1lMQ4QfXvwzWMW3cmlDL4q16WYW1GDj457DhJ7TW215Yw=
d8lMzhgVP6Kn452rQBTW7rWB4R3h7ch-W4cGSnS5VDrtYW4ZQSQ24FdHjXW8GBGTl5V8N-_3fhc=
1>
[image: Website]
<https://cMhdn04.na1.hubspotlinks.com/Btc/T9+113/cMhdn04/VWJDKP24lZvNW5hz-B=
Q26R1MCW3cF4jk4yCC63N6klYW53lSbtV1-WJV7CgPsfW2rr4zh19wLPKW8zKgs8212DqLW4qYH=
xc9dkDb0W2G6W5s6ZZp42Vxjp4D51KPm7W7_-PG03HzSVhW2v-MPZ8ttDrgW5V93TH30Hhs1W3K=
_JKT8fBXP2W1_Fy-R90qx13W2m01f61cHSPlW1q0qGn8kPwY1W2tl4RN5kmfBjW56RkbS7x6n6B=
W4tnxrk2y0_L2W1rmkZ38WSvqSW3xWXvk50QcQBN6Vqc2GR1j0DN9kqtnFTJLj5W2rg48k3YSh8=
L3jfN1>
[image: Email]
<https://cMhdn04.na1.hubspotlinks.com/Btc/T9+113/cMhdn04/VWJDKP24lZvNW5hz-B=
Q26R1MCW3cF4jk4yCC63N6klYW53lSbtV1-WJV7CgPg1W43NbC680JX3sW3GxNyT3Z-H1nW2j9N=
PF1RDYKrW4S7jWf7SmWWQW3jxXMp51TxPkN21y76mH-cQhW42Yb8c2mfs0-N3TylbRjxKp-W7jq=
8wM27szKnW4KfHhx3WxnlgW2dGsVN4Lk9yWW3F70fk7V_nxQW71GDtt6vcD3QW1mzwq36KvRVtW=
5Gjx9M9jj3sSW77PDvK2yDkL_N1rLG9ykgYyVW29Cl8J5zsCwSW892QNT1pPm9rW3XNlL355q4v=
h35BG1>

Outreach Team, 100 Europa Drive, Suite 540, Chapel Hill, NC 27517, United
States

Unsubscribe
<https://hs-6342968.s.hubspotemail.net/hs/manage-preferences/unsubscribe-al=
l?languagePreference=3Den&d=3DVnd69v5m4hZ4VKg8Bx3JFwWpW3R5c3D3_R592N1JxwY5W=
vgmcM69Sn6QtJXqW4SvzWh6bzzYfVCHVZ751qJp0W5L7GcF6lJFkwN7h0k4f1yf0NW316DgB204=
1NPW8GqCxx6m-cMQn1hfYJ0293&v=3D3&utm_source=3Dhs_email&utm_medium=3Demail&u=
tm_content=3D170019874&_hsenc=3Dp2ANqtz--iCsY2M_xyYdFWPsAZ_avTIl-UoQrs6nwhX=
XcJz5Mij_PWXVhmv-YdzrRdDQmIiEvEY59fZxHDA__DOimIeFbtYLhSUw&_hsmi=3D170019874=
>
Manage
preferences
<https://hs-6342968.s.hubspotemail.net/hs/manage-preferences/unsubscribe?la=
nguagePreference=3Den&d=3DVnd69v5m4hZ4VKg8Bx3JFwWpW3R5c3D3_R592N1JxwY5Wvgmc=
M69Sn6QtJXqW4SvzWh6bzzYfVCHVZ751qJp0W5L7GcF6lJFkwN7h0k4f1yf0NW316DgB2041NPW=
8GqCxx6m-cMQn1hfYJ0293&v=3D3&utm_source=3Dhs_email&utm_medium=3Demail&utm_c=
ontent=3D170019874&_hsenc=3Dp2ANqtz--iCsY2M_xyYdFWPsAZ_avTIl-UoQrs6nwhXXcJz=
5Mij_PWXVhmv-YdzrRdDQmIiEvEY59fZxHDA__DOimIeFbtYLhSUw&_hsmi=3D170019874>

*You are receiving this email because you opted in, registered for one of
our events, or receive government funding from the same government agency
as our project. If you would like to unsubscribe or manage your
preferences, please click the links above.*


--=20
Fixing Starlink's Latencies: https://www.youtube.com/watch?v=3Dc9gLo6Xrwgw

Dave T=C3=A4ht CEO, TekLibre, LLC

--0000000000004ff9b105ce3ddb5e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I actually have no idea what fabric is.=C2=A0<br><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">---------- Forw=
arded message ---------<br>From: <strong class=3D"gmail_sendername" dir=3D"=
auto">Bryttany Todd</strong> <span dir=3D"auto">&lt;<a href=3D"mailto:fabri=
c-info@renci.org">fabric-info@renci.org</a>&gt;</span><br>Date: Wed, Oct 13=
, 2021 at 8:04 AM<br>Subject: Call for Papers: KNIT Winter &#39;21<br>To:  =
&lt;<a href=3D"mailto:dave.taht@gmail.com">dave.taht@gmail.com</a>&gt;<br><=
/div><br><br><u></u>
   =20
   =20
   =20
   =20
   =20
   =20




   =20

   =20
     =20
   =20
 =20
  <div bgcolor=3D"#666677" style=3D"margin:0!important;padding:0!important;=
font-family:Tahoma,sans-serif;font-size:15px;color:#444444;word-break:break=
-word">
   =20
<div id=3D"m_-4114213528164977772preview_text" style=3D"display:none!import=
ant;font-size:1px;color:#666677;line-height:1px;max-height:0px;max-width:0p=
x;opacity:0;overflow:hidden">Experimenters who submit a paper may be select=
ed for a poster session, whiteboard session, or an office hours meeting to =
discuss their work.</div>
   =20

    <div style=3D"background-color:#666677" bgcolor=3D"#666677">
      <table role=3D"presentation" cellpadding=3D"0" cellspacing=3D"0" styl=
e=3D"border-spacing:0!important;border-collapse:collapse;margin:0;padding:0=
;width:100%!important;min-width:320px!important;height:100%!important" widt=
h=3D"100%" height=3D"100%">
        <tbody><tr>
          <td valign=3D"top" style=3D"border-collapse:collapse;font-family:=
Tahoma,sans-serif;font-size:15px;color:#444444;word-break:break-word">
            <div id=3D"m_-4114213528164977772hs_cos_wrapper_main" style=3D"=
color:inherit;font-size:inherit;line-height:inherit">  <div id=3D"m_-411421=
3528164977772section_1562610061130" class=3D"m_-4114213528164977772hse-sect=
ion" style=3D"padding-left:10px;padding-right:10px;padding-top:20px">
   =20
   =20
   =20
      <div class=3D"m_-4114213528164977772hse-column-container" style=3D"mi=
n-width:280px;max-width:600px;width:100%;Margin-left:auto;Margin-right:auto=
;border-collapse:collapse;border-spacing:0;background-color:#ffffff;padding=
-top:40px" bgcolor=3D"#ffffff">
   =20
   =20
   =20
   =20

<div id=3D"m_-4114213528164977772column_1562610061130_0" class=3D"m_-411421=
3528164977772hse-column m_-4114213528164977772hse-size-12">
  <div id=3D"m_-4114213528164977772hs_cos_wrapper_module_157244998907325" s=
tyle=3D"color:inherit;font-size:inherit;line-height:inherit">
=09
=09
<table role=3D"presentation" width=3D"100%" cellpadding=3D"0" cellspacing=
=3D"0" style=3D"border-spacing:0!important;border-collapse:collapse">
    <tbody>
        <tr>
            <td align=3D"center" valign=3D"top" style=3D"border-collapse:co=
llapse;font-family:Tahoma,sans-serif;color:#444444;word-break:break-word;te=
xt-align:center;padding:10px 20px;font-size:0px">
               =20
                    <a href=3D"https://cMhdn04.na1.hubspotlinks.com/Btc/T9+=
113/cMhdn04/VWJDKP24lZvNW5hz-BQ26R1MCW3cF4jk4yCC63N6klYW53lSbtV1-WJV7CgZNWW=
5W0FXF3fV6JjW991r5s8Y93zgW7ZZzSR8d7Wy9W6yThXN4nJpRhN83-rmsvkVQXW8kZh7L7ZLzq=
dW5YFpLT1vBYLSW94r5Dx8q5FGMN8dnNs1lk1cJVnVt2N21_bFgN75JgJX7HGq5W3DKJT42Kymk=
gW2T8FX059dLg0W7LCQNN4ljTsZW6rQNry7PnsVyW3wn2tx72Bd2TW1yG_lr241dgHN6fgCqvh2=
jYjW93h7_n4Fb5n3W36g6YJ8RJklt31lT1" style=3D"color:#00a4bd" target=3D"_blan=
k">
               =20
                <img alt=3D"2019_NRIG_Fabric dark text right" src=3D"https:=
//hs-6342968.f.hubspotemail.net/hub/6342968/hubfs/FABRIC%20Logos/2019_NRIG_=
Fabric%20dark%20text%20right.png?width=3D1120&amp;upscale=3Dtrue&amp;name=
=3D2019_NRIG_Fabric%20dark%20text%20right.png" style=3D"outline:none;text-d=
ecoration:none;border:none;max-width:100%;font-size:16px" width=3D"560" ali=
gn=3D"middle">
               =20
                    </a>
               =20
            </td>
        </tr>
    </tbody>
</table></div>
</div>


   =20
    </div>
  =20
  </div>
  <div id=3D"m_-4114213528164977772section_1572449449868" class=3D"m_-41142=
13528164977772hse-section" style=3D"padding-left:10px;padding-right:10px">
   =20
   =20
   =20
      <div class=3D"m_-4114213528164977772hse-column-container" style=3D"mi=
n-width:280px;max-width:600px;width:100%;Margin-left:auto;Margin-right:auto=
;border-collapse:collapse;border-spacing:0;background-color:#ffffff" bgcolo=
r=3D"#ffffff">
   =20
   =20
   =20
   =20

<div id=3D"m_-4114213528164977772column_1572449449868_0" class=3D"m_-411421=
3528164977772hse-column m_-4114213528164977772hse-size-12">
  <table role=3D"presentation" cellpadding=3D"0" cellspacing=3D"0" width=3D=
"100%" style=3D"border-spacing:0!important;border-collapse:collapse"><tbody=
><tr><td class=3D"m_-4114213528164977772hs_padded" style=3D"border-collapse=
:collapse;font-family:Tahoma,sans-serif;font-size:15px;color:#444444;word-b=
reak:break-word;padding:10px 20px"><div id=3D"m_-4114213528164977772hs_cos_=
wrapper_module_15831777918082" style=3D"color:inherit;font-size:inherit;lin=
e-height:inherit"><div id=3D"m_-4114213528164977772hs_cos_wrapper_module_15=
831777918082_" style=3D"color:inherit;font-size:inherit;line-height:inherit=
"><h2 style=3D"margin:0;font-family:Lato,Tahoma,sans-serif;font-size:28px;l=
ine-height:175%;text-align:center" align=3D"center"><span style=3D"font-siz=
e:24px">KNIT Winter &#39;21: A FABRIC Community Workshop</span></h2>
<p style=3D"text-align:center;font-size:16px;line-height:175%" align=3D"cen=
ter"><em>Event Date: December 8-9, 2021</em></p></div></div></td></tr></tbo=
dy></table>
</div>


   =20
    </div>
  =20
  </div>
  <div id=3D"m_-4114213528164977772module_1634068259009" class=3D"m_-411421=
3528164977772hse-section" style=3D"padding-left:10px;padding-right:10px">
   =20
   =20
   =20
      <div class=3D"m_-4114213528164977772hse-column-container" style=3D"mi=
n-width:280px;max-width:600px;width:100%;Margin-left:auto;Margin-right:auto=
;border-collapse:collapse;border-spacing:0;background-color:#ffffff" bgcolo=
r=3D"#ffffff">
   =20
   =20
   =20
   =20

<div id=3D"m_-4114213528164977772module_1634068259009_0" class=3D"m_-411421=
3528164977772hse-column m_-4114213528164977772hse-size-12">
  <div id=3D"m_-4114213528164977772hs_cos_wrapper_module_16340682867002" st=
yle=3D"color:inherit;font-size:inherit;line-height:inherit">
=09
<table role=3D"presentation" width=3D"100%" cellpadding=3D"0" cellspacing=
=3D"0" style=3D"border-spacing:0!important;border-collapse:collapse">
    <tbody>
        <tr>
            <td align=3D"center" valign=3D"top" style=3D"border-collapse:co=
llapse;font-family:Tahoma,sans-serif;color:#444444;word-break:break-word;te=
xt-align:center;padding:10px 20px;font-size:0px">
               =20
                <img alt=3D"KNIT Winter 21 A FABRIC Community Workshop" src=
=3D"https://hs-6342968.f.hubspotemail.net/hub/6342968/hubfs/KNIT%20Winter%2=
021%20A%20FABRIC%20Community%20Workshop.png?width=3D1120&amp;upscale=3Dtrue=
&amp;name=3DKNIT%20Winter%2021%20A%20FABRIC%20Community%20Workshop.png" sty=
le=3D"outline:none;text-decoration:none;max-width:100%;font-size:16px" widt=
h=3D"560" align=3D"middle">
               =20
            </td>
        </tr>
    </tbody>
</table></div>
<table role=3D"presentation" cellpadding=3D"0" cellspacing=3D"0" width=3D"1=
00%" style=3D"border-spacing:0!important;border-collapse:collapse"><tbody><=
tr><td class=3D"m_-4114213528164977772hs_padded" style=3D"border-collapse:c=
ollapse;font-family:Tahoma,sans-serif;font-size:15px;color:#444444;word-bre=
ak:break-word;padding:10px 20px"><div id=3D"m_-4114213528164977772hs_cos_wr=
apper_module_16340682589751" style=3D"color:inherit;font-size:inherit;line-=
height:inherit"><div id=3D"m_-4114213528164977772hs_cos_wrapper_module_1634=
0682589751_" style=3D"color:inherit;font-size:inherit;line-height:inherit">=
<p style=3D"line-height:175%">Join us December 8-9, 2021 for the =E2=80=9CK=
eeping Networks Innovative Together (KNIT) Winter =E2=80=9821: A FABRIC Com=
munity Workshop=E2=80=9D. During the workshop, the FABRIC (and FAB) Leaders=
hip team will demonstrate new platform highlights, <a href=3D"https://cMhdn=
04.na1.hubspotlinks.com/Btc/T9+113/cMhdn04/VWJDKP24lZvNW5hz-BQ26R1MCW3cF4jk=
4yCC63N6klYWp3lSbNV1-WJV7CgFXqW4FGyfT8tMdyZW2MjBls5RRttMW6w8vp26R0dlcW5KRXg=
D65CY94N42dRd3XwcqGW46BbCn1-Wq0SW5TyJp35pZdnCVnbFfR4pG0q-N3mZwykHWGmHW2BQFT=
359vJnXVz_ky267hm21W7G5BSK3hqBXmW3Yvdjw7Zf-KdW6ylHB96j1fNzW75pPqJ4lJ3HMW8v0=
Mqm8TZSW3W139dJF5mvR9YW1c355z2kqMQhW3SC-x-3gnZdrW4YdHxx43Z2yRW4mDjTW40ktXqF=
9cpcxxH1653kw_1" style=3D"color:#27aae1;font-weight:bold" target=3D"_blank"=
>beta testers</a>=C2=A0will showcase their early experiments and we=E2=80=
=99ll demonstrate how to set up an experiment.</p>
<p style=3D"line-height:175%">=C2=A0</p>
<p style=3D"line-height:175%">Those new to testbeds are encouraged to join =
and listen to why the FABRIC International testbed is a perfect complement =
to their research or product development lifecycle. Our facility partners w=
ill share their early experiences in FABRIC infrastructure deployment and o=
peration. Industries are welcome to participate to see emerging FABRIC rese=
arch experiments.</p>
<p style=3D"line-height:175%">=C2=A0</p>
<p style=3D"line-height:175%">Experimenters may be selected for a poster se=
ssion, whiteboard session, or an office hours meeting to discuss their expe=
riment. Submit a whitepaper by October 15 to be considered.</p></div></div>=
</td></tr></tbody></table>
</div>


   =20
    </div>
  =20
  </div>
  <div id=3D"m_-4114213528164977772section_1572449473345" class=3D"m_-41142=
13528164977772hse-section" style=3D"padding-left:10px;padding-right:10px">
   =20
   =20
   =20
      <div class=3D"m_-4114213528164977772hse-column-container" style=3D"mi=
n-width:280px;max-width:600px;width:100%;Margin-left:auto;Margin-right:auto=
;border-collapse:collapse;border-spacing:0;background-color:#ffffff" bgcolo=
r=3D"#ffffff">
   =20
   =20
   =20
   =20

<div id=3D"m_-4114213528164977772column_1572449473345_0" class=3D"m_-411421=
3528164977772hse-column m_-4114213528164977772hse-size-12">
  <table role=3D"presentation" cellpadding=3D"0" cellspacing=3D"0" width=3D=
"100%" style=3D"border-spacing:0!important;border-collapse:collapse"><tbody=
><tr><td class=3D"m_-4114213528164977772hs_padded" style=3D"border-collapse=
:collapse;font-family:Tahoma,sans-serif;font-size:15px;color:#444444;word-b=
reak:break-word;padding:10px 20px"><div id=3D"m_-4114213528164977772hs_cos_=
wrapper_module_16292275437442" style=3D"color:inherit;font-size:inherit;lin=
e-height:inherit">
 =20
  <table align=3D"center" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" =
role=3D"presentation" style=3D"border-spacing:0!important;border-collapse:s=
eparate!important">
    <tbody><tr>
       =20
   =20
      <td align=3D"center" valign=3D"middle" bgcolor=3D"#078ac1" role=3D"pr=
esentation" style=3D"border-collapse:collapse;font-family:Tahoma,sans-serif=
;font-size:15px;color:#444444;word-break:break-word;border-radius:10px;back=
ground-color:#078ac1">
  =20
        <a href=3D"https://cMhdn04.na1.hubspotlinks.com/Btc/T9+113/cMhdn04/=
VWJDKP24lZvNW5hz-BQ26R1MCW3cF4jk4yCC63N6klYW53lSbtV1-WJV7CgTJFW4RMfpc257Dt6=
W4J2Byz8JlZn5W8l8C6m92W3lMW50fpfl8Vg3TPW4XW6tR9jLhg5W4w9knK27PJxpW3-Xy092nQ=
xsXW67Cj2F97LjTDW6FD_Vg4DDv4lW2z_y-j25vypjVbYVqj46ylXPW2fvlmW74vSwvW5JcnNM5=
sZRddW2dWs-M4475d6W2SXvQV3k7zrHW4QkBQg4QxLZqW3Y4BXL26M0JHW29CGKB3QJsvZW2Q5T=
-t5qsDHmW49GRJx83SsfP3gHY1" style=3D"color:#00a4bd;font-size:28px;font-fami=
ly:Lato,Tahoma,sans-serif;Margin:0;text-transform:none;text-decoration:none=
;padding:12px 18px;display:block" target=3D"_blank">
          <strong style=3D"color:#ffffff;font-weight:bold;text-decoration:n=
one;font-style:normal">Submit Whitepaper</strong>
        </a>
      </td>
    </tr>
  </tbody></table>
</div></td></tr></tbody></table>
<table role=3D"presentation" cellpadding=3D"0" cellspacing=3D"0" width=3D"1=
00%" style=3D"border-spacing:0!important;border-collapse:collapse"><tbody><=
tr><td class=3D"m_-4114213528164977772hs_padded" style=3D"border-collapse:c=
ollapse;font-family:Tahoma,sans-serif;font-size:15px;color:#444444;word-bre=
ak:break-word;padding:10px 20px"><div id=3D"m_-4114213528164977772hs_cos_wr=
apper_module_16292287419152" style=3D"color:inherit;font-size:inherit;line-=
height:inherit">

<table role=3D"presentation" width=3D"100%" align=3D"center" border=3D"0" s=
tyle=3D"min-width:20px;width:100%;max-width:100%;border-spacing:0;border-co=
llapse:collapse;font-size:1px">
  <tbody><tr>
   =20
   =20
    	<td width=3D"auto" style=3D"border-collapse:collapse;font-family:Tahom=
a,sans-serif;font-size:15px;color:#444444;word-break:break-word;line-height=
:0">=C2=A0</td>
   =20
   =20
    <td width=3D"50%" valign=3D"middle" style=3D"border-collapse:collapse;f=
ont-family:Tahoma,sans-serif;font-size:15px;color:#444444;word-break:break-=
word;line-height:0;border:transparent;border-bottom:2px solid #078ac1;borde=
r-bottom-width:2px">=C2=A0</td>
   =20
   =20
    	<td width=3D"auto" style=3D"border-collapse:collapse;font-family:Tahom=
a,sans-serif;font-size:15px;color:#444444;word-break:break-word;line-height=
:0">=C2=A0</td>
   =20
  </tr>
</tbody></table>
</div></td></tr></tbody></table>
</div>


   =20
    </div>
  =20
  </div>
  <div id=3D"m_-4114213528164977772section_1576075182858" class=3D"m_-41142=
13528164977772hse-section" style=3D"padding-left:10px;padding-right:10px">
   =20
   =20
   =20
      <div class=3D"m_-4114213528164977772hse-column-container" style=3D"mi=
n-width:280px;max-width:600px;width:100%;Margin-left:auto;Margin-right:auto=
;border-collapse:collapse;border-spacing:0;background-color:#ffffff;backgro=
und-image:url(&#39;https://hs-6342968.f.hubspotemail.net/hs/hsstatic/Templa=
teAssets/static-1.32/img/hs_default_template_images/email_dnd_background_im=
ages/Pattern-1-08.png&#39;);background-position:center;background-repeat:re=
peat" bgcolor=3D"#ffffff">
   =20
   =20
   =20
   =20

<div id=3D"m_-4114213528164977772column_1576075182858_0" class=3D"m_-411421=
3528164977772hse-column m_-4114213528164977772hse-size-12">
  <table role=3D"presentation" cellpadding=3D"0" cellspacing=3D"0" width=3D=
"100%" style=3D"border-spacing:0!important;border-collapse:collapse"><tbody=
><tr><td class=3D"m_-4114213528164977772hs_padded" style=3D"border-collapse=
:collapse;font-family:Tahoma,sans-serif;font-size:15px;color:#444444;word-b=
reak:break-word;padding:10px 20px"><div id=3D"m_-4114213528164977772hs_cos_=
wrapper_module_157244949202520" style=3D"color:inherit;font-size:inherit;li=
ne-height:inherit"><div id=3D"m_-4114213528164977772hs_cos_wrapper_module_1=
57244949202520_" style=3D"color:inherit;font-size:inherit;line-height:inher=
it"><h2 style=3D"margin:0;line-height:175%;font-family:Lato,Tahoma,sans-ser=
if;font-size:22px;text-align:left" align=3D"left">Connect with us on Twitte=
r</h2>
<p style=3D"line-height:125%">Share your thoughts about this workshop by us=
ing <span style=3D"font-weight:bold">#FABRICCommunity</span> and stay updat=
ed by following us <a href=3D"https://cMhdn04.na1.hubspotlinks.com/Btc/T9+1=
13/cMhdn04/VWJDKP24lZvNW5hz-BQ26R1MCW3cF4jk4yCC63N6klYW53lSbtV1-WJV7Cg-FRV_=
kQ9F6RV941W3P5PT_7R69qXW7ZwcDw68-pnwW319_BL4FkQvLW4WdF-g4kMP_kW7Zzyhk8719gw=
W5fKNS22YgW2fW6GVXXm30YfYwW5MYFqg2g01cZW4sqbnM9gth6xV7_LD791yMp2W6cZ5P62bXQ=
kVW2FxjC23KWB5lW36vfkC1Rk3pQW1zKC7h1S0cV0W48K0ZH4LT1lYW1DGSy41LW6YcW1lC0qH5=
NFNcGW1PDl2p3MDGjbW8sdg-R75j38F3jrK1" rel=3D" noopener" style=3D"color:#27a=
ae1;font-weight:bold" target=3D"_blank">@FABRICtestbed</a> on Twitter.</p><=
/div></div></td></tr></tbody></table>
</div>


   =20
    </div>
  =20
  </div>
  <div id=3D"m_-4114213528164977772builtin_section-1" class=3D"m_-411421352=
8164977772hse-section" style=3D"padding-left:10px;padding-right:10px;paddin=
g-bottom:20px">
   =20
   =20
   =20
      <div class=3D"m_-4114213528164977772hse-column-container" style=3D"mi=
n-width:280px;max-width:600px;width:100%;Margin-left:auto;Margin-right:auto=
;border-collapse:collapse;border-spacing:0;background-color:#ffffff;padding=
-bottom:24px" bgcolor=3D"#ffffff">
   =20
   =20
   =20
   =20

<div id=3D"m_-4114213528164977772builtin_column_1-0" class=3D"m_-4114213528=
164977772hse-column m_-4114213528164977772hse-size-12">
  <table role=3D"presentation" cellpadding=3D"0" cellspacing=3D"0" width=3D=
"100%" style=3D"border-spacing:0!important;border-collapse:collapse"><tbody=
><tr><td class=3D"m_-4114213528164977772hs_padded" style=3D"border-collapse=
:collapse;font-family:Tahoma,sans-serif;font-size:15px;color:#444444;word-b=
reak:break-word;padding:10px 20px"><div id=3D"m_-4114213528164977772hs_cos_=
wrapper_module_15724887501721" style=3D"color:inherit;font-size:inherit;lin=
e-height:inherit">
<table role=3D"presentation" align=3D"center" style=3D"border-spacing:0!imp=
ortant;border-collapse:collapse;width:auto;text-align:center" width=3D"auto=
">
  <tbody>
    <tr align=3D"center">
     =20
      <td style=3D"border-collapse:collapse;font-family:Tahoma,sans-serif;f=
ont-size:15px;color:#444444;word-break:break-word">
        <table role=3D"presentation" align=3D"center" style=3D"border-spaci=
ng:0!important;border-collapse:collapse;width:auto;text-align:center" width=
=3D"auto">
          <tbody>
            <tr align=3D"center">
             =20
              <td class=3D"m_-4114213528164977772display_block_on_small_scr=
eens" style=3D"border-collapse:collapse;font-family:Tahoma,sans-serif;font-=
size:15px;color:#444444;word-break:break-word;padding:8px 5px;line-height:1=
;vertical-align:middle" valign=3D"middle">
                <a href=3D"https://cMhdn04.na1.hubspotlinks.com/Btc/T9+113/=
cMhdn04/VWJDKP24lZvNW5hz-BQ26R1MCW3cF4jk4yCC63N6klYW53lSbtV1-WJV7CgHkRM7gnp=
blx5mLW435TPQ93WFB0W5DS8kT342Jt9W6JHMvw6Wy3pgW4FZzNv7jgGSYN2N99KNvqnC_N9kB4=
3gjjLz-W5Ql90_1FGJB1W918ccR2vNLjVV3qqsy5-DJcWW73vP2f4h-q1lMQ4QfXvwzWMW3cmlD=
L4q16WYW1GDj457DhJ7TW215Ywd8lMzhgVP6Kn452rQBTW7rWB4R3h7ch-W4cGSnS5VDrtYW4ZQ=
SQ24FdHjXW8GBGTl5V8N-_3fhc1" style=3D"color:#00a4bd;text-decoration:none!im=
portant" target=3D"_blank">
                 =20
                 =20
                  <img src=3D"https://hs-6342968.f.hubspotemail.net/hs/hsst=
atic/TemplateAssets/static-1.24/img/hs_default_template_images/modules/Foll=
ow+Me+-+Email/twitter_circle_grey.png" alt=3D"Twitter" height=3D"25" style=
=3D"outline:none;text-decoration:none;border:none;width:auto!important;heig=
ht:25px!important;vertical-align:middle" valign=3D"middle" width=3D"auto">
                 =20
                </a>
              </td>
             =20
             =20
          </tr>
        </tbody>
      </table>
  		</td>
     =20
      <td style=3D"border-collapse:collapse;font-family:Tahoma,sans-serif;f=
ont-size:15px;color:#444444;word-break:break-word">
        <table role=3D"presentation" align=3D"center" style=3D"border-spaci=
ng:0!important;border-collapse:collapse;width:auto;text-align:center" width=
=3D"auto">
          <tbody>
            <tr align=3D"center">
             =20
              <td class=3D"m_-4114213528164977772display_block_on_small_scr=
eens" style=3D"border-collapse:collapse;font-family:Tahoma,sans-serif;font-=
size:15px;color:#444444;word-break:break-word;padding:8px 5px;line-height:1=
;vertical-align:middle" valign=3D"middle">
                <a href=3D"https://cMhdn04.na1.hubspotlinks.com/Btc/T9+113/=
cMhdn04/VWJDKP24lZvNW5hz-BQ26R1MCW3cF4jk4yCC63N6klYW53lSbtV1-WJV7CgPsfW2rr4=
zh19wLPKW8zKgs8212DqLW4qYHxc9dkDb0W2G6W5s6ZZp42Vxjp4D51KPm7W7_-PG03HzSVhW2v=
-MPZ8ttDrgW5V93TH30Hhs1W3K_JKT8fBXP2W1_Fy-R90qx13W2m01f61cHSPlW1q0qGn8kPwY1=
W2tl4RN5kmfBjW56RkbS7x6n6BW4tnxrk2y0_L2W1rmkZ38WSvqSW3xWXvk50QcQBN6Vqc2GR1j=
0DN9kqtnFTJLj5W2rg48k3YSh8L3jfN1" style=3D"color:#00a4bd;text-decoration:no=
ne!important" target=3D"_blank">
                 =20
                 =20
                  <img src=3D"https://hs-6342968.f.hubspotemail.net/hs/hsst=
atic/TemplateAssets/static-1.24/img/hs_default_template_images/modules/Foll=
ow+Me+-+Email/website_circle_grey.png" alt=3D"Website" height=3D"25" style=
=3D"outline:none;text-decoration:none;border:none;width:auto!important;heig=
ht:25px!important;vertical-align:middle" valign=3D"middle" width=3D"auto">
                 =20
                </a>
              </td>
             =20
             =20
          </tr>
        </tbody>
      </table>
  		</td>
     =20
      <td style=3D"border-collapse:collapse;font-family:Tahoma,sans-serif;f=
ont-size:15px;color:#444444;word-break:break-word">
        <table role=3D"presentation" align=3D"center" style=3D"border-spaci=
ng:0!important;border-collapse:collapse;width:auto;text-align:center" width=
=3D"auto">
          <tbody>
            <tr align=3D"center">
             =20
              <td class=3D"m_-4114213528164977772display_block_on_small_scr=
eens" style=3D"border-collapse:collapse;font-family:Tahoma,sans-serif;font-=
size:15px;color:#444444;word-break:break-word;padding:8px 5px;line-height:1=
;vertical-align:middle" valign=3D"middle">
                <a href=3D"https://cMhdn04.na1.hubspotlinks.com/Btc/T9+113/=
cMhdn04/VWJDKP24lZvNW5hz-BQ26R1MCW3cF4jk4yCC63N6klYW53lSbtV1-WJV7CgPg1W43Nb=
C680JX3sW3GxNyT3Z-H1nW2j9NPF1RDYKrW4S7jWf7SmWWQW3jxXMp51TxPkN21y76mH-cQhW42=
Yb8c2mfs0-N3TylbRjxKp-W7jq8wM27szKnW4KfHhx3WxnlgW2dGsVN4Lk9yWW3F70fk7V_nxQW=
71GDtt6vcD3QW1mzwq36KvRVtW5Gjx9M9jj3sSW77PDvK2yDkL_N1rLG9ykgYyVW29Cl8J5zsCw=
SW892QNT1pPm9rW3XNlL355q4vh35BG1" style=3D"color:#00a4bd;text-decoration:no=
ne!important" target=3D"_blank">
                 =20
                 =20
                  <img src=3D"https://hs-6342968.f.hubspotemail.net/hs/hsst=
atic/TemplateAssets/static-1.24/img/hs_default_template_images/modules/Foll=
ow+Me+-+Email/mail_circle_grey.png" alt=3D"Email" height=3D"25" style=3D"ou=
tline:none;text-decoration:none;border:none;width:auto!important;height:25p=
x!important;vertical-align:middle" valign=3D"middle" width=3D"auto">
                 =20
                </a>
              </td>
             =20
             =20
          </tr>
        </tbody>
      </table>
  		</td>
     =20
    </tr>
  </tbody>
</table></div></td></tr></tbody></table>
<div id=3D"m_-4114213528164977772hs_cos_wrapper_footer_module" style=3D"col=
or:inherit;font-size:inherit;line-height:inherit">
 =20
 =20
 =20
 =20
 =20
 =20
 =20
<table role=3D"presentation" width=3D"100%" cellpadding=3D"0" cellspacing=
=3D"0" style=3D"border-spacing:0!important;border-collapse:collapse;font-fa=
mily:Arial,sans-serif;font-size:12px;line-height:135%;color:#23496d;margin-=
bottom:0;padding:0">
    <tbody>
        <tr>
            <td align=3D"center" valign=3D"top" style=3D"border-collapse:co=
llapse;font-family:Tahoma,sans-serif;font-size:15px;color:#444444;word-brea=
k:break-word;text-align:center;margin-bottom:0;line-height:135%;padding:10p=
x 20px">
                <p style=3D"font-family:Lato,Tahoma,sans-serif;font-size:12=
px;font-weight:normal;text-decoration:none;font-style:normal;color:#79859a;=
direction:lrt" dir=3D"lrt">
                  Outreach Team, 100 Europa Drive, Suite 540, Chapel Hill, =
NC 27517, United States
                </p>
                <p>
                 =20
                  <a href=3D"https://hs-6342968.s.hubspotemail.net/hs/manag=
e-preferences/unsubscribe-all?languagePreference=3Den&amp;d=3DVnd69v5m4hZ4V=
Kg8Bx3JFwWpW3R5c3D3_R592N1JxwY5WvgmcM69Sn6QtJXqW4SvzWh6bzzYfVCHVZ751qJp0W5L=
7GcF6lJFkwN7h0k4f1yf0NW316DgB2041NPW8GqCxx6m-cMQn1hfYJ0293&amp;v=3D3&amp;ut=
m_source=3Dhs_email&amp;utm_medium=3Demail&amp;utm_content=3D170019874&amp;=
_hsenc=3Dp2ANqtz--iCsY2M_xyYdFWPsAZ_avTIl-UoQrs6nwhXXcJz5Mij_PWXVhmv-YdzrRd=
DQmIiEvEY59fZxHDA__DOimIeFbtYLhSUw&amp;_hsmi=3D170019874" style=3D"font-fam=
ily:Lato,Tahoma,sans-serif;font-size:12px;color:#27aae1;font-weight:bold;te=
xt-decoration:underline;font-style:normal" target=3D"_blank">Unsubscribe</a=
>
                 =20
                  <a href=3D"https://hs-6342968.s.hubspotemail.net/hs/manag=
e-preferences/unsubscribe?languagePreference=3Den&amp;d=3DVnd69v5m4hZ4VKg8B=
x3JFwWpW3R5c3D3_R592N1JxwY5WvgmcM69Sn6QtJXqW4SvzWh6bzzYfVCHVZ751qJp0W5L7GcF=
6lJFkwN7h0k4f1yf0NW316DgB2041NPW8GqCxx6m-cMQn1hfYJ0293&amp;v=3D3&amp;utm_so=
urce=3Dhs_email&amp;utm_medium=3Demail&amp;utm_content=3D170019874&amp;_hse=
nc=3Dp2ANqtz--iCsY2M_xyYdFWPsAZ_avTIl-UoQrs6nwhXXcJz5Mij_PWXVhmv-YdzrRdDQmI=
iEvEY59fZxHDA__DOimIeFbtYLhSUw&amp;_hsmi=3D170019874" style=3D"font-family:=
Lato,Tahoma,sans-serif;font-size:12px;color:#27aae1;font-weight:bold;text-d=
ecoration:underline;font-style:normal" target=3D"_blank">Manage preferences=
</a>
                 =20
                </p>
            </td>
        </tr>
    </tbody>
</table></div>
<table role=3D"presentation" cellpadding=3D"0" cellspacing=3D"0" width=3D"1=
00%" style=3D"border-spacing:0!important;border-collapse:collapse"><tbody><=
tr><td class=3D"m_-4114213528164977772hs_padded" style=3D"border-collapse:c=
ollapse;font-family:Tahoma,sans-serif;font-size:15px;color:#444444;word-bre=
ak:break-word;padding:10px 20px"><div id=3D"m_-4114213528164977772hs_cos_wr=
apper_module_157607337758312" style=3D"color:inherit;font-size:inherit;line=
-height:inherit"><div id=3D"m_-4114213528164977772hs_cos_wrapper_module_157=
607337758312_" style=3D"color:inherit;font-size:inherit;line-height:inherit=
"><p style=3D"font-size:11px;line-height:175%"><em>You are receiving this e=
mail because you opted in, registered for one of our events, or receive gov=
ernment funding from the same government agency as our project. If you woul=
d like to unsubscribe or manage your preferences, please click the links ab=
ove.</em></p></div></div></td></tr></tbody></table>
</div>


   =20
    </div>
  =20
  </div>
</div>
          </td>
        </tr>
      </tbody></table>
    </div>
 =20
<img src=3D"https://cMhdn04.na1.hubspotlinks.com/Bto/T9+113/cMhdn04/VWJDKP2=
4lZvNW5hz-BQ26R1MCW3cF4jk4yCC63W6klYGx8fYCY62jG1" alt=3D"" width=3D"1" heig=
ht=3D"1" border=3D"0" style=3D"display:none!important;min-height:1px!import=
ant;width:1px!important;border-width:0!important;margin-top:0!important;mar=
gin-bottom:0!important;margin-right:0!important;margin-left:0!important;pad=
ding-top:0!important;padding-bottom:0!important;padding-right:0!important;p=
adding-left:0!important"></div></div><br clear=3D"all"><div><br></div>-- <b=
r><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signat=
ure"><div dir=3D"ltr"><div>Fixing Starlink&#39;s Latencies: <a href=3D"http=
s://www.youtube.com/watch?v=3Dc9gLo6Xrwgw" target=3D"_blank">https://www.yo=
utube.com/watch?v=3Dc9gLo6Xrwgw</a><br></div><br>Dave T=C3=A4ht CEO, TekLib=
re, LLC <br></div></div></div>

--0000000000004ff9b105ce3ddb5e--

--===============2453875386202856027==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============2453875386202856027==--
