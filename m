Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id EF834A67F2C
	for <lists+cake@lfdr.de>; Tue, 18 Mar 2025 23:00:34 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 826AC3CB40;
	Tue, 18 Mar 2025 18:00:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1742335233;
	bh=DCMIQ1oNSYqy7G+mhucKXckc4tfkbe8PDrLpIxP1Ua4=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=Vvd+qZld85i8vzr+R+0jHL69lgntGh16dlQlhjBvjBI3jCnGOh81QMbXSfKd+84m7
	 sRxFrttdzYaDOLUgCuQvJCtB5KC7IS5HJe7wWfT4xSY/fPzJkkep+tCDejmbpO39uM
	 lLfrXHRAwSBB22+QAx0LLSqB5x5wuXCDToG2N18KWO13V2p/RYHo1a/CJpzBFMIs4K
	 heaLIWiblD14ZjnZaAMoI15HDB0l7nbm1YudrIl5x0NkjBdamRWZceJogTd12ZM3gv
	 rSXncSBbslnKuFKpk1/NUcDdp/3n6KEhxrdu8U03BffHe+0GRJQv6fP4qs4+1sCA6w
	 YAynhuQ++li0Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 3C62F3B2A4
 for <cake@lists.bufferbloat.net>; Tue, 18 Mar 2025 18:00:32 -0400 (EDT)
Received: by mail-ej1-x634.google.com with SMTP id
 a640c23a62f3a-ac2902f7c2aso253545666b.1
 for <cake@lists.bufferbloat.net>; Tue, 18 Mar 2025 15:00:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1742335231; x=1742940031; darn=lists.bufferbloat.net;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=Y86hnJJi/UZwG/5W0qksLbHyxN6ooyaTsZ5UZVjSXSo=;
 b=dJNd5hiC43mHtwgzEaqfrXNBgzgwJ/4rvPjSEMOjVIbBcX3jiU7AIrDuDEj4exIH1h
 hpCkZJ/6yE67Jxqcj4dG2M5k8TxkRTBD4BlBIp5VOV/0cIY3G2QsTTHxIRC60KYmjh1m
 Hest7dh21swcAvNI5nLaCOXIemVlizZIf0Hq7jx8X+8HWcIdE8VEdnJSgVAaSyJHs43B
 jqrzdQRO3c5hcvej0CjuO+rBA5nl/PXWWBWbekt75CePCqgzpyJ+P9Z4nkFfdjuEVZOK
 2zJaNtOS0+sAg6Gn48PP6+FzL0pAF7++UUap1U9IX0HzRE/69doTWZ0cOIz0ud1Z6V43
 J3rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1742335231; x=1742940031;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Y86hnJJi/UZwG/5W0qksLbHyxN6ooyaTsZ5UZVjSXSo=;
 b=i2F4FlgcGPlN0lePnVuE2darpwPKq59RPNhgtrF4nJWpE/mRg0u6CDAuGvMsBC6GmP
 k1vNq/Hh99wvkIydHkx9iH+zQUG5REwBD4HespVIcSXg72699WK9zrlvsYgLHd1t2J15
 Q9n4cWgz7Phhtq63EsFPUazAMZzGXJDLAKyXHiTkQCyu2kGl3MKhmzsd/3xoFzqlMg5e
 8x4EqxEYS1Oq8dp43Q7UoaghgeS/LhNyiea/kF8e/GWQ0J7qm933D8oxyDsYPlfKMYPj
 hqygotf1PCbSojL7wayjlw5RJf4wrd/DgsREWRh7oH1xI2SCxqGe7R2XjnS2dcUWx9pW
 j4fA==
X-Gm-Message-State: AOJu0YwFSleOXMLpesOTFBfjrVrnTJ/dP3Q6Aq/u/NnwPyolClTeO7hP
 UCkAQjzSsVNOZNXrjmwm2N+lYnCP3y7KVKjr5UutP8PFpZA/dH/e2UeckLi2J6V0tHpelTcv1Ot
 2ARcRrKqKF2xBPzTE49jg62jnzwuBoG4R
X-Gm-Gg: ASbGncu4p26+smIkbvlqmzM+IW4v7CCKZJ6nRIjLAYMZ5xtI93Szt2cqkLCy96n/ay7
 tqKpcgraZ1JefEA//TuGKh9za40tCJmBDSb1bIDQ189iuxYaR3Kwpe1lre0FyjyqWPf1AHhBwmC
 zpRKGid12DBrVbNQm7/8EA/XpeClD6Mqd9q0NvQw==
X-Google-Smtp-Source: AGHT+IFwFgbwDxHuKEF/ZyWqE+gtTmO5aL/d8hML2LWft0PhXB2HnlD40BGuVP6VeWlne1FL2DizEAqzNr59Iew5vY8=
X-Received: by 2002:a17:907:1c89:b0:ac3:26ff:11a0 with SMTP id
 a640c23a62f3a-ac3b7f5fdf5mr20024466b.38.1742335230903; Tue, 18 Mar 2025
 15:00:30 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 18 Mar 2025 23:01:24 +0100
X-Gm-Features: AQ5f1Jq_AYNtY3DgH8QgFNhNRLMjNtRYQJob0sz1ZCQTiGPBOfzSPnEHV4ScG34
Message-ID: <CAJUtOOh3DEL==w8uYTkPEyhZpgYbLx5xbyLJtXCCpNUE+SQyJg@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] CAKE is going to be deployed on Alta Labs any day now!
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
From: Frantisek Borsik via Cake <cake@lists.bufferbloat.net>
Reply-To: Frantisek Borsik <frantisek.borsik@gmail.com>
Content-Type: multipart/mixed; boundary="===============5892499213009657204=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============5892499213009657204==
Content-Type: multipart/alternative; boundary="0000000000008490940630a50882"

--0000000000008490940630a50882
Content-Type: text/plain; charset="UTF-8"

Should be pushed through production in day or two and they will be talking
about it on https://streamyard.com/watch/ubYm2AffWkYi this
Wednesday,  March 19, at 1PM EST / 12PM CST / 11AM MST / 10AM PST

Can't wait.

All the best,

Frank

Frantisek (Frank) Borsik



https://www.linkedin.com/in/frantisekborsik

Signal, Telegram, WhatsApp: +421919416714

iMessage, mobile: +420775230885

Skype: casioa5302ca

frantisek.borsik@gmail.com

--0000000000008490940630a50882
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Should be pushed through production in day or two and=
 they will be talking about it on=C2=A0<a href=3D"https://streamyard.com/wa=
tch/ubYm2AffWkYi">https://streamyard.com/watch/ubYm2AffWkYi</a> this Wednes=
day,=C2=A0=C2=A0March 19, at 1PM EST / 12PM CST / 11AM MST / 10AM PST</div>=
<div><br></div><div>Can&#39;t wait.</div><div><br></div><div><div dir=3D"lt=
r" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D=
"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=
=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>All the be=
st,</div><div><br></div><div><p class=3D"MsoNormal" style=3D"color:rgb(34,3=
4,34)">Frank<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,=
34,34)"><u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,3=
4)">Frantisek (Frank) Borsik<u></u><u></u></p><p class=3D"MsoNormal" style=
=3D"color:rgb(34,34,34)"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal" sty=
le=3D"color:rgb(34,34,34)"><a href=3D"https://www.linkedin.com/in/frantisek=
borsik" style=3D"color:rgb(17,85,204)" target=3D"_blank">https://www.linked=
in.com/in/frantisekborsik</a><u></u><u></u></p><p class=3D"MsoNormal" style=
=3D"color:rgb(34,34,34)">Signal, Telegram, WhatsApp: +421919416714=C2=A0<u>=
</u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">iMessag=
e, mobile: +420775230885<u></u><u></u></p><p class=3D"MsoNormal" style=3D"c=
olor:rgb(34,34,34)">Skype: casioa5302ca<u></u><u></u></p><p class=3D"MsoNor=
mal" style=3D"color:rgb(34,34,34)"><a href=3D"mailto:frantisek.borsik@gmail=
.com" style=3D"color:rgb(17,85,204)" target=3D"_blank">frantisek.borsik@gma=
il.com</a></p></div></div></div></div></div></div></div></div></div></div><=
/div></div></div></div>

--0000000000008490940630a50882--

--===============5892499213009657204==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============5892499213009657204==--
