Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E407F3B5254
	for <lists+cake@lfdr.de>; Sun, 27 Jun 2021 08:30:39 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 7E5203CB47;
	Sun, 27 Jun 2021 02:30:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1624775438;
	bh=N3Q5eZOE42TTmCCOKkfUu5NG7tfp/JYO33+CO//bsIc=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RseI2pcJk882rSUMSd42LT7gLQBwJm0d82MwMuZI1VF8O5Yd27nH3QPB9R3t9heSj
	 7iUlZPW5OPZQ588PsXt9eaQhRanJ+Oqc+W0whTf2crdgk+1B/+XCk79wk+pELHolp/
	 1Bw5+5Fate2cVQLMMMMgnWV1CYZtD/3ZbFKoEC1NhdiOsKKtHi7LqJ5Qx0wlkFGZM3
	 Lg5LJ3jNpVQHlWxB73pTZ8lb7ErLyPz1M/z7d8h0cNPrr8M5dxC4ZjN4qqWxEz/SFb
	 0QQPNlnYn0xZ9ZCTPDz36jxKPugQ60JL88mgAdhf7Lv/loJXY7JIcXYghUH1XI+6y3
	 xnvR1du98QhQw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com
 [IPv6:2a00:1450:4864:20::129])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 337D23CB41
 for <cake@lists.bufferbloat.net>; Sun, 27 Jun 2021 02:30:37 -0400 (EDT)
Received: by mail-lf1-x129.google.com with SMTP id f30so25277745lfj.1
 for <cake@lists.bufferbloat.net>; Sat, 26 Jun 2021 23:30:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mounce.com.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tePxubwR8b+AG8Ze/n36KIbMjdRcySuSPf7aWenuGRE=;
 b=k2JiJaewnlNhFK3Lzkq8xVEaM+3bizbY53geeAJ0150WHNIeXlc8vUXplVRJ4JLvyZ
 Tj7MAfuhuFeQ5DmMpCgNSH9T+A0snDfEnEWc+HyNTQ3u7J3X6EkhhScPrZC1MKktGjEk
 evt41ocGsRciCkgy6CoOAl1SYLfE4ynny2I54TwaSFobUCO5L+8zNgRHS1zA6vB/JWvn
 QSJ4b3kW0YKgHtyquqWBL0TNg7oILVyjXkrhRuW0LdAoUTO96Qz7WoOz4h0i3jo/+8tS
 rkeknkRAIZKSKD0khQcFfET6CjV66Ug5osPtonlyg+99BF1FXNhiaRQ2eStA5bjD2r00
 AD5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tePxubwR8b+AG8Ze/n36KIbMjdRcySuSPf7aWenuGRE=;
 b=BNV5ppKCGnb35xmy9FmEc+JYjeY5NULJGfLJaxuqgewgAfrukDXqL7xK0Nes2py9en
 sWz/F2UAmfoZNRCVKELtAYn/eV1MKIeLdAOOrP7HqRDU9TmyCM7nUjBrIHmzntYecMfa
 jsD9yFd8pCZ/XVlvt2OF0DfkIzcEPk1B74Hkac0CYsmbkC++OjJjW2W/dzYT2o5cN17T
 dMcx4Xq+QrSJ1VYy4bOplQu2KzZh7IvX5NPeTNJ+I2Kt6VKQ3YDf6fUpwuc2FpIXzYxn
 4ucxNn8BbJKV8zT91KMsLR7EB5sGKGcMgqaLJhdPCo4JdJUDMG+tJmRbhzznMzbObWD+
 kL0g==
X-Gm-Message-State: AOAM532Lgok6pKNMi5glFkTRgYlsd/rzmIsfHyJQ7zNHo6qEaUFC6zEt
 EcdXKYKcIK5QHnzSSPTPSLu4AACa5asi0M8R5Ox6ng==
X-Google-Smtp-Source: ABdhPJzXJqtrzSFQ2cvmKH9sdcdA93aIVZERxejZK6YQqqMlPXjzNjb4449QMjk7mo1uY1MrMOjuEnMCR3p6SowKsCU=
X-Received: by 2002:ac2:546a:: with SMTP id e10mr14790785lfn.244.1624775435827; 
 Sat, 26 Jun 2021 23:30:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw5VyU-6A9NMm_D7iCC19WbkSmPAWUBa6wFttS39+g9H8g@mail.gmail.com>
 <CAA93jw7W7bZCfVhfzec5aht0SCQvg0Go4V0JnW7WnLBAhpRxQA@mail.gmail.com>
In-Reply-To: <CAA93jw7W7bZCfVhfzec5aht0SCQvg0Go4V0JnW7WnLBAhpRxQA@mail.gmail.com>
From: Ryan Mounce <ryan@mounce.com.au>
Date: Sun, 27 Jun 2021 16:00:24 +0930
Message-ID: <CAN+fvRY2hc1xTwAmp1nv5Quw+KTsfGFnbN1JzOMe6xBi9c7TJA@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
Subject: Re: [Cake] Fwd: ack filter rrul result at 200/10
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============6936550633659690818=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============6936550633659690818==
Content-Type: multipart/alternative; boundary="000000000000b14cfc05c5b982b7"

--000000000000b14cfc05c5b982b7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Dave,

EdgeRouter X running OpenWrt 19.07.4, shaping to 112/20

qdisc cake 1111: dev eth0.2 root refcnt 2 bandwidth 20Mbit diffserv3
dual-srchost nat wash ack-filter-aggressive split-gso rtt 100.0ms noatm
overhead 26 mpu 64 fwmark 0x3
 Sent 391625627749 bytes 493756837 pkt (dropped 4534914, overlimits
249653529 requeues 0)
 backlog 1216b 1p requeues 0
 memory used: 4209984b of 4Mb
 capacity estimate: 20Mbit
 min/max network layer size:           28 /    1500
 min/max overhead-adjusted size:       64 /    1526
 average network hdr offset:           14

                   Bulk  Best Effort        Voice
  thresh       1250Kbit       20Mbit        5Mbit
  target         14.5ms        5.0ms        5.0ms
  interval      109.5ms      100.0ms      100.0ms
  pk_delay        6.4ms        6.1ms        4.3ms
  av_delay        1.5ms        668us        239us
  sp_delay         67us         22us         12us
  backlog            0b        1216b           0b
  pkts        260936279    231124444      6231029
  bytes    313359244900  77984175519    690666701
  way_inds     36626015     21720222       636374
  way_miss      5483045      5979450        13296
  way_cols           13            0            0
  drops           35283        33392          108
  marks         1635374         4611            1
  ack_drop       139228      4326498          405
  sp_flows            0            2            1
  bk_flows            1            0            0
  un_flows            0            0            0
  max_len         67436        49038         1269
  quantum           300          610          300

qdisc cake 8001: dev ibe0d2 root refcnt 2 bandwidth 112Mbit diffserv3
dual-dsthost nat nowash ingress no-ack-filter split-gso rtt 100.0ms noatm
overhead 26 mpu 64 fwmark 0x3
 Sent 622977131545 bytes 687017027 pkt (dropped 485937, overlimits
331101691 requeues 0)
 backlog 0b 0p requeues 0
 memory used: 4052877b of 5600000b
 capacity estimate: 112Mbit
 min/max network layer size:           48 /    1500
 min/max overhead-adjusted size:       74 /    1526
 average network hdr offset:           14

                   Bulk  Best Effort        Voice
  thresh          7Mbit      112Mbit       28Mbit
  target          5.0ms        5.0ms        5.0ms
  interval      100.0ms      100.0ms      100.0ms
  pk_delay        965us        7.1ms        962us
  av_delay         40us        3.3ms         40us
  sp_delay         15us         16us          9us
  backlog            0b           0b           0b
  pkts        137420272    549998256        84436
  bytes     25919208286 597744167438      8279109
  way_inds     18794733     42309661            0
  way_miss      4235643      9977445            5
  way_cols            9            0            0
  drops            2853       483084            0
  marks            8811      1306562            0
  ack_drop            0            0            0
  sp_flows            1            1            1
  bk_flows            0            1            0
  un_flows            0            0            0
  max_len         48448        68130          342
  quantum           300         1514          854



On Sun, 27 Jun 2021 at 12:24, Dave Taht <dave.taht@gmail.com> wrote:

> I am curious if anyone has any tc -s qdisc show output of
> ack-filtering on both the up and down at any symmetry?
>
> ---------- Forwarded message ---------
> From: Dave Taht <dave.taht@gmail.com>
> Date: Wed, Nov 15, 2017 at 9:22 PM
> Subject: Re: ack filter rrul result at 200/10
> To: Cake List <cake@lists.bufferbloat.net>
> Cc: Jim Gettys <jg@freedesktop.org>
>
>
> and 200/10 looked reasonable too.
>
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

--000000000000b14cfc05c5b982b7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+PGRpdj5IaSBEYXZlLDwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+RWRn
ZVJvdXRlciBYIHJ1bm5pbmcgT3BlbldydCAxOS4wNy40LCBzaGFwaW5nIHRvIDExMi8yMDxicj48
L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2IGRpcj0ibHRyIj5xZGlzYyBjYWtlIDExMTE6IGRldiBl
dGgwLjIgcm9vdCByZWZjbnQgMiBiYW5kd2lkdGggMjBNYml0IGRpZmZzZXJ2MyBkdWFsLXNyY2hv
c3QgbmF0IHdhc2ggYWNrLWZpbHRlci1hZ2dyZXNzaXZlIHNwbGl0LWdzbyBydHQgMTAwLjBtcyBu
b2F0bSBvdmVyaGVhZCAyNiBtcHUgNjQgZndtYXJrIDB4Mzxicj7CoFNlbnQgMzkxNjI1NjI3NzQ5
IGJ5dGVzIDQ5Mzc1NjgzNyBwa3QgKGRyb3BwZWQgNDUzNDkxNCwgb3ZlcmxpbWl0cyAyNDk2NTM1
MjkgcmVxdWV1ZXMgMCk8YnI+wqBiYWNrbG9nIDEyMTZiIDFwIHJlcXVldWVzIDA8YnI+wqBtZW1v
cnkgdXNlZDogNDIwOTk4NGIgb2YgNE1iPGJyPsKgY2FwYWNpdHkgZXN0aW1hdGU6IDIwTWJpdDxi
cj7CoG1pbi9tYXggbmV0d29yayBsYXllciBzaXplOiDCoCDCoCDCoCDCoCDCoCAyOCAvIMKgIMKg
MTUwMDxicj7CoG1pbi9tYXggb3ZlcmhlYWQtYWRqdXN0ZWQgc2l6ZTogwqAgwqAgwqAgNjQgLyDC
oCDCoDE1MjY8YnI+wqBhdmVyYWdlIG5ldHdvcmsgaGRyIG9mZnNldDogwqAgwqAgwqAgwqAgwqAg
MTQ8YnI+PGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgQnVsayDCoEJlc3QgRWZmb3J0
IMKgIMKgIMKgIMKgVm9pY2U8YnI+wqAgdGhyZXNoIMKgIMKgIMKgIDEyNTBLYml0IMKgIMKgIMKg
IDIwTWJpdCDCoCDCoCDCoCDCoDVNYml0PGJyPsKgIHRhcmdldCDCoCDCoCDCoCDCoCAxNC41bXMg
wqAgwqAgwqAgwqA1LjBtcyDCoCDCoCDCoCDCoDUuMG1zPGJyPsKgIGludGVydmFsIMKgIMKgIMKg
MTA5LjVtcyDCoCDCoCDCoDEwMC4wbXMgwqAgwqAgwqAxMDAuMG1zPGJyPsKgIHBrX2RlbGF5IMKg
IMKgIMKgIMKgNi40bXMgwqAgwqAgwqAgwqA2LjFtcyDCoCDCoCDCoCDCoDQuM21zPGJyPsKgIGF2
X2RlbGF5IMKgIMKgIMKgIMKgMS41bXMgwqAgwqAgwqAgwqA2Njh1cyDCoCDCoCDCoCDCoDIzOXVz
PGJyPsKgIHNwX2RlbGF5IMKgIMKgIMKgIMKgIDY3dXMgwqAgwqAgwqAgwqAgMjJ1cyDCoCDCoCDC
oCDCoCAxMnVzPGJyPsKgIGJhY2tsb2cgwqAgwqAgwqAgwqAgwqAgwqAwYiDCoCDCoCDCoCDCoDEy
MTZiIMKgIMKgIMKgIMKgIMKgIDBiPGJyPsKgIHBrdHMgwqAgwqAgwqAgwqAyNjA5MzYyNzkgwqAg
wqAyMzExMjQ0NDQgwqAgwqAgwqA2MjMxMDI5PGJyPsKgIGJ5dGVzIMKgIMKgMzEzMzU5MjQ0OTAw
IMKgNzc5ODQxNzU1MTkgwqAgwqA2OTA2NjY3MDE8YnI+wqAgd2F5X2luZHMgwqAgwqAgMzY2MjYw
MTUgwqAgwqAgMjE3MjAyMjIgwqAgwqAgwqAgNjM2Mzc0PGJyPsKgIHdheV9taXNzIMKgIMKgIMKg
NTQ4MzA0NSDCoCDCoCDCoDU5Nzk0NTAgwqAgwqAgwqAgwqAxMzI5Njxicj7CoCB3YXlfY29scyDC
oCDCoCDCoCDCoCDCoCAxMyDCoCDCoCDCoCDCoCDCoCDCoDAgwqAgwqAgwqAgwqAgwqAgwqAwPGJy
PsKgIGRyb3BzIMKgIMKgIMKgIMKgIMKgIDM1MjgzIMKgIMKgIMKgIMKgMzMzOTIgwqAgwqAgwqAg
wqAgwqAxMDg8YnI+wqAgbWFya3MgwqAgwqAgwqAgwqAgMTYzNTM3NCDCoCDCoCDCoCDCoCA0NjEx
IMKgIMKgIMKgIMKgIMKgIMKgMTxicj7CoCBhY2tfZHJvcCDCoCDCoCDCoCAxMzkyMjggwqAgwqAg
wqA0MzI2NDk4IMKgIMKgIMKgIMKgIMKgNDA1PGJyPsKgIHNwX2Zsb3dzIMKgIMKgIMKgIMKgIMKg
IMKgMCDCoCDCoCDCoCDCoCDCoCDCoDIgwqAgwqAgwqAgwqAgwqAgwqAxPGJyPsKgIGJrX2Zsb3dz
IMKgIMKgIMKgIMKgIMKgIMKgMSDCoCDCoCDCoCDCoCDCoCDCoDAgwqAgwqAgwqAgwqAgwqAgwqAw
PGJyPsKgIHVuX2Zsb3dzIMKgIMKgIMKgIMKgIMKgIMKgMCDCoCDCoCDCoCDCoCDCoCDCoDAgwqAg
wqAgwqAgwqAgwqAgwqAwPGJyPsKgIG1heF9sZW4gwqAgwqAgwqAgwqAgNjc0MzYgwqAgwqAgwqAg
wqA0OTAzOCDCoCDCoCDCoCDCoCAxMjY5PGJyPsKgIHF1YW50dW0gwqAgwqAgwqAgwqAgwqAgMzAw
IMKgIMKgIMKgIMKgIMKgNjEwIMKgIMKgIMKgIMKgIMKgMzAwPGJyPjxicj5xZGlzYyBjYWtlIDgw
MDE6IGRldiBpYmUwZDIgcm9vdCByZWZjbnQgMiBiYW5kd2lkdGggMTEyTWJpdCBkaWZmc2VydjMg
ZHVhbC1kc3Rob3N0IG5hdCBub3dhc2ggaW5ncmVzcyBuby1hY2stZmlsdGVyIHNwbGl0LWdzbyBy
dHQgMTAwLjBtcyBub2F0bSBvdmVyaGVhZCAyNiBtcHUgNjQgZndtYXJrIDB4Mzxicj7CoFNlbnQg
NjIyOTc3MTMxNTQ1IGJ5dGVzIDY4NzAxNzAyNyBwa3QgKGRyb3BwZWQgNDg1OTM3LCBvdmVybGlt
aXRzIDMzMTEwMTY5MSByZXF1ZXVlcyAwKTxicj7CoGJhY2tsb2cgMGIgMHAgcmVxdWV1ZXMgMDxi
cj7CoG1lbW9yeSB1c2VkOiA0MDUyODc3YiBvZiA1NjAwMDAwYjxicj7CoGNhcGFjaXR5IGVzdGlt
YXRlOiAxMTJNYml0PGJyPsKgbWluL21heCBuZXR3b3JrIGxheWVyIHNpemU6IMKgIMKgIMKgIMKg
IMKgIDQ4IC8gwqAgwqAxNTAwPGJyPsKgbWluL21heCBvdmVyaGVhZC1hZGp1c3RlZCBzaXplOiDC
oCDCoCDCoCA3NCAvIMKgIMKgMTUyNjxicj7CoGF2ZXJhZ2UgbmV0d29yayBoZHIgb2Zmc2V0OiDC
oCDCoCDCoCDCoCDCoCAxNDxicj48YnI+wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBCdWxr
IMKgQmVzdCBFZmZvcnQgwqAgwqAgwqAgwqBWb2ljZTxicj7CoCB0aHJlc2ggwqAgwqAgwqAgwqAg
wqA3TWJpdCDCoCDCoCDCoDExMk1iaXQgwqAgwqAgwqAgMjhNYml0PGJyPsKgIHRhcmdldCDCoCDC
oCDCoCDCoCDCoDUuMG1zIMKgIMKgIMKgIMKgNS4wbXMgwqAgwqAgwqAgwqA1LjBtczxicj7CoCBp
bnRlcnZhbCDCoCDCoCDCoDEwMC4wbXMgwqAgwqAgwqAxMDAuMG1zIMKgIMKgIMKgMTAwLjBtczxi
cj7CoCBwa19kZWxheSDCoCDCoCDCoCDCoDk2NXVzIMKgIMKgIMKgIMKgNy4xbXMgwqAgwqAgwqAg
wqA5NjJ1czxicj7CoCBhdl9kZWxheSDCoCDCoCDCoCDCoCA0MHVzIMKgIMKgIMKgIMKgMy4zbXMg
wqAgwqAgwqAgwqAgNDB1czxicj7CoCBzcF9kZWxheSDCoCDCoCDCoCDCoCAxNXVzIMKgIMKgIMKg
IMKgIDE2dXMgwqAgwqAgwqAgwqAgwqA5dXM8YnI+wqAgYmFja2xvZyDCoCDCoCDCoCDCoCDCoCDC
oDBiIMKgIMKgIMKgIMKgIMKgIDBiIMKgIMKgIMKgIMKgIMKgIDBiPGJyPsKgIHBrdHMgwqAgwqAg
wqAgwqAxMzc0MjAyNzIgwqAgwqA1NDk5OTgyNTYgwqAgwqAgwqAgwqA4NDQzNjxicj7CoCBieXRl
cyDCoCDCoCAyNTkxOTIwODI4NiA1OTc3NDQxNjc0MzggwqAgwqAgwqA4Mjc5MTA5PGJyPsKgIHdh
eV9pbmRzIMKgIMKgIDE4Nzk0NzMzIMKgIMKgIDQyMzA5NjYxIMKgIMKgIMKgIMKgIMKgIMKgMDxi
cj7CoCB3YXlfbWlzcyDCoCDCoCDCoDQyMzU2NDMgwqAgwqAgwqA5OTc3NDQ1IMKgIMKgIMKgIMKg
IMKgIMKgNTxicj7CoCB3YXlfY29scyDCoCDCoCDCoCDCoCDCoCDCoDkgwqAgwqAgwqAgwqAgwqAg
wqAwIMKgIMKgIMKgIMKgIMKgIMKgMDxicj7CoCBkcm9wcyDCoCDCoCDCoCDCoCDCoCDCoDI4NTMg
wqAgwqAgwqAgNDgzMDg0IMKgIMKgIMKgIMKgIMKgIMKgMDxicj7CoCBtYXJrcyDCoCDCoCDCoCDC
oCDCoCDCoDg4MTEgwqAgwqAgwqAxMzA2NTYyIMKgIMKgIMKgIMKgIMKgIMKgMDxicj7CoCBhY2tf
ZHJvcCDCoCDCoCDCoCDCoCDCoCDCoDAgwqAgwqAgwqAgwqAgwqAgwqAwIMKgIMKgIMKgIMKgIMKg
IMKgMDxicj7CoCBzcF9mbG93cyDCoCDCoCDCoCDCoCDCoCDCoDEgwqAgwqAgwqAgwqAgwqAgwqAx
IMKgIMKgIMKgIMKgIMKgIMKgMTxicj7CoCBia19mbG93cyDCoCDCoCDCoCDCoCDCoCDCoDAgwqAg
wqAgwqAgwqAgwqAgwqAxIMKgIMKgIMKgIMKgIMKgIMKgMDxicj7CoCB1bl9mbG93cyDCoCDCoCDC
oCDCoCDCoCDCoDAgwqAgwqAgwqAgwqAgwqAgwqAwIMKgIMKgIMKgIMKgIMKgIMKgMDxicj7CoCBt
YXhfbGVuIMKgIMKgIMKgIMKgIDQ4NDQ4IMKgIMKgIMKgIMKgNjgxMzAgwqAgwqAgwqAgwqAgwqAz
NDI8YnI+wqAgcXVhbnR1bSDCoCDCoCDCoCDCoCDCoCAzMDAgwqAgwqAgwqAgwqAgMTUxNCDCoCDC
oCDCoCDCoCDCoDg1NDwvZGl2PjxkaXYgZGlyPSJsdHIiPjxicj48L2Rpdj48ZGl2IGRpcj0ibHRy
Ij48YnI+PC9kaXY+PGJyPjxkaXYgY2xhc3M9ImdtYWlsX3F1b3RlIj48ZGl2IGRpcj0ibHRyIiBj
bGFzcz0iZ21haWxfYXR0ciI+T24gU3VuLCAyNyBKdW4gMjAyMSBhdCAxMjoyNCwgRGF2ZSBUYWh0
ICZsdDs8YSBocmVmPSJtYWlsdG86ZGF2ZS50YWh0QGdtYWlsLmNvbSI+ZGF2ZS50YWh0QGdtYWls
LmNvbTwvYT4mZ3Q7IHdyb3RlOjxicj48L2Rpdj48YmxvY2txdW90ZSBjbGFzcz0iZ21haWxfcXVv
dGUiIHN0eWxlPSJtYXJnaW46MHB4IDBweCAwcHggMC44ZXg7Ym9yZGVyLWxlZnQ6MXB4IHNvbGlk
IHJnYigyMDQsMjA0LDIwNCk7cGFkZGluZy1sZWZ0OjFleCI+SSBhbSBjdXJpb3VzIGlmIGFueW9u
ZSBoYXMgYW55IHRjIC1zIHFkaXNjIHNob3cgb3V0cHV0IG9mPGJyPg0KYWNrLWZpbHRlcmluZyBv
biBib3RoIHRoZSB1cCBhbmQgZG93biBhdCBhbnkgc3ltbWV0cnk/PGJyPg0KPGJyPg0KLS0tLS0t
LS0tLSBGb3J3YXJkZWQgbWVzc2FnZSAtLS0tLS0tLS08YnI+DQpGcm9tOiBEYXZlIFRhaHQgJmx0
OzxhIGhyZWY9Im1haWx0bzpkYXZlLnRhaHRAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+ZGF2
ZS50YWh0QGdtYWlsLmNvbTwvYT4mZ3Q7PGJyPg0KRGF0ZTogV2VkLCBOb3YgMTUsIDIwMTcgYXQg
OToyMiBQTTxicj4NClN1YmplY3Q6IFJlOiBhY2sgZmlsdGVyIHJydWwgcmVzdWx0IGF0IDIwMC8x
MDxicj4NClRvOiBDYWtlIExpc3QgJmx0OzxhIGhyZWY9Im1haWx0bzpjYWtlQGxpc3RzLmJ1ZmZl
cmJsb2F0Lm5ldCIgdGFyZ2V0PSJfYmxhbmsiPmNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0PC9h
PiZndDs8YnI+DQpDYzogSmltIEdldHR5cyAmbHQ7PGEgaHJlZj0ibWFpbHRvOmpnQGZyZWVkZXNr
dG9wLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmpnQGZyZWVkZXNrdG9wLm9yZzwvYT4mZ3Q7PGJyPg0K
PGJyPg0KPGJyPg0KYW5kIDIwMC8xMCBsb29rZWQgcmVhc29uYWJsZSB0b28uPGJyPg0KPGJyPg0K
PGJyPg0KLS0gPGJyPg0KTGF0ZXN0IFBvZGNhc3Q6PGJyPg0KPGEgaHJlZj0iaHR0cHM6Ly93d3cu
bGlua2VkaW4uY29tL2ZlZWQvdXBkYXRlL3VybjpsaTphY3Rpdml0eTo2NzkxMDE0Mjg0OTM2Nzg1
OTIwLyIgcmVsPSJub3JlZmVycmVyIiB0YXJnZXQ9Il9ibGFuayI+aHR0cHM6Ly93d3cubGlua2Vk
aW4uY29tL2ZlZWQvdXBkYXRlL3VybjpsaTphY3Rpdml0eTo2NzkxMDE0Mjg0OTM2Nzg1OTIwLzwv
YT48YnI+DQo8YnI+DQpEYXZlIFTDpGh0IENUTywgVGVrTGlicmUsIExMQzxicj4NCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fPGJyPg0KQ2FrZSBtYWlsaW5n
IGxpc3Q8YnI+DQo8YSBocmVmPSJtYWlsdG86Q2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQiIHRh
cmdldD0iX2JsYW5rIj5DYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldDwvYT48YnI+DQo8YSBocmVm
PSJodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlIiByZWw9Im5vcmVm
ZXJyZXIiIHRhcmdldD0iX2JsYW5rIj5odHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0
aW5mby9jYWtlPC9hPjxicj4NCjwvYmxvY2txdW90ZT48L2Rpdj48L2Rpdj4NCg==
--000000000000b14cfc05c5b982b7--

--===============6936550633659690818==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============6936550633659690818==--
