Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D57433ADC4C
	for <lists+cake@lfdr.de>; Sun, 20 Jun 2021 03:59:22 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A94543CB47;
	Sat, 19 Jun 2021 21:59:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1624154360;
	bh=WHoNkbkiICKJkaPlCeOOO1yTmMMbWgSHoHtvsdRzZtE=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=KACHgEVMRjY3Y7LIGWckiHfX7VMBuo5l1wTBNUOQJ5Gn7QjBHLnciYMZ6hu5TxR0s
	 sXH6X3MEKbv8oyAO0niTv8Eu9rcOUwHRmdhqn2ahCNpClhGmCjRRluhA28S/MuUBqQ
	 vzQMI4apvsAmB+o3/LUJYmDjAWAPTaC32ly8uo+y6vwD78XryiHVwFnjp8WmwigP9y
	 Tr2qJ+VUVDkXjA3Awfz9AcmNDxRHMqfgWgKRtbDOUDfZbQOjBFAXQtwssWLrt36EFO
	 SJclcorjbKAxkEpkTX+rb6tdLlVSzr8YSbEDWJSOFy/0/iJo+EPMObfeD615jnCWNo
	 DfyULbffPuARQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 48CED3B29D
 for <cake@lists.bufferbloat.net>; Sat, 19 Jun 2021 21:59:19 -0400 (EDT)
Received: by mail-wm1-x334.google.com with SMTP id
 f16-20020a05600c1550b02901b00c1be4abso11258505wmg.2
 for <cake@lists.bufferbloat.net>; Sat, 19 Jun 2021 18:59:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XuQF5ri1dwMYt+f3qP9lOjH2lGPcK/Ha5bMGkdhBFe8=;
 b=twZ0876xX0Pr6Gu9DocC/uk4wjbOb2hlQvaF6yr3jcWQBtFa3VqTeKpusKrLcNXqNs
 URSYHqsOvCxLsRMcYX2ZHJAJFw7AfYGg1xYkdxH1ePLIhZ4Hdo4T1qYp79ndUhAqDUhc
 wOvAMdBmI8QfAdHhiSTXuiHApKv5iSuGiqgtvxjQoQTfBZtVFNoxVKlLf8i5QbmGLVP0
 K7CVArdiZrxiZF+NINlZeotMz7c0jAVyOghme8p/ch0zdVO6Dr0q6LXgrCNfvmmV08TK
 YTQU9pv4pcK8cyuPiXwcLd8k5f87SotPVcTAAgWGeDoo3Dl8uVAA/ZTQBeOfALlPEgp+
 jyZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XuQF5ri1dwMYt+f3qP9lOjH2lGPcK/Ha5bMGkdhBFe8=;
 b=IR0TNBjdGdRhMu7tWtwxlDn4DrpMxHJqemLpRpwqeDHkf2vydgHocyTkzs6Nhf6T5M
 5BJp5/ogRB4WM9u4iNBlfXeHuiYLemBUTkiykhPzibxPdnZbEGlDbkoStTppmN9oZCWy
 CcOlLETRR9MJ+da4m94NhQw+9ti2JcsqoL3LUveQ6NgvzuFSCkhCDqsCuNXxUk5W2m8o
 NIXqWPk2l/IQGCP2FozlSIk/WUi52boU4UyCVQk5BQK0wNMaXR6DlIipzjABKXMuWS2+
 wJDGQWCoq7MYmCbQzLFeMHI5PAjaZTfmUDlBSJAIuYmtWwGoYmRKRJLmmZ9XajRLaUhZ
 QMPA==
X-Gm-Message-State: AOAM5308A9fDdHHWij71pTmLCt7AFaXjf+/vn2fIxdX3973eKYZE4Hz2
 RJsxtlShvjBF1lJtCkOuThkR/34uHpW0GL7EqvtqyQ==
X-Google-Smtp-Source: ABdhPJwudaNLrXyocJFSMgBFtclvFImtmnQ/aZ/P41+nPTyTxSBulFLSGNJwaT1GFfauez9eFXJmB+84L9z7e2Z9HDo=
X-Received: by 2002:a05:600c:281:: with SMTP id
 1mr17031673wmk.171.1624154358106; 
 Sat, 19 Jun 2021 18:59:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw5JR_uawdeK7PtdxwBkkeB4d0DOS9nHBizoPv8EteBPDw@mail.gmail.com>
In-Reply-To: <CAA93jw5JR_uawdeK7PtdxwBkkeB4d0DOS9nHBizoPv8EteBPDw@mail.gmail.com>
Date: Sat, 19 Jun 2021 18:59:06 -0700
Message-ID: <CAH56bmB3RMGCKhKzdOV8uW=8yjYrW0BNp7_AtKJG9krACj7x8Q@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
Subject: Re: [Cake] access to cmsg from go?
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
From: Matt Mathis via Cake <cake@lists.bufferbloat.net>
Reply-To: Matt Mathis <mattmathis@google.com>
Cc: Cake List <cake@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============2786839450258196933=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============2786839450258196933==
Content-Type: multipart/alternative; boundary="00000000000093d54105c528e78c"

--00000000000093d54105c528e78c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Is there running code in C?

Thanks,
--MM--
The best way to predict the future is to create it.  - Alan Kay

We must not tolerate intolerance;
       however our response must be carefully measured:
            too strong would be hypocritical and risks spiraling out of
control;
            too weak risks being mistaken for tacit approval.


On Sat, Jun 19, 2021 at 2:59 PM Dave Taht <dave.taht@gmail.com> wrote:

> anyone have any good ideas here? https://github.com/golang/go/issues/4683=
1
>
> --
> Latest Podcast:
> https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920/
>
> Dave T=C3=A4ht CTO, TekLibre, LLC
> _______________________________________________
> Cake mailing list
> Cake@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/cake
>

--00000000000093d54105c528e78c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Is there running code in C?<div><br><div><div><div dir=3D"=
ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=
=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div>Thanks,</div>--MM=
--<br>The best way to predict the future is to create it. =C2=A0- Alan Kay<=
br><br>We must not tolerate intolerance;</div><div dir=3D"ltr">=C2=A0 =C2=
=A0 =C2=A0 =C2=A0however our response must be carefully measured:=C2=A0</di=
v><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 too strong would be hypocr=
itical and risks spiraling out of control;</div><div>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 too weak risks being mistaken for tacit approval.</div=
></div></div></div></div></div></div><br></div></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Jun 19, 2021=
 at 2:59 PM Dave Taht &lt;<a href=3D"mailto:dave.taht@gmail.com">dave.taht@=
gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">anyone have any good ideas here? <a href=3D"https://github.com/g=
olang/go/issues/46831" rel=3D"noreferrer" target=3D"_blank">https://github.=
com/golang/go/issues/46831</a><br>
<br>
-- <br>
Latest Podcast:<br>
<a href=3D"https://www.linkedin.com/feed/update/urn:li:activity:67910142849=
36785920/" rel=3D"noreferrer" target=3D"_blank">https://www.linkedin.com/fe=
ed/update/urn:li:activity:6791014284936785920/</a><br>
<br>
Dave T=C3=A4ht CTO, TekLibre, LLC<br>
_______________________________________________<br>
Cake mailing list<br>
<a href=3D"mailto:Cake@lists.bufferbloat.net" target=3D"_blank">Cake@lists.=
bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/cake" rel=3D"noreferrer" =
target=3D"_blank">https://lists.bufferbloat.net/listinfo/cake</a><br>
</blockquote></div>

--00000000000093d54105c528e78c--

--===============2786839450258196933==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============2786839450258196933==--
