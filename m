Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 61CBE1C8333
	for <lists+cake@lfdr.de>; Thu,  7 May 2020 09:07:10 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 373CD3CB41;
	Thu,  7 May 2020 03:07:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1588835229;
	bh=D/HaREefeVHa7lnH8pO5LUzGWoCAzXzgwmRZSrp2mx8=;
	h=Date:In-Reply-To:References:To:From:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=evCGaeCBt0VEwDCFikyNmqlymGPU1/cik3v6gfEmnR1b3ojPYuBAI2H7r+C2xEDKF
	 B2F+B1Z9EA0vy5x2/AWzsOLBLGmXYKMkNBvg/BnM0ua5SIarLpYdQpxe6/uo6BoGHv
	 dyTqxUVS9hSobHxeuyhKGbq6K/4RoPRW4Qpj+dz5WtJszAnib6kXQNN4cAt7f2/M6J
	 4znD2w3UFk1KTZaqF86CljV/BR8lmetOf4JfC+dEwpYJC+Yc9mM/MbgZBy79UFxmia
	 IGKooIVOTJOgloSfqNT8BRhEXpiCE3nRW2PyvjGNjwN/e12dWXcU72rrNvOowrMnU5
	 FiEqJBlLLBHQQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 462223B29D
 for <cake@lists.bufferbloat.net>; Thu,  7 May 2020 03:07:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1588835223;
 bh=0ybPJUh89oEsG3FkJFf7y0//42tPOlLzkytHoI4VO2w=;
 h=X-UI-Sender-Class:Date:In-Reply-To:References:Subject:To:CC:From;
 b=hIapLta035a6lzumUUG4FvO6Sh5XYha1rzjBXhjSoTnKo++0YSUPJ41BqSYbWhLco
 UYmixz82gxIDlVxilE80Z+nqBwVpdEHobhypZYd+t/07/baphyU7HAikubYb+5goQA
 O0q93+Z2qcqLI050bgG5Nkim5PMZ9Tji4F8vf3OY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.159] ([77.3.18.222]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MDQiS-1jOJA91QeM-00AXw4; Thu, 07
 May 2020 09:07:03 +0200
Date: Thu, 07 May 2020 09:07:01 +0200
User-Agent: K-9 Mail for Android
In-Reply-To: <CAC8NkTCYBokx0NedyuOKjhZqUMHXAc5tZtObTpdyjkvE4U_zUw@mail.gmail.com>
References: <CAC8NkTBHv6_6u21bRu2BcEAW2X1Sio-JWvCYwQgLR2q-6eBgOA@mail.gmail.com>
 <C24C4CCB-C30D-452A-9386-5AA533F11CEE@gmail.com> <87wo5okhbo.fsf@toke.dk>
 <CAC8NkTCYBokx0NedyuOKjhZqUMHXAc5tZtObTpdyjkvE4U_zUw@mail.gmail.com>
MIME-Version: 1.0
To: cake@lists.bufferbloat.net, Avakash bhat <avakash261@gmail.com>,
 =?ISO-8859-1?Q?Toke_H=F8iland-J=F8rgensen?= <toke@redhat.com>
From: Sebastian Moeller <moeller0@gmx.de>
Message-ID: <A85845BB-010A-4F39-99F4-C6206F7FEA65@gmx.de>
X-Provags-ID: V03:K1:Wj0AiV3e5d72YblUoEFi+K6xmedPUAbbpynSFHecTsORrh0fZnP
 3YCzkUfAkleBG7FbZcLxN3cr2A2WPGcIc90HN9CLDh+6JfvYodUlFxW5coKROjPECzrqdCd
 u17LeE/X6A+uE8ZncX9Zj1nndfROSFoza8wZeYM3sOzx01JnmjtN3GWE0UK0BPWA2QExLiN
 DouK3ztM3eEDexz5Soisg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:0f3YTGGzN2c=:yzW9E7KuBhrD4rRZQuVxaJ
 +ZUS5K7AXh8Nay9SelXtZVSGchnqYb6klyZ6nfR4QInPqeLLVsoR+nLNm1/y73hkF0duPqVYn
 vrPaGtoQOAYUYC6mMnX30Z4lGRXDiVA22Df84abjdEwYV0RqQ/qtjrmI0E0DI9eAtL1Fps6dB
 TgaLdW7A7I/VxOH1vc1lfgPzha3rKg6+xBr2/dbtWQVnEN+V4BnOupuFckuSGDRJn1I3jKw4G
 4qiwB+moqQ3X/R4UY9uTU/FGBuEaN4Afdynyif9ZnOzr347q6KcuGiGSworqYTd0rAAjIwEsN
 yIrre+18OLbz0flX4UakvDCNjnreQRUVLa98erc6MApYEWmdu+q9eFabwSl1ktrlX2Zd7eJfO
 bqTcQlPMdPE8VrkAOAgq5LWlQp2+dndKOrm+BJfdDoHNnqcPhnWsafM8q1BnzMcKG1q8YF942
 fPIKJ4JmbpJZHAWP6yEl61D8X9Q7t/D0JXwX87hqAZLj/XyOuiYTgxxA6VntEr+zMC/UUrug8
 h76Xg+wEnvnU8nduXMg3Ojg/vn/Af6cwFuhEGpJNZwpPGqYrWFnU3DIOpVEu1wSd5I6C99I6f
 JdPUHuePFzbj3xniDWFAOF/Um6Yqp8ZyPrgTWOHhohYONZfF/zLiFke2ekwm0BO43d45isS4m
 /CnlMhxaM5AIRZECGSLgDK25VY1ruh/5nR51QN7UeEjtdvWhH/7YEilG4QRjrcOT0GPX02+QI
 /t8QEX3/+DbB7J0nNgHqFRMFSC6CYGvsqZRVuSeu3fAaAogbu0UkV2KjZQVIR4ZmUhtsZL2Vo
 QpfYxo4PRPhRKqJDUZdwnhTmhI+tmVfjW2FSzg6+OKD6+2SoQ8Z/tZeUcLlWXD1j6BP+VS9Ad
 k1RNoo2mPUwaE98mb5miqLxPS5rx44hBu39GM5uGtqLE+gTqugOzE2vrBu0bTE2viVr+jkv0o
 O4RmOmHgMJL4jfV6NXLAPq6jLc4F8Bo2xKgYiRYOVhAwlleUpl9xbfT2pGtHBxaFjiwbRNcx7
 MKhUeo7+/VJ+kwx0dg4Dlne3F4pTcfhzihSyviSaGewDKAd8ndZA11j6b9lN965H/6Yl6Vzl3
 CUpZAG/5L/vCnhA2HxxhZEdAEEWhcBrfKGMPeOZY1+DlxZNLWaPZrtUFj5DeI0MexOzLzd3Ox
 sX7TNvKvexFqlr2BLidfSeD52v+ia2liutNszo6sSQPXLXHnZARCl/0Fr+bmayac2dLoiuRbS
 AZl3BIaRLGYNtGfA7
Subject: Re: [Cake] Query on ACK
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
Cc: "Mohit P. Tahiliani" <tahiliani@nitk.edu.in>,
 Shrinidhi Varna <shrinidhivarna.171co145@nitk.edu.in>,
 Deepak K <deepakkavoor99@gmail.com>, Vybhav Pai <vybhavpai1999.vp@gmail.com>
Content-Type: multipart/mixed; boundary="===============0059885484985075133=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============0059885484985075133==
Content-Type: multipart/alternative; boundary="----HUSUBPRUZ6YHZ7W3D7D2O0QTLT6RMS"
Content-Transfer-Encoding: 7bit

------HUSUBPRUZ6YHZ7W3D7D2O0QTLT6RMS
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

I think that you will remove all redundant Backs in one go considerably adv=
ancing the new ACK in the queue=2E And more importantly, in most relevant m=
odes cake will apply one queue per flow stochastically, so almost all packe=
t's in a reverse ACK flow will be ACK with identical 5-tupel=2E=2E=2E=2E

On 7 May 2020 08:44:59 CEST, Avakash bhat <avakash261@gmail=2Ecom> wrote:
>Thanks for the quick response=2E I also had a followup question=2E
>
>If the ack filter adds the new ack to the tail of the queue after
>removing
>an ack from the queue, won't it be starving the ack?
>The replaced ack was much ahead in the queue than the ack we replaced
>at
>the tail right?
>
>Thanks,
>Avakash Bhat

--=20
Sent from my Android device with K-9 Mail=2E Please excuse my brevity=2E
------HUSUBPRUZ6YHZ7W3D7D2O0QTLT6RMS
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body>I think that you will remove all redundant Backs i=
n one go considerably advancing the new ACK in the queue=2E And more import=
antly, in most relevant modes cake will apply one queue per flow stochastic=
ally, so almost all packet's in a reverse ACK flow will be ACK with identic=
al 5-tupel=2E=2E=2E=2E<br><br><div class=3D"gmail_quote">On 7 May 2020 08:4=
4:59 CEST, Avakash bhat &lt;avakash261@gmail=2Ecom&gt; wrote:<blockquote cl=
ass=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0=2E8ex; border-left: 1px =
solid rgb(204, 204, 204); padding-left: 1ex;">
<div dir=3D"ltr"><br>Thanks for the quick response=2E I also had a followu=
p question=2E&nbsp;<div><br><div>If the ack filter adds the new ack to the =
tail of the queue after removing an ack from the queue, won't it be starvin=
g the ack?&nbsp;</div><div>The replaced ack was much ahead in the queue tha=
n the ack we replaced at the tail right?</div><div><br></div><div>Thanks,</=
div><div>Avakash Bhat</div></div></div>
</blockquote></div><br>-- <br>Sent from my Android device with K-9 Mail=2E=
 Please excuse my brevity=2E</body></html>
------HUSUBPRUZ6YHZ7W3D7D2O0QTLT6RMS--

--===============0059885484985075133==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============0059885484985075133==--
