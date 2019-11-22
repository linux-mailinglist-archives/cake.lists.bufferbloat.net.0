Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F141072B6
	for <lists+cake@lfdr.de>; Fri, 22 Nov 2019 14:03:52 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 14C133CB3C;
	Fri, 22 Nov 2019 08:03:51 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1574427831;
	bh=OvNmRgcBbLVDmqPDOX64UvKbBvvouukKyCxtYDMKZwc=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=npDb66/L5+k+Gi+3ubHUrgARkiC4lcrmhRxsTWr6eWBcJEWqxi4lxaBqP5TCE8Yss
	 SFJhB04oobklBoFAhcmYNwq68s5S/iXDPGI0nKN4WZIDg0fYyV5IRLPzKnLNrN5iH4
	 FwoILPsgtJCbWytTq2bGBt8DipEK9BWfWqVxQbyp2O89wpGi9c5gcdNVdrE/0lg37+
	 r4lNOYyxYDDmv+qYkwaPsqcXXwB2+KTq/AlM3FDMP56IuWp1L8199XMCSbRoP/jC1g
	 BDgKofaeUnhIxo4ds8e+iU1tgVqXbigF1oY6h+sA7Z5VJZcuwEhbCxInJhqQLDPmp6
	 hyPl8ezd5h2uQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id DC6D33B29D
 for <cake@lists.bufferbloat.net>; Fri, 22 Nov 2019 07:59:34 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1574427574;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XC0beJ814laU1MCAIT4dtHcaLap8hTfZ8MMjhFtrOZw=;
 b=h9sIupCA4rSz0MfkKYgo7uIP0DF6RPGVUG/x6L27UPzQZDlX3oLuIOSQhcF3YoWO0mAooC
 9hiR3LTnn2KS05hvhadrHKsYz2zqZyyqQgRBkWKil54AgKNp1VMJ/5hNby5gaTY58mYoaz
 1Xxn4xgTmcZI1Dn+dghJEfBw2yQeyG4=
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com
 [209.85.167.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-409-5j942JSVOPqdj8x5DiFgpg-1; Fri, 22 Nov 2019 07:59:32 -0500
Received: by mail-lf1-f71.google.com with SMTP id x16so1757339lfe.19
 for <cake@lists.bufferbloat.net>; Fri, 22 Nov 2019 04:59:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=5Oz6O+Gl/LEmSPJQMQwaJzh1bmRAWUQt0SVKezSuR9Y=;
 b=uA4P3TZ6vE844uT47M9pp8dtXI6jdb9b5+1mFHds1njaqNk9W9LN2M+52+/71aWePp
 JC7nZSKZiQr8DcOQ+26DKTiPucsaax1YJn6Tz4P+0YarPt+GaFk1VmvycgkDqwzppHqE
 5AjuWGyBK58WWxtAOtCDxDWlGARBDLhpQD9BbYPav9DnqSDkKNlx19wBEoUHxDfAazTa
 kGLnJCA5b6NGp+8NP6fvbQDGea0L0h0J5yke+bidTc5INZK/1AVSE6qUmn+BC4Bsw6TF
 wF0YZIfVYB147Z2ChjMhnY/Mzmo8A1DZ9KS16zgg5xrrhvTIkYqXaMdWdX9TkLXfzYnL
 gTtA==
X-Gm-Message-State: APjAAAX7YqfD2Q14lkWQVy1+hC/+UCNu0+Qyho7q2pwpsJxf9NPREe29
 NKirxDHnxF0/KoRcGPdW+K5XkCDoCiRVIuE3pA3WXDbilN1tC+GbvDIx30nMIPHhRpWpTptcOz+
 c8njUDhVJ17NciQqzVCvElw==
X-Received: by 2002:a2e:760d:: with SMTP id r13mr11868416ljc.15.1574427570882; 
 Fri, 22 Nov 2019 04:59:30 -0800 (PST)
X-Google-Smtp-Source: APXvYqxbxhzIpJEEhRACMCImLJEX8eHsYv/w+MVw1e5xlKmewKr91fPUeWKeIAt5MFXW+rcQu6b3lQ==
X-Received: by 2002:a2e:760d:: with SMTP id r13mr11868402ljc.15.1574427570658; 
 Fri, 22 Nov 2019 04:59:30 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id g23sm3143593ljn.63.2019.11.22.04.59.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 04:59:29 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 1F0B51800B9; Fri, 22 Nov 2019 13:59:29 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <thoiland@redhat.com>
To: Justin Kilpatrick <justin@althea.net>, cake@lists.bufferbloat.net
In-Reply-To: <e7dcb597-97b8-49b5-bbd7-06e67fb80234@www.fastmail.com>
References: <em287ad38a-b2b3-4e82-9836-99fab879ad14@adam-pc>
 <CAA93jw4N_-5bui532Ad5QwGn=GH2CnqWYm=BRn75Fgo93R6aJw@mail.gmail.com>
 <em348223d0-543c-4b79-ba6b-93f2244326c1@adam-pc> <878so85e2d.fsf@toke.dk>
 <e7dcb597-97b8-49b5-bbd7-06e67fb80234@www.fastmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Fri, 22 Nov 2019 13:59:29 +0100
Message-ID: <87o8x43w3y.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: 5j942JSVOPqdj8x5DiFgpg-1
X-Mimecast-Spam-Score: 0
X-Mailman-Approved-At: Fri, 22 Nov 2019 08:03:49 -0500
Subject: Re: [Cake] Cake implementations
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

Ikp1c3RpbiBLaWxwYXRyaWNrIiA8anVzdGluQGFsdGhlYS5uZXQ+IHdyaXRlczoKCj4+ICBBbiBp
ZGVhIHdoaWNoIHdhcyBmbG9hdGVkIHdhcyB0byBleHBlcmltZW50IHdpdGggcm91dGluZyBJU1Ag
Y3VzdG9tZXIgCj4+ID50cmFmZmljIHRocm91Z2ggYSBMaW51eCBzZXJ2ZXIgdXNpbmcgY2FrZSB0
byBpbXByb3ZlIGN1c3RvbWVyIAo+PiAgZXhwZXJpZW5jZS4gIEJhc2ljYWxseSBsaWtlIFByZXNl
ZW0uICBNeSBjb2xsZWFndWUgaGFzIHRveWVkIHdpdGggaXQgYSAKPj4gPmJpdCBpbiBzbWFsbCB0
ZXN0IGNhc2VzIGFuZCB3YXMgaW1wcmVzc2VkIHdpdGggdGhlIG91dGNvbWVzLgo+Cj4gQWx0aGVh
Lm5ldCBydW5zIENha2UgYXQgZXZlcnkgaG9wLiBTaW5jZSB3ZSB1c2UgQmFiZWwgdG8gZHluYW1p
Y2FsbHkKPiBnZW5lcmF0ZSB0aGUgbmV0d29yayB0b3BvbG9neSB3ZSByZWx5IG9uIGl0J3MgbmVp
Z2hib3IgUlRUIGV4dGVuc2lvbgo+IGFuZCBiYW5kd2lkdGggY291bnRlcnMgdG8gcmVkdWNlIHRo
ZSBiYW5kd2lkdGggb3ZlciBhIGxpbmsgd2hlbiBhbgo+IGludGVybWVkaWF0ZSBkZXZpY2UgaGFz
IGRlY2lkZWQgdG8gYmVjb21lIGJsb2F0eS4KPgo+IEl0J3MgYmVlbiBhIHZlcnkgZWZmZWN0aXZl
IHN5c3RlbSB0aGF0IHJlc3VsdHMgaW4gaGFwcGllciBjdXN0b21lcnMKPiBldmVuIHdoZW4gd2Ug
aGF2ZSB3ZWFrIGxlYWtzIG9yIGNyYXp5IGZhaWxvdmVyIHNpdHVhdGlvbnMuIFVzdWFsbHkKPiB3
aXJlbGVzcyBsaW5rcyBoYXZlIHRvIGJlIG92ZXIgcHJvdmlzaW9uZWQgYnkgYSBmYWN0b3Igb2Yg
MmlzaCB0byBrZWVwCj4gbGF0ZW5jeSB1bmRlciBjb250cm9sIGluIHRoZSBmYWNlIG9mIGR5bmFt
aWMgaW50ZXJmZXJlbmNlIGFuZCBvdGhlcgo+IGV4dGVybmFsIGZhY3RvcnMuIEluc3RlYWQgQWx0
aGVhIG5ldHdvcmtzIGhhdmUgbW9yZSBzbWFsbGVyIGxpbmtzIHRoZW4KPiBiYWNrIGxpbmtzIGJl
dHdlZW4gZWFjaCBwb3AuCgpUaGF0J3MgaW50ZXJlc3RpbmcuIFNvIHlvdSdyZSBydW5uaW5nIENB
S0UgYXMgYSAoZHluYW1pY2FsbHkKY29uZmlndXJlZD8pIHNoYXBlciBvbiB0b3Agb2YgdGhlIHdp
cmVsZXNzIGxpbms/IFdoYXQgcmFkaW8gY2hpcHNldHMgYXJlCnlvdSB1c2luZyBhbmQgaGF2ZSB5
b3UgYmVuY2htYXJrZWQgdGhpcyBhZ2FpbnN0IGp1c3QgcmVseWluZyBvbiB0aGUKbWFjODAyMTEg
RlEgaW1wbGVtZW50YXRpb24gKGlmIHRoYXQgaXMgYXZhaWxhYmxlIHdpdGggeW91ciBjaGlwc2V0
KT8KCi1Ub2tlCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xp
c3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
