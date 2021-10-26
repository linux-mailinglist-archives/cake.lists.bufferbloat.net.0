Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A69C43BBB9
	for <lists+cake@lfdr.de>; Tue, 26 Oct 2021 22:40:08 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 624E33CB48;
	Tue, 26 Oct 2021 16:40:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1635280806;
	bh=SR4DuzaZhZgthsCt1co0ivm4F0/4ivGaln4x5L+qv9Y=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MJdO4tbR84rxhWeoLoC1c1D+4jnsHimjcLO0YwIDiv9bCCJbUQ5+/3sybo7cBC7cr
	 bEFdkzTR/JfFtWiMorwUVBl/2LzUOyN8gvtdJ9wtXczwUZs0amkKBU955h4AzlbwQ/
	 38+ujGlelUWqydQWZeUidxNXF0e0LQdkQ6Um0OwlbhHWey9mpc6Q7ejTruA0ndwPED
	 ihnJjj78mAcrcwEkpTarDz9G3RzgCXYkf6twWaycZNy7yMaMVuUpPuUJPX1oYsz+3N
	 LCn3AH3p4XjmIC9dklXuXi7nggUM/NdVG1b+rPWVjeZlUaVPetY+E1gjR5Z7yFZH5I
	 ruwFxabRWQ3Rw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x132.google.com (mail-il1-x132.google.com
 [IPv6:2607:f8b0:4864:20::132])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id D5BCA3CB41;
 Tue, 26 Oct 2021 16:40:04 -0400 (EDT)
Received: by mail-il1-x132.google.com with SMTP id i26so567805ila.12;
 Tue, 26 Oct 2021 13:40:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=82us5rZh5+BtC5dbmac8DLOqE1RP61wob6upLyaxtMc=;
 b=ccr0J9RPz0v3fF3C4nNMu/6xYUi1NXs5EoEdhimW7OES4JUKIbMvlXVrKyx/3pM1/B
 QtAOS+Z+vCmgQMUM1yKWPXL0/Q++iQ3T+h85O/eF1dFLnq+qZ3evd5cvl5G90eAMVDzM
 3yiHgIkZYKRwTXSdlOFWvkCmG3MKECK3InT3iV4uqPFrISgr2HD2WVMJlMB7uWUK2DbX
 zqXosfh5bRurdgBy28nVD2JTkxwWUAjEsNNR32HCV/KAITyT1CdlPlk9y7QrF4+nxZsI
 FhrdEzfgZGAGulGw5kJqsk4r/eTN7tmwE26NsH60NGlrDGCuN6qVgQfxAGEFSqpgc2ve
 qCXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=82us5rZh5+BtC5dbmac8DLOqE1RP61wob6upLyaxtMc=;
 b=j3KBOVDc/yqzMV+fPn4GLzKjk9NrGkr2mzhuXQhnbt2BKEQydtyDCt2SnZrzPRzAYs
 +0zYKznEEoXy0iTvFTM/EkD7U4MlFojkx5FQbpmKy/kU/dauZpubfD+e/ohAaFDQd1nQ
 kDsv4b4UTc3XU8fIsaPq+B9tk3zi2bzhOPbnCCZ4KojzikdpsWGPAMXP/1kkqv9HYQhH
 zazCg+OLCgBw5uWg10zs/J6ZyRSzQuriXDgpHGvQ5qG97pWEO057A/wT4yNHaXcy6qgU
 zsD4Mimt4QiVzb05SmdL+uoSJ1atJe7Ohvg1D/OkfD7Zd/SZDjKBjzmVa9JtVgU5JFxd
 H7+Q==
X-Gm-Message-State: AOAM533aUMo/1jPVAWovJVwon7Yx/vHIrWAzQ8j10fgORUfEmGNUg56E
 OGRwAPOxxKS0+h78G3BViaOwAx3YKD4CpKBqs+oaffgo
X-Google-Smtp-Source: ABdhPJwGimAUCrrgM8dPDxEdinvxFEJgJIAYhEeHjz29Z7UIN8KjxiC05x9XsoBoCsWUkUi/FRJXtxFj08cMFqCTKXk=
X-Received: by 2002:a92:c26d:: with SMTP id h13mr10248818ild.221.1635280804167; 
 Tue, 26 Oct 2021 13:40:04 -0700 (PDT)
MIME-Version: 1.0
References: <CANoTxGFJDYxBBrWiSWo0Kvh7SSWzJzKXbqs+6o_ObP8wUY2kfw@mail.gmail.com>
In-Reply-To: <CANoTxGFJDYxBBrWiSWo0Kvh7SSWzJzKXbqs+6o_ObP8wUY2kfw@mail.gmail.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Tue, 26 Oct 2021 13:39:52 -0700
Message-ID: <CAA93jw7SnQP=zjHNtwncxwAgX0XL=rYtd0uP2xgi36EfCU+LJg@mail.gmail.com>
To: Brandon Rosengren <brandonr@krakr.ca>
Subject: Re: [Cake] Looking for a consultant/programmer to help with
	LibreQoS project
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
Cc: Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============1217088851068566802=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============1217088851068566802==
Content-Type: multipart/alternative; boundary="00000000000070c64405cf477b70"

--00000000000070c64405cf477b70
Content-Type: text/plain; charset="UTF-8"

Bloat devel is a dead list. I am happy to see interest sparking in libreqos

On Wed, Oct 6, 2021, 7:17 PM Brandon Rosengren <brandonr@krakr.ca> wrote:

> I am looking for a programmer / consultant to help me integrate Nprobe DPI
> marks with LibreQoS style python script.
>
> I would also like help fetching a list of IP address' from our CRM API and
> dynamically writing the user csv list.
>
> WIlling to pay for any help that can be provided.
>
> --
> *Brandon Rosengren*
> KRAKR Enterprises Inc
>
>
> _______________________________________________
> Bloat-devel mailing list
> Bloat-devel@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/bloat-devel
>

--00000000000070c64405cf477b70
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Bloat devel is a dead list. I am happy to see interest sp=
arking in libreqos</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Wed, Oct 6, 2021, 7:17 PM Brandon Rosengren &lt;<a hre=
f=3D"mailto:brandonr@krakr.ca">brandonr@krakr.ca</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex"><div dir=3D"ltr">I am looking for a programmer=
 / consultant to help me integrate Nprobe DPI marks with LibreQoS style pyt=
hon script.<div><br></div><div>I would also like help fetching a list of IP=
 address&#39; from our CRM API and dynamically=C2=A0writing the user csv li=
st.</div><div><br></div><div>WIlling to pay for any help that can be provid=
ed.<br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr" data-smartmail=
=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><div><div><u><b>Bran=
don Rosengren</b></u></div><font size=3D"1">KRAKR Enterprises Inc</font></d=
iv><div><em style=3D"color:rgb(68,68,68);font-family:&quot;Open Sans&quot;,=
Helvetica,Arial,sans-serif;font-size:14px;margin:0px;padding:0px;border:0px=
;vertical-align:baseline"><br></em></div><div><br></div></div></div></div><=
/div></div>
_______________________________________________<br>
Bloat-devel mailing list<br>
<a href=3D"mailto:Bloat-devel@lists.bufferbloat.net" target=3D"_blank" rel=
=3D"noreferrer">Bloat-devel@lists.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/bloat-devel" rel=3D"noref=
errer noreferrer" target=3D"_blank">https://lists.bufferbloat.net/listinfo/=
bloat-devel</a><br>
</blockquote></div>

--00000000000070c64405cf477b70--

--===============1217088851068566802==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============1217088851068566802==--
