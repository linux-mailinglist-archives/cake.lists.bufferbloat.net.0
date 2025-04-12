Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 13683A86C4A
	for <lists+cake@lfdr.de>; Sat, 12 Apr 2025 11:46:02 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 483A03CB39;
	Sat, 12 Apr 2025 05:46:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1744451160;
	bh=zHcEBuiFVv1CzabNiQdq1RfFGV0ztutl/ecB9LpsM5I=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=o69lDPHvGEiuJHs31skYfwdf9USMDoawf/M8ssZeUsJmarXmYtg7/hw0SHvd9AViQ
	 1HFME5yeOjewjhJoMaV34JqjeiRm+r1d+doLp0HPYgCJIUWzayjp8R2OeJHlrvbvtE
	 uUy8kmip2nGDRJN8v0Ec+dpPl2KKnXHxsHb7bh3we0mhgQgn5mJt/rgh/WpXQTqOju
	 znGBf8nEs7egIC9M28fPkQiOZ3WeU86K8KS7rp0zzNKzMkG7WwMTr8eiOBSpChoVvJ
	 h88KR8ln+zJPgde17YBTZgnWbmYhHido8Dm7Lja/fqRXepmNRF6+3iMqn35o7z3LbT
	 CrBbf9k/noGGQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com
 [IPv6:2607:f8b0:4864:20::52d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 5FAB53B2A4;
 Sat, 12 Apr 2025 05:45:58 -0400 (EDT)
Received: by mail-pg1-x52d.google.com with SMTP id
 41be03b00d2f7-af91fc1fa90so2608448a12.0; 
 Sat, 12 Apr 2025 02:45:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1744451157; x=1745055957; darn=lists.bufferbloat.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Ob9FXumKO7lcoQL39mfW/zVcms5CSR3BucDWfdn3bbI=;
 b=lTF5E2BBuvc3dwO6gDDY06Q/PuBUAJ/rlg/ZW8hGcKuqIkPo7SKe69kbiz0e35RJHO
 ZKf/2cN86vujGKmm+lXdDTwhoJeMcOrpbvNWg2cvpfWOA8mA8XLJJxcL5MhwyqZG5X6c
 zLsCYh+p4LiHu+ay+0VjketP8MeJJIwmwrgIkqbpixldeA47X+z2lMtDrbe8AhdgMpH6
 PmTJm1bWrAyUlJqBHKSYc6pOv0wYTxppRJkkJiqsEpEG2Ezs98QGbH4bePBs80oANi+J
 tPfDgTmFeDINrDDnymh7qfWvI/E8nRCVLLqBPYLnNQWmSUS+p5AMQAQ+XKRnRf6UFa6e
 anJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744451157; x=1745055957;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Ob9FXumKO7lcoQL39mfW/zVcms5CSR3BucDWfdn3bbI=;
 b=xMYX7aH27VO5ld2IZHiPL5q/Jb2/YEy6TiDAd4xfeGRAZ59wx/XG9wUtzFsQydgL4I
 QOhC3bWklPzh08VrJhNG40EQhllH3f14d//6kHgJjInQE2NyVAYTkhweEJByPZojQp/0
 mRdnnXRECOwsWCvMah5K+0i07Oi9wMFhNGmffaEQ3MwF7E5tnQYX9jo60Re2sob4/jRN
 3bq4S2eRO9NWCHhsKR9PWSwq8729u5BTMzo2SSEXMWZxg0po6qVxISut3AVdqkr5765e
 HluJ+zl/Cx/0FFIyVhr8uSWp/l3n1u2BNS0eEm/ULsJ9hzOKct2xH36WmWlYQkiZI1Mc
 oArA==
X-Forwarded-Encrypted: i=1;
 AJvYcCU8mw2mJpIfqHcrlSXVs7BHVVsEUIk0HN1WNVbOl7AcS7PzTYoMX+6BvoYuUxrd5Ur+POfoEipHZg==@lists.bufferbloat.net,
 AJvYcCUwYdPGYKCm1Tfa6dwIj2PU+Mo7GslC/y2rd3JCWx1Oc5xuMLszaqiscnR0LbBhX1IeFoR+c3Y=@lists.bufferbloat.net,
 AJvYcCV+VJc7CAi06SfaM+TsFFZsVY8LqENGPEQ0NApIfuMJaD5pvNngMP+NGV6A9FTKtQqfWdui@lists.bufferbloat.net,
 AJvYcCVC1sYpPS7DJEw6s+optZ4XaGZDmWGGanVlFwEwKg9CbmQpXfHR3rwFga4L8Q90gHLqHkIs6WLdyLVgk/Rs9g==@lists.bufferbloat.net,
 AJvYcCVN1nFrsBk01y6d4+HzpaOhkwTd2NMew5+y3DGEqy6cjxQ0O5kBHuPf1G5BqrSDc8CHHmFk53Gm14+pb46ZYw==@lists.bufferbloat.net,
 AJvYcCVYG7DdKRCRjfkVsMdji9jxhaBlMw3y0VaBb0bgf2qYaLKvT6RE3SLphuIvGGr75Vp5YPgbCMNjosaxgqKdxWE=@lists.bufferbloat.net,
 AJvYcCVgnrI+ARusj3Vklif6q+FHbj5WQwNESEjPzdjSW4mPyZIAnrBd032HtQQ6u2WZKGSxBTGkCQ==@lists.bufferbloat.net,
 AJvYcCW7WSgUOP9TFLnD9kcmdRJUWvRu46qFQb/E/hARg/KioM9ij4KMVkcfB6fQYmL5sI7BDVPohM0=@lists.bufferbloat.net,
 AJvYcCWcY1NRsT3WyiC6iiIG8ndiw6+dq2QwhACTclameAcEF+fFwJX+tl1sk90UmUIRkuxLuKiOb8aZAh7K@lists.bufferbloat.net,
 AJvYcCXBMbSjlmidwGIM7kO7aCrNlKHemYSmSnv28hPjldjR/Xi6wL0UPrPjv+4IjSz6jc7xLWltXGPCfU8=@lists.bufferbloat.net,
 AJvYcCXQnOf17PS9BoOmfyyNw8oC4ZUwuZ4cspNFe5I+zEK5ffRThItH+4ts8kZJCwowzysP6kpy3iHAFRPk2bbDbX92@lists.bufferbloat.net,
 AJvYcCXbCTEyJqbs3PuqVu3N+5UJo8pjJqQMTmsKEi4R8JYHxMMiNxfNF7I3AnBGimDeG/OgjOspWH/y8ReYSNUXpRk=@lists.bufferbloat.net,
 AJvYcCXkZ3B73Xemu+OvC98uhfBU2tvGzkEHPd8di1hXm0loiGVN2YDtd/UJ+RXfiUqPnrWnVLO+ls5LicA=@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YwbPMAj/XOmQ/ei6/XAfmibPIRn0IQFFEDrDISmjyNfjQu1BcWV
 YWnJIi/MjVrrzB5N7lK0+IDTsHXNoW775GGnuxjkqE1We9oKhlVPxdrVUxfA6IyViB3vbPGO0Pl
 tW5sf/NQ60TEuhBFRnnO3v/HqN8g=
X-Gm-Gg: ASbGnct23aZ+CrCzJLZ1ZiwiwYLzZCZ7F4bhBKWXUewm8qKLrJsx0q7Qi9k3mudH/0g
 gqmhswVOUv+mWnhZ31gy61YhrUDh9Eh7lqtyne+zC7PF8wDs2GjHJ1kw8YVEXunjURoWs+Ncoq8
 U0bMlWOxiHCgbbQjMWUVeDPOn3nNbguBQv1CcryWWcunTVFFg9ffr9hAM=
X-Google-Smtp-Source: AGHT+IGkwmW0vhTU8GJda1q3PrneEaL2mmDl4fb3TUnXbtrQkVrVrrF7bfqnOkDuOkftSVxTl+1G95ANH2gPSVnwobg=
X-Received: by 2002:a17:90b:5745:b0:2ea:712d:9a82 with SMTP id
 98e67ed59e1d1-3082367ee05mr8113985a91.29.1744451157260; Sat, 12 Apr 2025
 02:45:57 -0700 (PDT)
MIME-Version: 1.0
References: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
 <014po62q-r99p-71np-52r1-n84n9np63nqr@ynat.uz> <87plhvlyoc.fsf@toke.dk>
 <976DC4FC-44CA-4C7E-90E0-DE39B57F01E1@comcast.com>
 <8DA2934A-43D1-4700-8F32-CA424C3FAE8D@comcast.com>
 <1743623511.52759201@apps.rackspace.com>
In-Reply-To: <1743623511.52759201@apps.rackspace.com>
Date: Sat, 12 Apr 2025 13:45:45 +0400
X-Gm-Features: ATxdqUGS1yOMovID9b-x6yaVCSY7T2auv7_6qfNxDXzffsUQ9UM3VyAXPuAQj_8
Message-ID: <CAOp4FwR71iS-mijozYr7zzuAhajJeqjzw1bGo1eicNWST76erA@mail.gmail.com>
To: "David P. Reed" <dpreed@deepplum.com>
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
From: Loganaden Velvindron via Cake <cake@lists.bufferbloat.net>
Reply-To: Loganaden Velvindron <loganaden@gmail.com>
Cc: Vint Cerf <vint@google.com>, "cerowrt-users@lists.bufferbloat.net"
 <cerowrt-users@lists.bufferbloat.net>,
 Herbert Wolverson <hwolverson@libreqos.io>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 libreqos <libreqos@lists.bufferbloat.net>,
 "codel@lists.bufferbloat.net" <codel@lists.bufferbloat.net>,
 "cerowrt-commits@lists.bufferbloat.net"
 <cerowrt-commits@lists.bufferbloat.net>,
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>, "Livingood,
 Jason" <jason_livingood@comcast.com>,
 "codel-wireless@lists.bufferbloat.net" <codel-wireless@lists.bufferbloat.net>,
 "cerowrt-devel@lists.bufferbloat.net" <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 "bloat-ietf@lists.bufferbloat.net" <bloat-ietf@lists.bufferbloat.net>,
 =?UTF-8?Q?Network_Neutrality_is_back=21_Let=C2=B4s_make_the_technical_aspect?=
 =?UTF-8?Q?s_heard_this_time=21?= <nnagain@lists.bufferbloat.net>,
 "Frantisek \(Frank\) Borsik" <frank@libreqos.io>,
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 =?UTF-8?Q?Robert_Chac=C3=B3n?= <robert@libreqos.io>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

Pgo+IDIpIEkgd2FzIHRoaW5raW5nIGFib3V0IGhvdyB3ZSBjb3VsZCBnZXQgRGF2ZSByZWNvZ25p
emVkIGZvciBoaXMgY29udHJpYnV0aW9ucy4gTGlrZSBvdGhlciB1bnN1bmcgaGVyb2VzLCBEYXZl
IGRpZG4ndCB3b3JrIGZvciBCQk4gb3Igc29tZSBvdGhlciBtb25leWVkIGVudGl0eSB3aG8gd291
bGQgY29tbWlzc2lvbiBhIGJvb2sgb3IgYSBtZW1vcmlhbC4gKEJCTiBwYWlkIEthdGllIEhhZm5l
ciB0byB3cml0ZSB0aGUgdGV4dCB0aGF0IGxhdGVyIHR1cm5lZCBpbnRvIGhlciBib29rICJXaGVu
IFdpemFyZHMgU3RheSBVcCBMYXRlIiwgd2hpY2ggb2RkbHkgb25seSB0YWxrZWQgYWJvdXQgdGhl
IEFSUEFORVQvSW50ZXJuZXQgcGlvbmVlcnMgd2hvIHdvcmtlZCBmb3IgQkJOLCBvbWl0dGluZyBt
YW55IG9mIG15IEludGVybmV0IGNvbGxlYWd1ZXMuKSAgRGF2ZSB3YXNuJ3QgdGhlIGtpbmQgb2Yg
Z3V5IHRoYXQgZ2V0cyBBd2FyZHMgZnJvbSB0aGUgQ29tcHV0ZXIgSGlzdG9yeSBNdXNldW0gb3Ig
dGhlIEFDTSBvciBJRUVFLiBIZSB3YXNuJ3QgYmVsb3ZlZCBhdCBJRVRGIG9yIElTT0MgdGhhdCBJ
IGtub3cgb2YuIEhlJ3MgaW4gdGhlIGNhdGVnb3J5IG9mIGZvbGtzIGxpa2UgTm9lbCBDaGlhcHBh
IG9yIEJyYW0gQ29oZW4gb3IgUmljaGFyZCBTdGFsbG1hbiBvciBBYXJvbiBTd2FydHogLSBwZW9w
bGUgSSB0aGluayByZWFsbHkgY2hhbmdlZCB0aGUgd2F5IHdlIHRoaW5rIGFib3V0IGNvbXB1dGlu
ZyBhbmQgaW50ZXJuZXR3b3JraW5nLCBidXQgd2hvIHdvbid0IGJlIGluIHRoZSBvZmZpY2lhbCBo
aXN0b3JpZXMuCgpIZSBkaWQgbm90IGZpdCBpbiBhIHR5cGljYWwgY29ycG9yYXRlIGN1bHR1cmUg
ZXNwZWNpYWxseSBpbiBoaXMgbGF0ZXIKeWVhcnMuIEhlIGdvdCBhIGNlcnRhaW4gYW1vdW50IG9m
IHJlc3BlY3QgYXQgdGhlCklFVEYuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0
Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
