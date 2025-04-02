Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B65CCAD0090
	for <lists+cake@lfdr.de>; Fri,  6 Jun 2025 12:41:34 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 66FA33D589;
	Fri,  6 Jun 2025 06:41:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1749206460;
	bh=29A5xtQ/jeyiPn3ECDSbmW7EFsxBkiZRVJBpe455fQ4=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=JlEYf/D0HwOFoT04KUWy7UW/oT67qWDTVC4rrGMpwcMHax6O/M5xQ4X2hVPP5eF/P
	 lGMymAcQ11PiPKoO/eLAwaUsly7GiY+ODL77X9VLBCYFjDRvf0XFy0aEqoa4X1/UNc
	 zV2Xk/3kirFn/4mUCKx1mcpMxebpz6g5m5ITC6o2OoGOb2ffeBhMJCmIZ/QgHLHHjq
	 iOBmYVCJippSbYiLPq4P6++7B6N1rLWIA9gw6YV7IsHPdzR2imTB1ycNGqQBGOZ1jH
	 mRO5+WS3W084VZt/S85cP6y8EtaKYeVey91jn1oBbBxXLapUh+1DnrpZqWX7/zw4Rp
	 MoMS4EOT7Iazw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com
 [IPv6:2a00:1450:4864:20::22b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 4CDD43B2A4;
 Wed,  2 Apr 2025 11:06:57 -0400 (EDT)
Received: by mail-lj1-x22b.google.com with SMTP id
 38308e7fff4ca-3061513d353so71667251fa.2; 
 Wed, 02 Apr 2025 08:06:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1743606416; x=1744211216; darn=lists.bufferbloat.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=r5mEe8MZd/2AdJoFnB9dtkdt3/KEsJQav0Waza4jzBc=;
 b=m29b8fxusUbb+yPgJPymNythpuG0xRcgAdIQMCjFEIw/ywizLCytkYqjUzlM8lGk6G
 e2WNgYOdXl0ZD5PqKygt44CITZ1N7Uoclpu50Buj27vmhMy/ldy8AouHomsn0cKEqshA
 e0x7PIlEgIRBaE22lX0gXSXrPB5i4jiudKgfc2EZUt8Rr6M2pk1sRXNvA7bQdd0BmssF
 XTvgztAcPHi+USw2glMJberbRXTx8D/Ab5eZLQZ6iGJFCx55EfwYqtSarNn6V27pizNA
 e2FUMzApW+Bi/oaIP5U1tyKNRBDc/aCLn45arbLUjjKX0Z/A9aV+uzUf5MDItH+Qq1RU
 syBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1743606416; x=1744211216;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=r5mEe8MZd/2AdJoFnB9dtkdt3/KEsJQav0Waza4jzBc=;
 b=xOFoGG5dvc70zid6j9u7ypeqj4SkU4JVkJCzGqJA4yES7UzowzVG8HWxa4LHW+MhHv
 lFDh7ZFkSOmydslio760Rn0eT0K3KTKFXD000SOPbZsD2x+H2bb7OjT7ZsU3YUvzSomi
 TQod/07kGGlpt3FWluuMNZ14NH+sMiQOiaHcCyNcVOgebytoP/ghmIDNpVZT0qkb5cuI
 BgY+fn2X31Ltx7Sg2hKg+wr56oXXP5BjZjEHKoF4h1RmHQZUMIsvY0cyykptQyjvIzJG
 Ga1ciO5ns9UsAZWjWeIqfB6G+yqIDBUtzMSbK45asiBu8g5WGt3zfMB/G8UdnjaCxTrP
 iFCA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUFYaFusN4gPl4Altyr8o/dfoIszLNHpnQhBTDW/J1I0tf2bE4GNg82DXyLbOzQIUeylnzcvlW0NIw=@lists.bufferbloat.net,
 AJvYcCUqHebdlwsB0EwgvlSktOb7gq+7790kZFFi1tv3pJ+4+fSyaSg0M1qkEAFk58oc/5QlU6bvsg==@lists.bufferbloat.net,
 AJvYcCVSs4Ou7YPdt3d4tlcFvBjPFWnGXALyxWW2NloQUeqA/UVMFh8fXugR5ErIVJeIUggNYVkNRLzBWcms@lists.bufferbloat.net,
 AJvYcCVglt6ePCe/hX+DOP9bdJ7QrMEBySqD1pZogBfC9Iwj7CExlG17D2H9PgVu5pAEC8T5ZcvET3Vq8g==@lists.bufferbloat.net,
 AJvYcCW23XsG/c7xAA3bntFpEB9hhxdcsWSqxEw5rMpI/qmnek3LaQiFFbdsLTugTm/8cJcQe8e4@lists.bufferbloat.net,
 AJvYcCW8c1ESp2bOYUlvdNpD3lH4QcQaN2dLixAOxKG0f7BCOgPBg+FdAQFunuD+s2PNkcLIQi2K6ZSHJxFqxkqcaw==@lists.bufferbloat.net,
 AJvYcCWHNUkzFpB9fYvHh1X5uGUT8GY3b5AvxipgQoB2qWAgV/uqGp9a8kLI/rjHthZs7g/Y7cTTmgp02s28efNr5L4=@lists.bufferbloat.net,
 AJvYcCWSCYDy/NVSQr6ZBsXzn3DQIp6oMMHz6lL1aWyZU6ZclXoM74hA+XSzPC2bPlpM4q9peTjKqJc=@lists.bufferbloat.net,
 AJvYcCWV5h+ZsoDsFfoWiHW//zCtoHrBG4OIFZLrvUpOA8HpF2FQvRkTykOJLZnc8rdkBFQgr1d/IcJ+6pKNjZs8dOM=@lists.bufferbloat.net,
 AJvYcCX/NhQeXqWUQ2OMkCZzTmG09FqrMkoaw/ma5poIUhtVS5iv1vCLFyicIARoowW2cxGiBxhzbTY=@lists.bufferbloat.net,
 AJvYcCXMl4FhYnW48mo8B2FR0zK22A+Tb/O7xKL7BZcC6ZijUrutUfBlh+SlMX+e9u7zd0wqF740HuJFbSV63oxCSg==@lists.bufferbloat.net,
 AJvYcCXXEnlppueuPwnCwvvWzHXH8rvRUYLHR1W027HwVoT+XPQjxcIPq7Hmt5OGmZSFRU2WHDrZIjViMw34Dm3R+9ID@lists.bufferbloat.net,
 AJvYcCXZRhYqfSrpu/SpkBAZts8eZZoKIsVs8XgnFwkE1xFiMqz7p5FPR6dvAevDD6rbjl3b1ZCZZNknX1c=@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YyTeZfEHCbEDNZxbNG2DFv1ey3kpHs/yymSITL+38ayC5o4e9Ul
 +acj6wFs+yS8N5Q4ive43rF8TyaD6i/mkNliGVt2No2IRynNDEPWG/4WD1pq3UkthkeVLxGQq4t
 pLRNYONce0Kp/Er25mtGEqI9B+T4=
X-Gm-Gg: ASbGnctutiO8v2mQc72ShotCwSR+pDuAtMNWP7PnYZ6W4+RX6OOMFtMjynQdEq/BstE
 LK56Al0Ceu2UCFrgRo/tA+w/l6+HgkPE8letzPKheNooQKHTO3ZBtpD+qR39bW0koWmEPkeCiEe
 quU2QPQBKz2KhPLSANnFlqRKcMrWac21v9xZX7aMbHB10TgftAsiVDPdLSfw==
X-Google-Smtp-Source: AGHT+IG4sL9IHMRc1qwU3VePbitTXtW+HWRMfxl8nyuaKKvcxBnu3zLKMdAqG25JcLqThHQqpVaRmMYYoyrW24De0Lw=
X-Received: by 2002:a2e:bc88:0:b0:308:ec50:e841 with SMTP id
 38308e7fff4ca-30ef91c4b5dmr12836211fa.25.1743606415738; Wed, 02 Apr 2025
 08:06:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
 <014po62q-r99p-71np-52r1-n84n9np63nqr@ynat.uz> <87plhvlyoc.fsf@toke.dk>
 <976DC4FC-44CA-4C7E-90E0-DE39B57F01E1@comcast.com>
 <8DA2934A-43D1-4700-8F32-CA424C3FAE8D@comcast.com>
In-Reply-To: <8DA2934A-43D1-4700-8F32-CA424C3FAE8D@comcast.com>
Date: Wed, 2 Apr 2025 11:06:43 -0400
X-Gm-Features: AQ5f1Jqb5RylKAJXF4RR7KAqFt2CWzXGLhldJ_gNTXkpqQZYxm5Hhw-qZOfdEt0
Message-ID: <CAJZMiueitCcVVvydgcXzz+Djy3q1Rp6D2mXdCM6ZAQ7wprgM1g@mail.gmail.com>
To: "Livingood, Jason" <jason_livingood@comcast.com>
X-Mailman-Approved-At: Fri, 06 Jun 2025 06:40:58 -0400
Subject: Re: [Cake]
	=?utf-8?q?=5BBloat=5D_In_loving_memory_of_Dave_T=C3=A4ht_?=
	=?utf-8?q?=3C3?=
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
From: Daniel Sterling via Cake <cake@lists.bufferbloat.net>
Reply-To: Daniel Sterling <sterling.daniel@gmail.com>
Cc: "cerowrt-commits@lists.bufferbloat.net"
 <cerowrt-commits@lists.bufferbloat.net>,
 "bloat-ietf@lists.bufferbloat.net" <bloat-ietf@lists.bufferbloat.net>,
 Herbert Wolverson <hwolverson@libreqos.io>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 "cerowrt-users@lists.bufferbloat.net" <cerowrt-users@lists.bufferbloat.net>,
 libreqos <libreqos@lists.bufferbloat.net>,
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 "Frantisek \(Frank\) Borsik" <frank@libreqos.io>,
 =?UTF-8?Q?Network_Neutrality_is_back=21_Let=C2=B4s_make_the_technical_aspect?=
 =?UTF-8?Q?s_heard_this_time=21?= <nnagain@lists.bufferbloat.net>,
 "codel-wireless@lists.bufferbloat.net" <codel-wireless@lists.bufferbloat.net>,
 "cerowrt-devel@lists.bufferbloat.net" <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 "codel@lists.bufferbloat.net" <codel@lists.bufferbloat.net>,
 Vint Cerf <vint@google.com>,
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 =?UTF-8?Q?Robert_Chac=C3=B3n?= <robert@libreqos.io>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gV2VkLCBBcHIgMiwgMjAyNSBhdCAxMDowMOKAr0FNIExpdmluZ29vZCwgSmFzb24gdmlhIEJs
b2F0CjxibG9hdEBsaXN0cy5idWZmZXJibG9hdC5uZXQ+IHdyb3RlOgo+IEhlIHN1Y2NlZWRlZCBp
biBoaXMgZ29hbCB0byBtYWtlIHRoZSBpbnRlcm5ldCBiZXR0ZXIgZm9yIGV2ZXJ5b25lIQoKVGhp
cyBjYW5ub3QgYmUgb3ZlcnN0YXRlZC4gV2Ugb3dlIERhdmUgYSBodWdlIGRlYnQgb2YgZ3JhdGl0
dWRlIGZvcgphbGwgaGlzIHRpcmVsZXNzIHdvcmsgaGVscGluZyBhbnlvbmUgYW5kIGV2ZXJ5b25l
IGltcHJvdmUgdGhlaXIKbmV0d29yaywgZnJvbSB0aGUgc21hbGxlc3QgdG8gdGhlIGxhcmdlc3Qu
CgpIZSB3aWxsIGJlIG1pc3NlZC4KCkkgY2FuIG9ubHkgaG9wZSBvdGhlcnMgdGhhdCBjYW4gd2ls
bCBjb250aW51ZSB0byBob2xkIHRoZSB0b3JjaCBpbiBoaXMKbmFtZSwgYnJpbmdpbmcgYmV0dGVy
IGxhdGVuY3kgYW5kIGJldHRlciBpbnRlcm5ldCB0byBldmVyeW9uZQoKLS0gRGFuCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0
CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0
L2xpc3RpbmZvL2Nha2UK
