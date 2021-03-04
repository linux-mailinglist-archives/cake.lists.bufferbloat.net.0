Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC0832CA3A
	for <lists+cake@lfdr.de>; Thu,  4 Mar 2021 02:54:46 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 77D253CB38;
	Wed,  3 Mar 2021 20:54:45 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1614822885;
	bh=h/iR9FvJqd91yfQzAcGSSN6dySyzrnjHL3dULXrUKBY=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=O7PiSy7TOsFn2Y0ZAhyknDxjwknVhDKscXJ/tlcjbcXb9VmgqWdRB4w94LLNximwJ
	 KwflMRRdoEt4mT5r9vyqvvkcNg0o2nWW4tLX1/MckoRujLBTyfeBLlHXhOkpF20vpP
	 Fa9y+lLVTcgbxCtQkOq8A4q48SQDToatVX7qnYmYbi7yRrC6veHEnDf90S6OeMlKs5
	 eawrg5XvGDwhd32B5+0x+L47ADg50CtlPrwgJpYG8ktSapPIPbhcqDCz/jjd59FbKg
	 psPF629Jxw3OimOKPKEiRNmKGG7NKMjtoA7/EOu6nWOfBHe91S1ImimhLtuL12qiqN
	 IjqlI4NT1/y6g==
X-Original-To: Cake@lists.bufferbloat.net
Delivered-To: Cake@lists.bufferbloat.net
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com
 [IPv6:2a00:1450:4864:20::12c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 202CD3B2A4
 for <Cake@lists.bufferbloat.net>; Wed,  3 Mar 2021 20:54:44 -0500 (EST)
Received: by mail-lf1-x12c.google.com with SMTP id k9so20560679lfo.12
 for <Cake@lists.bufferbloat.net>; Wed, 03 Mar 2021 17:54:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lostcreek-tech.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=NpKyHVmBCX2IW/CHvvN81KYsgc1+PF4kqB51XFhMXys=;
 b=olZNqJce7VZUo09VRSXFKaUTyOnxDuUtTEUpzUoJdVKr8dlbqf2GFTfsn2sjpKkLZc
 4BwzvxjEkUPqCAbLpS9tog8iKoJO5JT2LmXljrTreS1ny+ARVAvGr92J4Vql6KCUxVx/
 7lQ/j8Kq5IMPcStI01AVV1+SjP2yf63YA4vnZzZHOoSfxj+VbdsO2Lk5fFhL2Hg9Juu4
 6C0xqNI1WyfKFWJM8QjJ8BJxjIm6HQRrxt61/VikNZ3mvgdIFB4KKPFUxmhvkIbkuKoZ
 IbSwMiPF3i+W/ABlxzMm460B6vjcpsEV9xJ9787wXbF+hMpYGCWmtqq4IWUWpRcisXen
 cM8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=NpKyHVmBCX2IW/CHvvN81KYsgc1+PF4kqB51XFhMXys=;
 b=YpZjkmOD7NCGvx+MssT3rWcazqwhJPa+0b4gq1HhXh7cpgnl1GiYpiJoU+j9Mc1MmS
 k+sCBKvrVAFqSgBJXVhGe0+R1DeU80zkLSunFlACNNpVlD4P2FN/2mbp4i19UKk32WEk
 BrwJTbQaznKlhc7G03ai+3rq/FX05TEzhdHqz6mB7VwQR6msKR2cHuX8S9vVIf22L+UA
 +XNnFl8+Id4zhE9kFugQgkYW1ojbRquEnnhNBLftNPDo9JsZsx3G6oeG7RAxd1f7BQuz
 wUXTYOUnNZgU5Nx+iivWXxp45iG3pbEcw76yjj/frqHOOC8nY2JFcxYGMFGEHyMiLPoM
 y+xw==
X-Gm-Message-State: AOAM532rv22ESpxZTpxFfhHGcY0zVnNyuTFH09oqoDHGvRlSWTR1YJMF
 NWZdHMywtNJPcGtt4Kzhu+82Iacs8DmYzcE6Fwu+bZalsss=
X-Google-Smtp-Source: ABdhPJwPJ2gKqqmJUA1HQgTfPUYJDYHVM7qP3wL/LgKcV/nWica/b3E4bKKNBsOy5yvt8Ouxs292bimteu44YAX4wxQ=
X-Received: by 2002:a05:6512:34c3:: with SMTP id
 w3mr802246lfr.437.1614822882560; 
 Wed, 03 Mar 2021 17:54:42 -0800 (PST)
MIME-Version: 1.0
From: Thomas Croghan <tcroghan@lostcreek.tech>
Date: Wed, 3 Mar 2021 18:54:30 -0700
Message-ID: <CADmwGqvtAg9p_+RHN2bGms=8XLNU698irJ_VVoXjYpZ2v7=Vyw@mail.gmail.com>
To: Cake@lists.bufferbloat.net
Subject: [Cake] ISP Implementation
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
Content-Type: multipart/mixed; boundary="===============3797445717366903371=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============3797445717366903371==
Content-Type: multipart/alternative; boundary="0000000000004a600f05bcac409a"

--0000000000004a600f05bcac409a
Content-Type: text/plain; charset="UTF-8"

So, a beta of Mikrotik's RouterOS was released some time ago which finally
has Cake built into it.

In testing everything seems to be working, I just am coming up with some
questions that I haven't been able to answer.

Should there be any special considerations when Cake is being used in a
setting where it's by far the most significant limiting factor to a
connection? For example: <internet> --10 Gbps Fiber -- <ISP Router> --10
Gbps Fiber -- [ISP Switch] -- 1 Gbps Fiber -- <500 Mbps Customer>
In this situation very frequently the "<ISP Router>" could be running Cake
and do the bandwidth limiting of the customer down to 1/2 (or even less) of
the physical connectivity. A lot of the conversations here revolve around
Cake being set up just below the Bandwidth limits of the ISP, but that's
not really going to be the case in a lot of the ISP world.

Another question would be based on the above:

How well does Cake do with stacking instances? In some cases our above
example could look more like this: <Internet> -- [Some sort of limitation
to 100 Mbps] -- <ISP Router> -- 1 Gbps connection- <25 Mbps Customer X 10>

In this situation, would it be helpful to Cake to have a "Parent Queue"
that limits the total throughput of all customer traffic to 99-100 Mbps
then "Child Queues" that respectively limit customers to their 25 Mbps? Or
would it be better to just setup each customer Queue at their limit and let
Cake handle the times when the oversubscription has reared it's ugly head?


To be honest I have a few more questions, but I don't think many people
want to read pages and pages of my ignorance. If my question isn't too
stupid, I would love to ask a few others.

--0000000000004a600f05bcac409a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div dir=3D"ltr"><div dir=3D"ltr">So, a beta of Mikrotik&=
#39;s RouterOS was released some time ago which finally has Cake built into=
 it.=C2=A0</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">In testing ever=
ything seems to be working, I just am coming up with some questions that I =
haven&#39;t been able to answer.=C2=A0</div><div dir=3D"ltr"><br></div><div=
 dir=3D"ltr">Should there be any special considerations when Cake is being =
used in a setting where it&#39;s by far the most significant limiting facto=
r to a connection? For example: &lt;internet&gt; --10 Gbps Fiber -- &lt;ISP=
 Router&gt; --10 Gbps Fiber -- [ISP Switch] -- 1 Gbps Fiber -- &lt;500 Mbps=
 Customer&gt;</div><div dir=3D"ltr">In this situation very frequently the &=
quot;&lt;ISP Router&gt;&quot; could be running Cake and do the bandwidth li=
miting of the customer down to 1/2 (or even less) of the physical connectiv=
ity. A lot of the conversations here revolve around Cake being set up just =
below the Bandwidth limits of the ISP, but that&#39;s not really going to b=
e the case in a lot of the ISP world.</div><div dir=3D"ltr"><br></div><div =
dir=3D"ltr">Another question would be based on the above:</div><div dir=3D"=
ltr"><br></div><div dir=3D"ltr">How well does Cake do with stacking instanc=
es? In some cases our above example could look more like this: &lt;Internet=
&gt; -- [Some sort of limitation to 100 Mbps] -- &lt;ISP Router&gt; -- 1 Gb=
ps connection- &lt;25 Mbps Customer X 10&gt;=C2=A0</div><div dir=3D"ltr"><b=
r></div><div dir=3D"ltr">In this situation, would it be helpful to Cake to =
have a &quot;Parent Queue&quot; that limits the total throughput of all cus=
tomer traffic to 99-100 Mbps then &quot;Child Queues&quot; that respectivel=
y limit customers to their 25 Mbps? Or would it be better to just setup eac=
h customer Queue at their limit and let Cake handle the times when the over=
subscription has reared it&#39;s ugly head?</div><div dir=3D"ltr"><br></div=
><div dir=3D"ltr"><br></div><div dir=3D"ltr">To be honest I have a few more=
 questions, but I don&#39;t think many people want to read pages and pages =
of my ignorance. If my question isn&#39;t too stupid, I would love to ask a=
 few others.=C2=A0</div></div></div>

--0000000000004a600f05bcac409a--

--===============3797445717366903371==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============3797445717366903371==--
