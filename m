Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id DF3F6A86EEA
	for <lists+cake@lfdr.de>; Sat, 12 Apr 2025 20:41:18 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 445D83CB5E;
	Sat, 12 Apr 2025 14:41:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1744483265;
	bh=AZFTYBGkTc0asKORax4bFpXPcR/pAUB5m21Ro7QRyyw=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=Ies+ssWgEP0D6BxSidpGRVgdjoZ26/rtzr1GSoXocCIvFECFasTb1WIi6WUhs1IIq
	 QK55DUdJ2fdKdD/HeVfZ+gFfaQ0OvEFzK0YFMsNVs9RSIZtWkBZy8EpzAaP+oqy6PL
	 B9cCz0Rx4rQy61n0jGfxgZ6Gv997CkxNMAUdifZOVqkfvnyvWc33wSXS6l/IEUZFID
	 SwxWMBLCGSOO3j+fhn2mH89HuuxT/9wB1UtFMlL7YZGz1yK4W8Phc7KdyJNY918PoM
	 POnvVgNh4xNyonD4F4Y/O9CQMhcmwIJ7BuompMdn8LuBOkKfT7UVS9GiUL93NLRbg4
	 fGKQKcbcqjCsA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from bobcat.rjmcmahon.com (bobcat.rjmcmahon.com [45.33.58.123])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 0562C3B29E;
 Sat, 12 Apr 2025 14:41:03 -0400 (EDT)
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com
 [209.85.161.47])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by bobcat.rjmcmahon.com (Postfix) with ESMTPSA id 13E87248B2;
 Sat, 12 Apr 2025 11:41:03 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 bobcat.rjmcmahon.com 13E87248B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rjmcmahon.com;
 s=bobcat; t=1744483263;
 bh=Clvq4cPMVJ05BWnfpnEq6pW8O+kX4e6YU0V+izHrhJQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Ty9u3mkv66ZRmgadkQREOs9/qhUPJbBMxCqBmGgWHtvM479IUFgmLDo37E9Ddu4ju
 8b2LJDYbBZZiWEiaI0bHclTxG/1BO0j8p1pLTQgj3aQacxvutHo3gti/lUqQef+ZFy
 a7zbz0a2EaSvZrtn62iToVDd2tPX314TV/+qf4Bg=
Received: by mail-oo1-f47.google.com with SMTP id
 006d021491bc7-603ff8e90acso648197eaf.1; 
 Sat, 12 Apr 2025 11:41:03 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCU+F9FoySFn0NEOwQiw+hSXqF5sgwGS819ZjVZTFRV/z/na078otJ2DcDt+72Qx9XWQQ5PltOzdh8bgkdXDTA==@lists.bufferbloat.net,
 AJvYcCU9fS6NqGJfAOkl9MNxs5Wz9YQ+cnSZDNLRHxfb8WCGzzRqeZY4FXvfvlmJQURFaP3VLBQtwhmlERq6vkVKEUQ=@lists.bufferbloat.net,
 AJvYcCUMG2/pBEfibhGhp2c+u5TLcPxhMNh5cGgFFw/+v5/XWDIVpxGKQBqbFXKYXa2H6Z67dGH+7SkHvocKRDZXhHc=@lists.bufferbloat.net,
 AJvYcCUOFHGqW93SdXNrdMX2DhTM3a2WnfN39BFc7gmmfGksljePgrygLjTEbzAicufaR0a6xU18Xc5BQAfOYUWTZr4w@lists.bufferbloat.net,
 AJvYcCUkbCiSdWMi4fhGFPFUHWxB8Agh9oxLSXRWK6XJGLIpr42KpKQaK60kHhxHJyHy5bv2rV+n@lists.bufferbloat.net,
 AJvYcCUqfPw/Cv+52EFoNXtimvx3jzZzyyzelFsxcs1pCWPua+t5poZDb7O0uhUJsuDt7xGTp3MxZEk=@lists.bufferbloat.net,
 AJvYcCV3mp9tfBOxqHbySoUPhlCEy52LkvDQGVQ7nwMsb8clKp8xlAYyrIKJYf+NSwip0zQHpljh+UV1+g==@lists.bufferbloat.net,
 AJvYcCW/6l0vn9U8Z+wvvYOFzJd3csiaXtz8Rh7Q0T/uBAQOuYDKHLA3oT+1WaLXJ4QW+kEBrz9Ixoexa8u16aPSnw==@lists.bufferbloat.net,
 AJvYcCWIdtZIK3u5/Dl+u+22JUOLGjwLsqaciZL6JSKRopzlHvpjUvOQNmC24SG584cXZdgw2cqt+Q
 ==@lists.bufferbloat.net,
 AJvYcCWUPT6g0PFpiCL58GOGVxtxQou3K2qdMqNEHcFC/FK0jx3L+5eDWgKsbcmVUzqoNROVfaty6QVq/uOh@lists.bufferbloat.net,
 AJvYcCWi4VvQlb3wQbk3V9o1fpFOAHERLWnnr/xm7QDk9LODYEtJFdLyIFSnzI0lAeM1F14H/un0FslgMiI=@lists.bufferbloat.net,
 AJvYcCWoabPGHvUyNbIZklbZNzbN8oodbvEgt9xqBpEnxep34Q2bIsVbbcsbwayQ8oRcLhG3Tq8LdD2LB7c=@lists.bufferbloat.net,
 AJvYcCWyXuxpT6cWqtYcdT7apb87R87ATnQX/HVFs/PDi9q+oyL3TwCuCenpfLHTdETxWKtH+WYvzUQ=@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YxJ6+txiFlD0mg6rPVbb+AuNrQ8CshuaLTnl2idl4omQwNjB7J1
 ooo9BjrbdKASPl+aadzCFYUDW5oI1fHef8n84YynwEeP8DotlT+BQN/WL3aBOsuytSOCYiS7oq4
 DzDM2YyNNECjSqJWwndLg5jzyCCw=
X-Google-Smtp-Source: AGHT+IE/Svg7F1SlQWDnxnCX+/pzDBBucOZXb9c+9kjgrZdiHXKpBj+r0mSJDvr0HKy9vbRNutcXYVHTInAxtW22V30=
X-Received: by 2002:a05:6820:4b84:b0:603:f973:1b1 with SMTP id
 006d021491bc7-6046f3d2136mr4066889eaf.0.1744483262365; Sat, 12 Apr 2025
 11:41:02 -0700 (PDT)
MIME-Version: 1.0
References: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
 <014po62q-r99p-71np-52r1-n84n9np63nqr@ynat.uz> <87plhvlyoc.fsf@toke.dk>
 <976DC4FC-44CA-4C7E-90E0-DE39B57F01E1@comcast.com>
 <8DA2934A-43D1-4700-8F32-CA424C3FAE8D@comcast.com>
 <1743623511.52759201@apps.rackspace.com>
 <CAOp4FwR71iS-mijozYr7zzuAhajJeqjzw1bGo1eicNWST76erA@mail.gmail.com>
In-Reply-To: <CAOp4FwR71iS-mijozYr7zzuAhajJeqjzw1bGo1eicNWST76erA@mail.gmail.com>
Date: Sat, 12 Apr 2025 11:40:50 -0700
X-Gmail-Original-Message-ID: <CAEBrVk4OahPqQ1U7dKu_BhxM6g7=6-ikC2+LRV7r0WWRVQEdfA@mail.gmail.com>
X-Gm-Features: ATxdqUE8mYOuTNoQiYUqz0fh_l9t5B2aSi626sSgug0oGcVsAoQgaBZXv5-tnWs
Message-ID: <CAEBrVk4OahPqQ1U7dKu_BhxM6g7=6-ikC2+LRV7r0WWRVQEdfA@mail.gmail.com>
To: Loganaden Velvindron <loganaden@gmail.com>
Subject: Re: [Cake]
	=?utf-8?q?=5BMake-wifi-fast=5D__=5BBloat=5D_In_loving_memo?=
	=?utf-8?q?ry_of_Dave_T=C3=A4ht_=3C3?=
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
From: Robert McMahon via Cake <cake@lists.bufferbloat.net>
Reply-To: Robert McMahon <rjmcmahon@rjmcmahon.com>
Cc: "cerowrt-commits@lists.bufferbloat.net"
 <cerowrt-commits@lists.bufferbloat.net>,
 "bloat-ietf@lists.bufferbloat.net" <bloat-ietf@lists.bufferbloat.net>,
 Herbert Wolverson <hwolverson@libreqos.io>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 libreqos <libreqos@lists.bufferbloat.net>,
 "cerowrt-users@lists.bufferbloat.net" <cerowrt-users@lists.bufferbloat.net>,
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 "Frantisek \(Frank\) Borsik" <frank@libreqos.io>, "Livingood,
 Jason" <jason_livingood@comcast.com>,
 "codel@lists.bufferbloat.net" <codel@lists.bufferbloat.net>,
 "cerowrt-devel@lists.bufferbloat.net" <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 "codel-wireless@lists.bufferbloat.net" <codel-wireless@lists.bufferbloat.net>,
 =?UTF-8?Q?Network_Neutrality_is_back=21_Let=C2=B4s_make_the_technical_aspect?=
 =?UTF-8?Q?s_heard_this_time=21?= <nnagain@lists.bufferbloat.net>,
 Vint Cerf <vint@google.com>,
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 =?UTF-8?Q?Robert_Chac=C3=B3n?= <robert@libreqos.io>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBIZSBkaWQgbm90IGZpdCBpbiBhIHR5cGljYWwgY29ycG9yYXRlIGN1bHR1cmUgZXNwZWNpYWxs
eSBpbiBoaXMgbGF0ZXIgeWVhcnMuCgpJdCByZW1pbmRzIG1lIG9mIFRob21hcyBHcmF5IGFuZCBo
aXMgRWxlZ3kgYW5kIEVwaXRhcGguIEkgdGhpbmsgdGhlcmUKYXJlIG1hbnkgRGF2ZSdzIGFtb25n
c3QgdXMuIEhpcyBwYXNzaW5nIHNvIHN1ZGRlbmx5IHJlbWluZHMgbWUgb2YKZ3JhdGl0dWRlIHRo
YXQgd2UgZWFjaCBoYXZlIG1vcmUgdGltZSB0b2dldGhlciAtIHVudGlsIHdlIGRvbid0LAphbHdh
eXMgbGVhdmluZyB0b28gZWFybHkuIEl0J3MgYW4gaG9ub3IgdG8gYmUgcGFydCBvZiBzdWNoIGEg
Z3JvdXAuClRoYW5rcyBEYXZlLCBmb3IgdGhpcyBncm91cC4KClRIRSBFUElUQVBICkhlcmUgcmVz
dHMgaGlzIGhlYWQgdXBvbiB0aGUgbGFwIG9mIEVhcnRoCiAgICAgICBBIHlvdXRoIHRvIEZvcnR1
bmUgYW5kIHRvIEZhbWUgdW5rbm93bi4KRmFpciBTY2llbmNlIGZyb3duJ2Qgbm90IG9uIGhpcyBo
dW1ibGUgYmlydGgsCiAgICAgICBBbmQgTWVsYW5jaG9seSBtYXJrJ2QgaGltIGZvciBoZXIgb3du
LgoKTGFyZ2Ugd2FzIGhpcyBib3VudHksIGFuZCBoaXMgc291bCBzaW5jZXJlLAogICAgICAgSGVh
diduIGRpZCBhIHJlY29tcGVuc2UgYXMgbGFyZ2VseSBzZW5kOgpIZSBnYXZlIHRvIE1pcydyeSBh
bGwgaGUgaGFkLCBhIHRlYXIsCiAgICAgICBIZSBnYWluJ2QgZnJvbSBIZWF2J24gKCd0d2FzIGFs
bCBoZSB3aXNoJ2QpIGEgZnJpZW5kLgoKTm8gZmFydGhlciBzZWVrIGhpcyBtZXJpdHMgdG8gZGlz
Y2xvc2UsCiAgICAgICBPciBkcmF3IGhpcyBmcmFpbHRpZXMgZnJvbSB0aGVpciBkcmVhZCBhYm9k
ZSwKKFRoZXJlIHRoZXkgYWxpa2UgaW4gdHJlbWJsaW5nIGhvcGUgcmVwb3NlKQogICAgICAgVGhl
IGJvc29tIG9mIGhpcyBGYXRoZXIgYW5kIGhpcyBHb2QuCgpodHRwczovL3d3dy5wb2V0cnlmb3Vu
ZGF0aW9uLm9yZy9wb2Vtcy80NDI5OS9lbGVneS13cml0dGVuLWluLWEtY291bnRyeS1jaHVyY2h5
YXJkCgpCb2IKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
Q2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0
cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
