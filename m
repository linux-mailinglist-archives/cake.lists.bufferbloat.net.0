Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 672F4C417AC
	for <lists+cake@lfdr.de>; Fri, 07 Nov 2025 20:53:04 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 29F3992FE8B;
	Fri, 07 Nov 2025 20:52:47 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=connectivitycap.com header.i=@connectivitycap.com header.a=rsa-sha256 header.s=google header.b=dvUZC2uM
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1762545167;
 b=JHhwnVRNKdQb8GPqiWgADYUTMvqOahWtaBt9O5EUOC6U+OglIyNmjJl9AkwPOi5hUG40E
 mg4tR4QFu4NqyDdgVK5aR4Hg3o6ytPtFDJ1ArsowDKNPSo0+n4qnYZURUCf/SwD8nfsxW8c
 2xoMwjT6RJXMBp1IkI6AQjbreV3DbM4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1762545167; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=OY3Q2ntPafVk4m+JvDE2/Q9QLxlgVKlnnKwe+38phVw=;
 b=wPTaZgbZ3y7eY9l0bFCYBKOSbi49mtv6S+914wwMPub0Zw2igZ374PI0noo7dnWeEJYPx
 Y3TE14NJyQ1DFKjwMhl/fBwYCSzeDF7CgIbYeF53gjVIRVa6QD6HEyFFcdg7WuISSxOFHxY
 MqrjHCiHud7sgHY0cnkBL232r99u4jU=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=connectivitycap.com;
 dkim=pass header.d=connectivitycap.com;
 arc=none;
 dmarc=none
Received: from mail-qk1-x72c.google.com (mail-qk1-x72c.google.com
 [IPv6:2607:f8b0:4864:20::72c])
	by mail.toke.dk (Postfix) with ESMTPS id E9DD992F7E9
	for <codel@lists.bufferbloat.net>; Fri, 07 Nov 2025 19:55:32 +0100 (CET)
Received: by mail-qk1-x72c.google.com with SMTP id
 af79cd13be357-8b22624bcdaso137297185a.3
        for <codel@lists.bufferbloat.net>;
 Fri, 07 Nov 2025 10:55:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=connectivitycap.com; s=google; t=1762541731; x=1763146531;
 darn=lists.bufferbloat.net;
        h=references:to:cc:in-reply-to:date:subject:mime-version:message-id
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=nm/hNjq5aeE0i1Sv0r/1GnJxctoDBJ5qbBRIr/hMEBU=;
        b=dvUZC2uMqlXMbolZ9Q1NY5QHkEmbsiMfbmvy1Zy8d/v/m45TZ7W77XhHLkjFQ/2fXR
         NWr64dEl5KJaa3yq2qQ/f4E70wDakvDlqJl8dNEjL1jilQeU5aCIDeVTkJ5hdhGmVqZL
         kj8TwEnHaMmgNPjNGPWx1FMgY7vW2NX7Ay7qj81eAoDeRvi/eMXWfn8pZwgvUrP+E/Gq
         iKA9PR29KntNvsTdAL8mr3/5FG7u2xohKgfDQOC5trst+aQYDEdcgEU+mLC9x/rMrV2k
         VnNKS1X5IcGZ17fUvStdEF16MMGjbJiVl1Ytbvifl2Ypd39mA2ty1Ocfc4g9fLHq+Ewc
         HqkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762541731; x=1763146531;
        h=references:to:cc:in-reply-to:date:subject:mime-version:message-id
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nm/hNjq5aeE0i1Sv0r/1GnJxctoDBJ5qbBRIr/hMEBU=;
        b=ux170GjUg7FYWK4pGCRS0GwJjJihopdIx+DtocpJVnKh2pkhESkWi1Vtzz30KlFMsh
         mmnXY3w6aSLwmoGiqbrdVo1z6SG+CECoILJJ4FCbFHHPqctHLdeDxg65zuzM/BzMndbi
         8t7svcC+gPefLWpLkYu5hlpjMz6jkqU7h0JPDPvuQLZozXGPdt1ArdZYfxHO8r9SQ5SU
         8BhFWARgsExEvYRnzaVUp8YMn2BRx5SoQLQJVXgGk5DXBI2Z9H2v88wty23Tq4aXW3QX
         pG5eqE9XDz+EJSM1J0N0n13jYvbYL4bOJX4H5hV1M8VfbH5NjVeAA48jcd7iwlFdqOio
         yH2g==
X-Forwarded-Encrypted: i=1;
 AJvYcCVd6GJe3v5h5e0+iIRv/trWjwPgUAPE7aKHVwssilOx+ROeMdHBtiah+mFFYnN07eenjsz28A==@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YzPKLW8iyzwQpTjKw3slUK9HZHnt7PqHeK3VHwPl52Ja9kO0rYz
	oipo1wTlpp+62tAxDLIy1h//n2fEoIbJYcbZjtjTyMAga/C1JVXVrrdKIMnDNqkVk6c=
X-Gm-Gg: ASbGncsggVikqrpYDHgppufMnItWFEI5/wEfk81L+2cajnU0spLQL5QdOmRY56acOf2
	ZQLYzxxkyOgef3Exy2ToAS5QtIQJDwjIZzNmHFeaY7OMugJZV198M58p3QrNAyBDxq7pD1PT0jp
	kbIh2jz+rXjfbFZz+QnadczJjM3U1KIqVA7Xxe/2zLKrDYD8uvj4I2i0v7hIWcaR++fjjJMVLhY
	RIGjJS9uNPIu2NyA3IPl45CzD+pExMmJe4e27wj9e5X40W0de70DyonW1VL+axXnuxnuFxG+ViZ
	VfDCilFUo7HYlJ8R5FIJ9Rjz03ZcylZrqvhR6ZDZGvGhZmEqN8gNDLDKp2fJbtl9bIepbrHpsAG
	lLBp6VZbn40VFMRwS0NmH20cvrf+UbgWTamwKR8nkfKaNjii2Na28JmYJwq1damCGe6csLCpWeb
	4yqtm3sH2cw6dUBtXNABG27yOx++5oCQKg/96TxQ==
X-Google-Smtp-Source: 
 AGHT+IGAHCxLvmaemhzZLT4YCj+NkVGDsiwrRaieivJC9HG0PpsvNwKRrULFbsbsKS/RL+ZtU4CdZg==
X-Received: by 2002:a05:620a:370e:b0:85c:bb2:ad9c with SMTP id
 af79cd13be357-8b257f4d80dmr42473685a.53.1762541730651;
        Fri, 07 Nov 2025 10:55:30 -0800 (PST)
Received: from smtpclient.apple ([2600:4040:9d0b:2f00:1025:128e:e3be:c98f])
        by smtp.gmail.com with ESMTPSA id
 af79cd13be357-8b2355c224esm468313485a.9.2025.11.07.10.55.29
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Nov 2025 10:55:29 -0800 (PST)
From: Jim Forster <jim@connectivitycap.com>
Message-Id: <3934C9BE-EED5-4DF7-9451-E438E0FEFE3E@connectivitycap.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.200.81.1.6\))
Date: Fri, 7 Nov 2025 13:55:18 -0500
In-Reply-To: 
 <CAHn=e4iyb6FDc+Jrwx+5jdhZ35qoM8Weoz=Ktvth-NdUKZ7VmA@mail.gmail.com>
Cc: Frantisek Borsik <frantisek.borsik@gmail.com>,
 Cake List <cake@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>,
 codel@lists.bufferbloat.net,
 libreqos <libreqos@lists.bufferbloat.net>,
 l4s-discuss@ietf.org,
 starlink@lists.bufferbloat.net
To: J Pan <Pan@uvic.ca>
References: <9390D9DA-3C77-429F-A41D-E0FECD52FF06@connectivitycap.com>
 <CAJUtOOjt+DajPifDNLNBOT_xwNWL_Wec5Gf_O91HMDdwpxtmeg@mail.gmail.com>
 <CAA_JP8XOeSOqbZJPH=1_oWMD055vOUxHipxJMs8sbsHLu5MHCA@mail.gmail.com>
 <CAJUtOOhiu8CVLARsiMKUkN4s87_VUr17su1Nr_4aManrwkCQAg@mail.gmail.com>
 <CAJUtOOhzJAymDiKsnRPho80B8GZ4wzd8W7FWccS=uhiQPd3KOg@mail.gmail.com>
 <2036296F-1567-4B66-BD8C-3AB49EBD5AA3@connectivitycap.com>
 <CAHn=e4iyb6FDc+Jrwx+5jdhZ35qoM8Weoz=Ktvth-NdUKZ7VmA@mail.gmail.com>
X-Mailer: Apple Mail (2.3864.200.81.1.6)
X-MailFrom: jim@connectivitycap.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation
Message-ID-Hash: XI5BH4ZA6YMMNCIFYH75YZXZCUXZKQ5G
X-Message-ID-Hash: XI5BH4ZA6YMMNCIFYH75YZXZCUXZKQ5G
X-Mailman-Approved-At: Fri, 07 Nov 2025 20:52:45 +0100
X-Content-Filtered-By: Mailman/MimeDel 3.3.10
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [Starlink] [LibreQoS] Re: Keynote: QoE/QoS - Bandwidth Is A Lie! at
 WISPAPALOOZA 2025 (October 16)
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/3934C9BE-EED5-4DF7-9451-E438E0FEFE3E@connectivitycap.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RXhhY3RseSBzby4NCg0KQ29uc3VtZXIgZXhwZWN0YXRpb25zIGFuZCBzZXJ2aWNlIHByb3ZpZGVy
IG1hcmtldGluZyBtYXkgYmUgaW5mbHVlbmNlZCBieSBtZW1vcmllcyBvZiBleHBlcmllbmNlIHdo
ZW4gdHJhbnNtaXNzaW9uIGRlbGF5IGRpZCBtYXR0ZXIuICBBdCBvbmUgdGltZSBJIHdhcyB2ZXJ5
IGhhcHB5IHdpdGggbXkgaG9tZSBJU0ROIGNvbm5lY3Rpb24sIGFuZCBldmVuIHNoYXJlZCBpdCB3
aXRoIG15IG5laWdoYm9yLiAgQXQgYWJvdXQgMTI4a2JzLCBpdCB3YXMgdGhyZWUgb3JkZXJzIG9m
IG1hZ25pdHVkZSBzbG93ZXIgdGhhbiBteSBob21lIGZpYmVyIGxpbmsuICBJ4oCZdmUgbm90IHJ1
biB0aGUgbnVtYmVycyBidXQgSeKAmW0gcHJldHR5IHN1cmUgdHJhbnNpbWlzc2lvbiBzcGVlZCBt
YXR0ZXJlZCBmb3IgdmlkZW8sIGV2ZW4gZm9yIGNydW1teSBxdWFsaXR5IHZpZGVvLCAgU28gdGhl
biB3aGVuIEkgbGVhcm5lZCBhIGJpdCBhYm91dCBkaWdpdGFsIHZpZGVvLCBhbmQgY2FibGXigJlz
IDY0IFFBTSAyN21icHMgY2hhbm5lbHMsIEkgZ290IGV4Y2l0ZWQgYW5kIHRob3VnaHQsIOKAnHdv
dywgdGhleSBjb3VsZCBkZWxpdmVyIDFtYnBzIHNlcnZpY2UhICBBbmQgd291bGRu4oCZdCBpdCBi
ZSBjb29sIHRvIGhhdmUgMU0gaG9tZSBvbmxpbmUgYXQgMTB4IHRoZSBzcGVlZCBvZiBJU0ROP+KA
nS4gIEl0IHdhcyBjb29sISAgQW5kIHR3byBtb3JlIG9yZGVycyBvZiBtYWduaXR1ZGUgbGF0ZXIs
IGhlcmUgd2UgYXJlLg0KDQogIOKAlCBKaW0NCg0KPiBPbiBOb3YgNywgMjAyNSwgYXQgMTI6NTLi
gK9QTSwgSiBQYW4gPFBhbkB1dmljLmNhPiB3cm90ZToNCj4gDQo+IGxhdGVuY3kgaXMgYmFzZWQg
b24gcm91bmQtdHJpcCB0aW1lLCBhbmQgb25lLXdheSBkZWxheSBpbmNsdWRlcw0KPiB0cmFuc21p
c3Npb24gZGVsYXksIHByb3BhZ2F0aW9uIGRlbGF5LCBxdWV1aW5nIGRlbGF5IGFuZCBwcm9jZXNz
aW5nDQo+IGRlbGF5LiBiYW5kd2lkdGggZG9lcyBhZmZlY3QgdHJhbnNtaXNzaW9uIGRlbGF5IChv
ciBzZXJpYWxpemF0aW9uDQo+IGRlbGF5KSwgcHJvcGFnYXRpb24gZGVsYXkgaXMgZGV0ZXJtaW5l
ZCBieSB0aGUgbGluayBsZW5ndGggYW5kIHRoZQ0KPiAidHJhdmVsIiBzcGVlZCBvZiB0aGUgc2ln
bmFsLCBxdWV1aW5nIGRlbGF5IGlzIHRoZSBoYXJkZXN0IHBhcnQgYW5kDQo+IGFmZmVjdGVkIGJ5
IHRoZSBidWZmZXIgYmxvYXQgYSBsb3QsIGFuZCBwcm9jZXNzaW5nIGRlbGF5IGlzIGFub3RoZXIN
Cj4gdmFyaWFibGUuIG9mIGNvdXJzZSwgdHJhbnNtaXNzaW9uIGRlbGF5IHRha2VzIGxlc3MgYW5k
IGxlc3MgcG9ydGlvbiBvZg0KPiB0aGUgZW5kLXRvLWVuZCBkZWxheSBub3cgZHVlIHRvIGhpZ2hl
ciBhbmQgaGlnaGVyICJzcGVlZCIgbGlua3MNCj4gDQo+IGNvbnN1bWVycyBtYXkgbWlzdGFrZW4g
dGhlIHNwZWVkIG9mIHRoZSBsaW5rICh0aGUgIndpZHRoIiBvZiB0aGVpcg0KPiBwaXBlKSBhcyBo
b3cgZmFzdCB0aGVpciBpbnRlcm5ldCBpcyAodGhlICJsZW5ndGgiIG9mIHRoZSBwaXBlKSwgZHVl
IHRvDQo+IHRoZSBwb29yIHRlcm1pbm9sb2d5IHdlIGhhdmUgYmVlbiB1c2luZyA7LSkNCg0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5n
IGxpc3QgLS0gY2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBjYWtlLWxlYXZlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo=
