Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E2CDC42229B
	for <lists+cake@lfdr.de>; Tue,  5 Oct 2021 11:46:14 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 49AE23CB39;
	Tue,  5 Oct 2021 05:46:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1633427173;
	bh=yOkAZiXuYPW8w7XSUbtp6eQxZRdh/JDIR8LwyIx9UN4=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=chMOYOCVfRBveZVwXO49PEgiuYSV3bQzt1Q9x50LMHPFHJ2TTgkJOBCDncyFnGAr8
	 u1idtGPXszP8OhBhxGjwDFVZMYrcQ7ZsdSt2hBEvUVr+CUUbJ2E6G0Gbi92Fpqmc1c
	 jOogsFeGFKIPk1s3S++5ALVYdRJ3znxuxncHalEMrbcpQanAvTToOLO8LnkDGghq+R
	 G+wnfJrkVTsY54ou/n2H+LSNolTTclh5EqW7RiaWBmJ7hfTZzFuX1MdKIXPVqSUn/B
	 OrB7osm7vqoAl4hGsOnaBO13Oq4DiZhX0kIdhFcj0QBg5j2GqPMkeMYgUu9kt8Ckyu
	 pV3CM+bCSx52w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id EC0B13CB35
 for <cake@lists.bufferbloat.net>; Mon,  4 Oct 2021 21:44:27 -0400 (EDT)
Received: by mail-ed1-x530.google.com with SMTP id z20so20563555edc.13
 for <cake@lists.bufferbloat.net>; Mon, 04 Oct 2021 18:44:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to;
 bh=DBwpLOFhQNmJT+YC2LAV+p89Tm7TbrH/pltWxnh+zO8=;
 b=k2ELvdxUv7DJ6hvwCbK+YMLmlcwB/WZyI5MyUE+yklKPUDiSOkfRSooFNPJoLbitDA
 CcDWLAKhFJGxyaYxcwReaSALERR5E4/RZFTRsFRwHaR0aU8Rf7n9xEReAYe5/9IEgakk
 7jEXKpc/zI4c/g8VGOfNa7dIR5cWz5IpRWvYgQjqHKeJwagLVN/LPjR97zj16bbr7t2W
 gBJRgn2bmrphYc1mZtCsofa1BRKR7ymWXzrgCyTgyG30m6d/xdw5BEoCZkkBKr9mOHWJ
 rHGWbmPVAivqj7VTzmZkSkh6Fq0z3wZbMevRtDaWpXuI/SWjI+bPe0s1gTigp+Ky0E/w
 b34A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=DBwpLOFhQNmJT+YC2LAV+p89Tm7TbrH/pltWxnh+zO8=;
 b=PI468Xbdl106hm4aL10imAif7wkzjjBCREix5x/FEASiNIdnCx44m28qWk+Tw5LAeY
 UHtobnPWMYbMYL8ZSHzwZHQ4qpd26z9Jg7LUJTvNtqS19zJTODcuGam8496bznQMUcvV
 UEB1bTNJ1TB1RvMJsxWeVi9KRGbhM3Ckds/LlnAAdIxZLJz38UsibURHKJTWQ2hm/oUg
 UM7jFC4TbE5qpwWAR6LUdPRzoT0F6ODnOyGzX3lHzHFFiwc0jdX4VGNYUUQFGluRX2Ah
 rvmgX7Z2Ylhvy8O5EADZxOmbzssMZksnP7Zv0gNIWSv3xXwvYTlbH0LVkfoqIpJ4jJUQ
 27oQ==
X-Gm-Message-State: AOAM531PCXmebHd4QRodHcHpp0GDTZiqcpMJpE67Pqe+fY2VPOoRGl7V
 SbruVcMTwtOE2SHiY/9u2//1FJzcA29RFjQs/msdFse4
X-Google-Smtp-Source: ABdhPJwp80OYe6Vj9I7hXMggUD/BNBILOMOFAitr3FjjcNWjW6ZOW4u8Mb5mc+fp1KeUxl1nGdayrB6xSpc/Z96BZgs=
X-Received: by 2002:a17:906:154c:: with SMTP id
 c12mr22438287ejd.76.1633398265861; 
 Mon, 04 Oct 2021 18:44:25 -0700 (PDT)
MIME-Version: 1.0
From: Liam Bell <ljb3911@gmail.com>
Date: Tue, 5 Oct 2021 14:44:14 +1300
Message-ID: <CAAUp_gWycT2WdA+syyV+WnKnVeQvjLzosf11SwGCWdnbAeC05g@mail.gmail.com>
To: cake@lists.bufferbloat.net
X-Mailman-Approved-At: Tue, 05 Oct 2021 05:46:11 -0400
Subject: [Cake] Help with Cake on 4G connection
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
Content-Type: multipart/mixed; boundary="===============2687456155541388166=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============2687456155541388166==
Content-Type: multipart/alternative; boundary="00000000000069da6e05cd912b35"

--00000000000069da6e05cd912b35
Content-Type: text/plain; charset="UTF-8"

Hey there!

I've been reading a huge amount of documentation online over the last few
days about networking and trying to improve my bufferbloat. It wouldn't be
an exaggeration for me to say that reading the bufferbloat.net page has
been life-changing.

I've been having some trouble getting an SQM solution running as intended
on my 4G based (unreliable) connection. My use case is relatively simple. I
have a large household with lots of devices all streaming video, web
browsing, social media, TikTok, Netflix, etc. This has led to latency for
gaming being unbearably unpredictable. I've been twiddling around with
fq_codel on my FreshTomato based router and have found some measurable
success, but given that my bandwidth is usually pretty low, and unreliable,
it appears that I might be able to implement some kind of CAKE based
solution using the autorate-ingress parameter.

I won't go into too much detail regarding the other parameters of my setup,
in case I'm emailing the wrong contact here, apologies if that is the case.

Any help or perhaps direction where I can ask for help would be greatly
appreciated!

Thanks in advance for any reply!

--00000000000069da6e05cd912b35
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey there!=C2=A0<br><br>I&#39;ve been reading a huge amoun=
t of documentation online over the last few days about networking and tryin=
g to improve my bufferbloat. It wouldn&#39;t be an exaggeration for me to s=
ay that reading the <a href=3D"http://bufferbloat.net">bufferbloat.net</a> =
page has been life-changing.<div><br></div><div>I&#39;ve been having some t=
rouble getting an SQM solution running as intended on my 4G based (unreliab=
le) connection. My use case is relatively simple. I have a large household =
with lots of devices all streaming video, web browsing, social media, TikTo=
k, Netflix, etc. This has led to latency for gaming being unbearably unpred=
ictable. I&#39;ve been twiddling around with fq_codel on my FreshTomato bas=
ed router and have found some measurable success, but given that my bandwid=
th is usually pretty low, and unreliable, it appears that I might be able t=
o implement some kind of CAKE based solution using the autorate-ingress par=
ameter.</div><div><br></div><div>I won&#39;t go into too much detail regard=
ing the other parameters of my setup, in case I&#39;m emailing the wrong co=
ntact here, apologies if that is the case.<br><br>Any help or perhaps direc=
tion where I can ask for help would be greatly appreciated!=C2=A0<br><br>Th=
anks in advance for any reply!</div></div>

--00000000000069da6e05cd912b35--

--===============2687456155541388166==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============2687456155541388166==--
