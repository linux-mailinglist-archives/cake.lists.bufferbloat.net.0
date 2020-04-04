Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E2619E2A3
	for <lists+cake@lfdr.de>; Sat,  4 Apr 2020 06:12:38 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 819993CB3D;
	Sat,  4 Apr 2020 00:12:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1585973552;
	bh=B77fFUPNsOITclr6FbTGthMoPkkIknMGfK/gKXc2/bM=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=mUPtDE6AmK66VhcEsu23rfOvW1NqhLSsZl1DeMxVHsk/saV4d0bkU1F3l+MiZJXZz
	 HdGfupz4hvAv4Nk9EMkBU8dNXxJdB/ytCszZ/kvR6+0EU4zkwhjfkKs6BZ/GK66TNP
	 yOox5NcgBCbZ7RD8Sw8PpNEIT3Ohi7vUnEaAOKVvcpU+u+Z5dacg0I+MbHSZscCV/P
	 zp5yKC5djPgbXPHdpv6rZ2BBfacVNC94pyTDL33cyH7S2ltoMqQkiJW2B/UkAMmteB
	 9Hus1iIGG0EPaq6Wan3HspWRve9vf4nVFshsdZDRylyN34Oa3RqQTt4uTj73QfhSyr
	 ZH2lVw37Aok/A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com
 [IPv6:2607:f8b0:4864:20::72f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B5DE23B29D;
 Sat,  4 Apr 2020 00:12:30 -0400 (EDT)
Received: by mail-qk1-x72f.google.com with SMTP id o18so7610599qko.12;
 Fri, 03 Apr 2020 21:12:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=L4AUclCG6cnNRVbeQyiHxWnQxOahfqP1GFYmiCLdL30=;
 b=jWqrCv38RRS3nM7rrXE+BgBiN32MRnumPUBvm7wpdqXIuSQ/pHZV1S0K97dWKnYSeT
 rgTmn44xl57xcQMTGoC6OhmBZMIGC+kySTa0TDc0yg5brXheuNibY31rxs2lr2sy1JEE
 PhGslLmgoKMk1aeqFBTvizPFo0iCLzAWzdGFOEeN9rWbfgyuAIBjv0V4JZsr6ZFHcGsY
 UIOrD57mv7wDvPDYyli/ptKM6zorhhsmQcfir2ehb8zsqMBlTFWexJy5DQnA877+yLn1
 AkN1X82m5LmIeYpU4B3A4GZbsNqsx1NoOHW64asyHHUWOKqEQJ3gAnmUHFWQUxizzCW4
 aA9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=L4AUclCG6cnNRVbeQyiHxWnQxOahfqP1GFYmiCLdL30=;
 b=K2bo/VreymOGF97x8gLK22/VMJkIcGMJbT4AfzB3G3vKlA4E/bbWCG4X21l7mJAerG
 dPfgkorGlahJ/52fNXm/tL5Zz5SyPCiacPOipsqIE6ms+jtQsWMjLaOCQU1xTbtQFYjC
 54R8/8x3xncxyxK7/yKpjRHp8MD7a9eXx8g5MRS8jPMoVNHoLQnHZJuN793AzHLsjnLe
 FAgkFuHoHpsR+2xa95gVIqS71OEcvor/0RIvwcEflkcEQm/QWOLVcexBrQ2+8c9NV3e4
 Tqc8vdlyZuBM2/e5bVw3/g1bSfz0heCz3B/IVdn7Au+IKODEbOx3lVCKuEuAvzzZsacO
 NIaw==
X-Gm-Message-State: AGi0PuZsJjohKgksIT5V6TRGl9Rx2eQg22Bs0jOsqogzdm+Ka4I+Lwih
 IJdZbcEwsv/t4GFb+SINN3zqniQIPa19aSail7s6GwBb
X-Google-Smtp-Source: APiQypIi0CRmJMQVao1ZYon8oNdlNw3lNIQJM+VsrenUTKFlajAiMsOkau6iDa7EhBm3Goz/ofLArD9gD2Oe/gWLOqM=
X-Received: by 2002:a05:620a:2231:: with SMTP id
 n17mr12609515qkh.189.1585973550063; 
 Fri, 03 Apr 2020 21:12:30 -0700 (PDT)
MIME-Version: 1.0
From: Aaron Wood <woody77@gmail.com>
Date: Fri, 3 Apr 2020 21:12:19 -0700
Message-ID: <CALQXh-P1JGWHXQYnRd68woqj-C8CLxaxeD5=4xjYLYiLubkSeQ@mail.gmail.com>
To: cake@lists.bufferbloat.net, bloat <bloat@lists.bufferbloat.net>, 
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>
Subject: [Cake] New board that looks interesting
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
Content-Type: multipart/mixed; boundary="===============5959340780686657057=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============5959340780686657057==
Content-Type: multipart/alternative; boundary="00000000000013259a05a26f3ecf"

--00000000000013259a05a26f3ecf
Content-Type: text/plain; charset="UTF-8"

https://www.seeedstudio.com/ODYSSEY-X86J4105800-p-4445.html

quad-core Celeron J4105 1.5-2.5 GHz x64
8GB Ram
2x i211t intel ethernet controllers
intel 9560 802.11ac (wave2) wifi/bluetooth chipset
intel built-in graphics
onboard ARM Cortex-M0 and RPi & Arduino headers
m.2 and PCIe adapters
<$200

--00000000000013259a05a26f3ecf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><a href=3D"https://www.seeedstudio.com/OD=
YSSEY-X86J4105800-p-4445.html">https://www.seeedstudio.com/ODYSSEY-X86J4105=
800-p-4445.html</a><br></div><div dir=3D"ltr"><br></div><div>quad-core Cele=
ron J4105 1.5-2.5 GHz x64</div><div>8GB Ram</div><div>2x i211t intel ethern=
et controllers</div><div>intel 9560 802.11ac (wave2) wifi/bluetooth chipset=
</div><div>intel built-in graphics</div><div>onboard ARM Cortex-M0 and RPi =
&amp; Arduino headers</div><div>m.2 and PCIe adapters</div><div>&lt;$200</d=
iv><div><br></div><div><br></div></div>

--00000000000013259a05a26f3ecf--

--===============5959340780686657057==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============5959340780686657057==--
