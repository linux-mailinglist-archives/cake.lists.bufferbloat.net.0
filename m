Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5017B668A82
	for <lists+cake@lfdr.de>; Fri, 13 Jan 2023 05:01:45 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 5C77A3CB58;
	Thu, 12 Jan 2023 23:01:39 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1673582499;
	bh=lcaqiq25tKXeGXmhfbcZpyaKAL8BFI30iBY+KoCGPD0=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=e5wFWDGls3SboF0UsK6hbbDklo9f6h8K33zxwCV0ZS+sLEpS7YEbO+Qv80m7CPIgX
	 3Gn5J6lPIxf4mPLCF/DpzkbkKdrqMnjAb+yYo1ld87wBWA4EXiYPsItInYL3MZ87tB
	 9cTrl/f7DVRsJcDkgjJPq8Jjh/uriJwI+HI/anPZPRwvrRbDgGnp6sJN5Joc4Zn4Fv
	 nTkguUGhGtwNvCCo/No+kxJjagsi/ImONYti4gpDpSOBoIG8Rdy8RWL9Q/5nWh+RGA
	 YsMHs+tuv6hIS7QRqHVQlBx/2cP2HV6JwK8C2bCc1bCWtlHOtzEASI/db5VXriYXi6
	 GrjrE+IRE9Vkg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id E75503B2A4;
 Thu, 12 Jan 2023 23:01:37 -0500 (EST)
Received: by mail-wm1-x336.google.com with SMTP id q8so2673094wmo.5;
 Thu, 12 Jan 2023 20:01:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=z44miAUotniqDLXhq/jyoeuJGBI8gCh9hlVwt/FkOr4=;
 b=aFVtqVIt+dHcxfc56npBi3DHtcI0OQpLW9LkM0/Sf1jef4a6+Pkks9tLhhMq4GTzb2
 W6WnqiNcetn/l0LWvWhsAGKrv4VyRYCjOZPRpRbZBtAO8C0q91xz8FkQlP+KYjXXwGhg
 0fbk9xmXEHcqyzjLFO8LZ9STAQWlLZhDRMR6DqXtr2eOyN+/JSSJf9GeUTvFSgwg67u5
 rm+iQJHVpdf9sFMe395LmDY0hWQ31ZwK346qvn8jMb/h2OhVTrQnDmLpWfhGNfqFkE3E
 PlP13hqIeLDAzQmepBgL8OB9PqDu3Ji4SwGPUI6iE1AY0djGNYYXTIIkFSaAV2TczFAt
 LVkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=z44miAUotniqDLXhq/jyoeuJGBI8gCh9hlVwt/FkOr4=;
 b=GN0OUNrEtT/YkUsLQwqf10wyUKSONbfixq3V/sBVuDhf6rAgXJlWSvmmbnMLEny2pQ
 n+FQHwdaqxR3JvgJQLg2TH2uB7TlgY67ZZSY/y96S/HKUE96NZmAbWuxsgBKWr+z+Xj7
 ir/vqQxZTRx7ypfcY24QQmvUyrTL/7Ql6YFKJ1ClEf6Ma3exN6nWGLdDGVkOo4k58Aym
 fmQXmEoTUbDBUROW2TdZaIuoXjjx4j6KMp9JMUAM469lN9Zk0yUmqTXkjV+6DYg39g1h
 U+cFwkvPhHOvzcrlBgYlkFnp0gY/aPoip4fE/LSF3A/Fs/bDWHyUKiKaDVwemJcdu9el
 QjRw==
X-Gm-Message-State: AFqh2koKB2OHpQlecmnlXx9H7rBi857JRaKk2gYS5xOc18YByqSSO8OI
 6kfGlXjmwJXC6mihOzlX4ZxMhSEy57M+QAMVG/h9n180
X-Google-Smtp-Source: AMrXdXtH5u+pHBfircx6vmHjXyN+FA+z05wl6OA24JkZbCDz9qjYJxzBfkYmC/1n4GssIY2Jf1a6LIpFJvt7y9NKqy0=
X-Received: by 2002:a05:600c:2309:b0:3d5:f77e:40b6 with SMTP id
 9-20020a05600c230900b003d5f77e40b6mr2684961wmo.206.1673582496844; Thu, 12 Jan
 2023 20:01:36 -0800 (PST)
MIME-Version: 1.0
References: <CAA93jw4sbPeZ42eTLQzPmg_-viBBtbdQogAMgMNndoEHjY5UNA@mail.gmail.com>
 <CH0PR02MB79809552F1D5CEDB832A8590D3FB9@CH0PR02MB7980.namprd02.prod.outlook.com>
 <fa20576f88b9a1880df67417bea48ba6@rjmcmahon.com>
 <89D796E75967416B9723211C183A8396@SRA6>
 <a082b2436e6ba7892d2de8e0dfcc5acd@rjmcmahon.com>
 <3696AEA5409D4303ABCBC439727A5E40@SRA6>
 <CAKJdXWBb0VxSSoGAQTe3BXFLXCHd6NSspRnXd1frK2f66SLiUw@mail.gmail.com>
 <CAA93jw6B_9-WE9EEFuac+FAH-2dcULk=_3i_HfhCSVSOxyM7Eg@mail.gmail.com>
 <CA+Ld8r8hR8KF35Yv7A3hb1QvC9v9ka2Nh2J=HEm0XhPfvAAcag@mail.gmail.com>
 <CAKJdXWC+aEy1b3vB-FFd+tnfT+Ni5O9bZ+p4kkhj-FzMPVGGcQ@mail.gmail.com>
 <CAA93jw4DcBhA8CevRQoMbzjO-3Jt+emr+xvnJ-hUGkT+n0KJzg@mail.gmail.com>
 <CH0PR02MB79800FF2E40CE037D6802D71D3FD9@CH0PR02MB7980.namprd02.prod.outlook.com>
 <CAKJdXWDOFbzsam2C_24e9DLkc18ed4uhV51hOKVjDipk1Uhc2g@mail.gmail.com>
In-Reply-To: <CAKJdXWDOFbzsam2C_24e9DLkc18ed4uhV51hOKVjDipk1Uhc2g@mail.gmail.com>
Date: Thu, 12 Jan 2023 20:01:24 -0800
Message-ID: <CAA93jw7PNtq46QJO=HoZdG2OmyfpRwCopji04YrDSTe08tzfAw@mail.gmail.com>
To: "Luis A. Cornejo" <luis.a.cornejo@gmail.com>
Subject: Re: [Cake] [Bloat] [Rpm] [Starlink] [LibreQoS] the grinch meets
 cloudflare'schristmas present
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
From: Dave Taht via Cake <cake@lists.bufferbloat.net>
Reply-To: Dave Taht <dave.taht@gmail.com>
Cc: Rpm <rpm@lists.bufferbloat.net>, "MORTON JR., AL" <acmorton@att.com>,
 IETF IPPM WG <ippm@ietf.org>, libreqos <libreqos@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>,
 Jay Moran <jay@tp.org>, "dickroy@alum.mit.edu" <dickroy@alum.mit.edu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gVGh1LCBKYW4gMTIsIDIwMjMgYXQgNzozMCBQTSBMdWlzIEEuIENvcm5lam8KPGx1aXMuYS5j
b3JuZWpvQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBXZWxsIFJlZGRpdCBoYXMgbWFueSBwb3N0cyB0
YWxraW5nIGFib3V0IG5vdGljZWFibGUgcGVyZm9ybWFuY2UgaW5jcmVhc2VzIGZvciBTdGFybGlu
ay4gSGVyZSBpcyBhIHByaW1ldGltZSBydW46Cj4KPiB3YXZlZm9ybToKPiBodHRwczovL3d3dy53
YXZlZm9ybS5jb20vdG9vbHMvYnVmZmVyYmxvYXQ/dGVzdC1pZD0zMzNmOTdjNy03Y2JkLTQwNmMt
OGQ5YS05Zjg1MGNiNWRlN2QKClRoYXQgaXMgdW5xdWVzdGlvbmFibHkgdGhlIGJlc3QgcmVzdWx0
IEkgaGF2ZSBldmVyIHNlZW4gZm9yIHN0YXJsaW5rLgpBcmUgeW91IGluIGEgcG9zaXRpb24gdG8g
dGFrZSBhIHBhY2tldCBjYXB0dXJlCm9mIHRoZSB3YXZlZm9ybSB0ZXN0LCBvciB0cnkgc29tZSBm
bGVudCBiYXNlZCB0ZXN0cz8KCj4gY2xvdWRmbGFyZSBhdHRhY2hlZAo+Cj4KPgo+IE9uIFRodSwg
SmFuIDEyLCAyMDIzIGF0IDExOjQzIEFNIE1PUlRPTiBKUi4sIEFMIDxhY21vcnRvbkBhdHQuY29t
PiB3cm90ZToKPj4KPj4gRGF2ZSBhbmQgTHVpcywKPj4KPj4gRG8geW91IGtub3cgaWYgYW55IG9m
IHRoZXNlIHRvb2xzIGFyZSB1c2luZyB+cmFuZG9tIHBheWxvYWRzLCB0byBkZWZlYXQgY29tcHJl
c3Npb24/Cj4+Cj4+IFVEUFNUIGhhcyBhIENMSSBvcHRpb246Cj4+IChtKSAgICAtWCAgICAgICAg
ICAgUmFuZG9taXplIGRhdGFncmFtIHBheWxvYWQgKGVsc2UgemVyb2VzKQo+Pgo+PiBXaGVuIEkg
dXNlZCB0aGlzIG9wdGlvbiB0ZXN0aW5nIHNoaXBib2FyZCBzYXRlbGxpdGUgYWNjZXNzLCBkb3du
bG9hZCB3YXMgYWJvdXQgMTE1a2Jwcy4KPj4KPj4gQWwKPj4KPj4gPiAtLS0tLU9yaWdpbmFsIE1l
c3NhZ2UtLS0tLQo+PiA+IEZyb206IERhdmUgVGFodCA8ZGF2ZS50YWh0QGdtYWlsLmNvbT4KPj4g
PiBTZW50OiBUaHVyc2RheSwgSmFudWFyeSAxMiwgMjAyMyAxMToxMiBBTQo+PiA+IFRvOiBMdWlz
IEEuIENvcm5lam8gPGx1aXMuYS5jb3JuZWpvQGdtYWlsLmNvbT4KPj4gPiBDYzogSmF5IE1vcmFu
IDxqYXlAdHAub3JnPjsgQ2FrZSBMaXN0IDxjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD47IElF
VEYgSVBQTQo+PiA+IFdHIDxpcHBtQGlldGYub3JnPjsgTU9SVE9OIEpSLiwgQUwgPGFjbW9ydG9u
QGF0dC5jb20+OyBScG0KPj4gPiA8cnBtQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD47IGJsb2F0IDxi
bG9hdEBsaXN0cy5idWZmZXJibG9hdC5uZXQ+Owo+PiA+IGRpY2tyb3lAYWx1bS5taXQuZWR1OyBs
aWJyZXFvcyA8bGlicmVxb3NAbGlzdHMuYnVmZmVyYmxvYXQubmV0Pgo+PiA+IFN1YmplY3Q6IFJl
OiBbQmxvYXRdIFtScG1dIFtTdGFybGlua10gW0xpYnJlUW9TXSB0aGUgZ3JpbmNoIG1lZXRzCj4+
ID4gY2xvdWRmbGFyZSdzY2hyaXN0bWFzIHByZXNlbnQKPj4gPgo+PiA+IEVpdGhlciBzdGFybGlu
ayBoYXMgdmFzdGx5IGltcHJvdmVkLCBvciB0aGUgdGVzdCBpcyB3YXkgb2ZmIGluIHRoaXMgY2Fz
ZS4KCgoKLS0gClRoaXMgc29uZyBnb2VzIG91dCB0byBhbGwgdGhlIGZvbGsgdGhhdCB0aG91Z2h0
IFN0YWRpYSB3b3VsZCB3b3JrOgpodHRwczovL3d3dy5saW5rZWRpbi5jb20vcG9zdHMvZHRhaHRf
dGhlLW11c2hyb29tLXNvbmctYWN0aXZpdHktNjk4MTM2NjY2NTYwNzM1MjMyMC1GWHR6CkRhdmUg
VMOkaHQgQ0VPLCBUZWtMaWJyZSwgTExDCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQu
bmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
