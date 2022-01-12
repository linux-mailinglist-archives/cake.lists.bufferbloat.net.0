Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF3048CED7
	for <lists+cake@lfdr.de>; Thu, 13 Jan 2022 00:08:27 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 29DDD3CB46;
	Wed, 12 Jan 2022 18:08:26 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1642028906;
	bh=GthwRIoHCcMmjeICwHL5X6jUBtbpf9YxssbeFLp2fjg=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LTsWyt9O+S/ewOWn3S1I8P9tMXwfxbnhV+qD7YQ5yZFYWsg7NhyBLcEPmQl8MFdvI
	 FUtwPt3Vl1AZouCeYGgEWHOY4Uu7TC63zkf+3d9LyFiq8voSHP5BPlcE/YI6qC2VsD
	 Iwe9ZoRiFHAF3BslMZ4MzwW9G8lIUxdy6U/xPozhcU32yCNpBOzpjht8IX8p3WfecH
	 At6zirkWaoC/nHapSeGq09LdBL3UDBbT2thju66KeZEvnrW5Jqpz9HXw3Gd0gJWuVq
	 aev81oEJl6lcBKs7ZxfvOEK7gYJYzcT8rErSq8H5F3Y85JI+/G5U/TN2CmbvWksvkv
	 TrbXlWr1SXFzg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com
 [IPv6:2a00:1450:4864:20::535])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id EE7B73B2A4;
 Wed, 12 Jan 2022 18:08:24 -0500 (EST)
Received: by mail-ed1-x535.google.com with SMTP id a18so16019601edj.7;
 Wed, 12 Jan 2022 15:08:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=Ia1LBtYIkvV6LfkjKDX6XbWJQVE7iphhNrt/tP6Mj0Q=;
 b=UrYYMcZDmFO2CAN7rHubsXKuzkSN9BUWqU7O5UGOqjfNP2quXV3nBraqO5T7zID+BE
 DWYu7J8/BYWouIfSC79pN2LOYkn5P4jcs1r2jRdqqDv6NYfHPG42P2HoHY6G6MH2adr/
 F5MQMuzMKBXZ5oOY2HcmfFV7xDmtjHScQs87+b/I4G11FEelD7VhpbGQQolfnN4hMw7i
 pcp+23D0y6fcao2meFFi9QuKeXpP2yaUL5OeRkg0bcAg1uLuRylXW4pftuXld51s0rzL
 C8qGeqW028Z8wIUG45hKFPnSdz31QV8DXAiCHRImlIlRCUG2V4hEi2+fuUdRW5qjNWYK
 48fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=Ia1LBtYIkvV6LfkjKDX6XbWJQVE7iphhNrt/tP6Mj0Q=;
 b=kDO27yfbal4mKlCQG9WMj2oHhr/foP5tf4HuK7h7xmo6Ret/TToPMsKDU8jmS+C2c2
 cWhEAwOiKkX73vQhR4tIv5S4X+zNPkSh3B+2nQcFiCz4MGG1foBkrtuw71x9kWFdWriy
 8LgQ9rt0ixpXlkEoYBr4h/H8Xee9KHesfsodMqq7Ipuav/8LEW+OoGwGgEVvPBJloItr
 KzQJZUNKpkezEVbwirAr6bxzms+wIB/GaN1otjmrmobgkbyqHncNZrwc/W8IPjTdFQdO
 qomeH9u4Ic/ykH+Fmlww7al0jvi4YfIzzrpDN4WiTO9VbP2TxjPFAQWPnhiS3NnDvh6Y
 lRLA==
X-Gm-Message-State: AOAM532SKwf4YPmHb/VfXR5e2lG5CP71Tdvj/aQGbJ5QN21/sKEKboqu
 z+0oj6jtXr06de4G462bVHWGszFI7PS4kZuWnqrgczeU
X-Google-Smtp-Source: ABdhPJz2W/9dZ59nSzBi/GPxZgcaDmb5UFzFtdabXuWndr8rQ5XhOliV4d8uglzxlYT6wwhhoG21Nq+dW2zmPwG26co=
X-Received: by 2002:a17:907:9085:: with SMTP id
 ge5mr1534699ejb.128.1642028903572; 
 Wed, 12 Jan 2022 15:08:23 -0800 (PST)
MIME-Version: 1.0
References: <20220107202249.3812322-1-kevin@bracey.fi>
In-Reply-To: <20220107202249.3812322-1-kevin@bracey.fi>
From: Dave Taht <dave.taht@gmail.com>
Date: Wed, 12 Jan 2022 15:08:10 -0800
Message-ID: <CAA93jw4QRva5z5TPeUEXRBF1zjdL0E_pXjeM+tAvPh+71=0vyQ@mail.gmail.com>
To: cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>, 
 Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] Fwd: [PATCH net-next] net_sched: restore "mpu xxx" handling
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

dGhpcyBoYXMgYmVlbiBicm9rZW4gdGhpcyBsb25nPz8KCi0tLS0tLS0tLS0gRm9yd2FyZGVkIG1l
c3NhZ2UgLS0tLS0tLS0tCkZyb206IEtldmluIEJyYWNleSA8a2V2aW5AYnJhY2V5LmZpPgpEYXRl
OiBGcmksIEphbiA3LCAyMDIyIGF0IDQ6NTYgUE0KU3ViamVjdDogW1BBVENIIG5ldC1uZXh0XSBu
ZXRfc2NoZWQ6IHJlc3RvcmUgIm1wdSB4eHgiIGhhbmRsaW5nClRvOiA8bmV0ZGV2QHZnZXIua2Vy
bmVsLm9yZz4KQ2M6IEtldmluIEJyYWNleSA8a2V2aW5AYnJhY2V5LmZpPiwgRXJpYyBEdW1hemV0
CjxlZHVtYXpldEBnb29nbGUuY29tPiwgSmlyaSBQaXJrbyA8amlyaUByZXNudWxsaS51cz4sIFZp
bWFsa3VtYXIKPGoudmltYWxAZ21haWwuY29tPgoKCmNvbW1pdCA1NmI3NjViNzllOWEgKCJodGI6
IGltcHJvdmVkIGFjY3VyYWN5IGF0IGhpZ2ggcmF0ZXMiKSBicm9rZQoib3ZlcmhlYWQgWCIsICJs
aW5rbGF5ZXIgYXRtIiBhbmQgIm1wdSBYIiBhdHRyaWJ1dGVzLgoKIm92ZXJoZWFkIFgiIGFuZCAi
bGlua2xheWVyIGF0bSIgaGF2ZSBhbHJlYWR5IGJlZW4gZml4ZWQuIFRoaXMgcmVzdG9yZXMKdGhl
ICJtcHUgWCIgaGFuZGxpbmcsIGFzIG1pZ2h0IGJlIHVzZWQgYnkgRE9DU0lTIG9yIEV0aGVybmV0
IHNoYXBpbmc6CgogICAgdGMgY2xhc3MgYWRkIC4uLiBodGIgcmF0ZSBYIG92ZXJoZWFkIDQgbXB1
IDY0CgpUaGUgY29kZSBiZWluZyBmaXhlZCBpcyB1c2VkIGJ5IGh0YiwgdGJmIGFuZCBhY3RfcG9s
aWNlLiBDYWtlIGhhcyBpdHMKb3duIG1wdSBoYW5kbGluZy4gcWRpc2NfY2FsY3VsYXRlX3BrdF9s
ZW4gc3RpbGwgdXNlcyB0aGUgc2l6ZSB0YWJsZQpjb250YWluaW5nIHZhbHVlcyBhZGp1c3RlZCBm
b3IgbXB1IGJ5IHVzZXIgc3BhY2UuCgpGaXhlczogNTZiNzY1Yjc5ZTlhICgiaHRiOiBpbXByb3Zl
ZCBhY2N1cmFjeSBhdCBoaWdoIHJhdGVzIikKU2lnbmVkLW9mZi1ieTogS2V2aW4gQnJhY2V5IDxr
ZXZpbkBicmFjZXkuZmk+CkNjOiBFcmljIER1bWF6ZXQgPGVkdW1hemV0QGdvb2dsZS5jb20+CkNj
OiBKaXJpIFBpcmtvIDxqaXJpQHJlc251bGxpLnVzPgpDYzogVmltYWxrdW1hciA8ai52aW1hbEBn
bWFpbC5jb20+Ci0tLQogaW5jbHVkZS9uZXQvc2NoX2dlbmVyaWMuaCB8IDUgKysrKysKIG5ldC9z
Y2hlZC9zY2hfZ2VuZXJpYy5jICAgfCAxICsKIDIgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25z
KCspCgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9uZXQvc2NoX2dlbmVyaWMuaCBiL2luY2x1ZGUvbmV0
L3NjaF9nZW5lcmljLmgKaW5kZXggYzcwZTZkMmIyZmRkLi5mZGRjYTBhYTczZWYgMTAwNjQ0Ci0t
LSBhL2luY2x1ZGUvbmV0L3NjaF9nZW5lcmljLmgKKysrIGIvaW5jbHVkZS9uZXQvc2NoX2dlbmVy
aWMuaApAQCAtMTI0NCw2ICsxMjQ0LDcgQEAgc3RydWN0IHBzY2hlZF9yYXRlY2ZnIHsKICAgICAg
ICB1NjQgICAgIHJhdGVfYnl0ZXNfcHM7IC8qIGJ5dGVzIHBlciBzZWNvbmQgKi8KICAgICAgICB1
MzIgICAgIG11bHQ7CiAgICAgICAgdTE2ICAgICBvdmVyaGVhZDsKKyAgICAgICB1MTYgICAgIG1w
dTsKICAgICAgICB1OCAgICAgIGxpbmtsYXllcjsKICAgICAgICB1OCAgICAgIHNoaWZ0OwogfTsK
QEAgLTEyNTMsNiArMTI1NCw5IEBAIHN0YXRpYyBpbmxpbmUgdTY0IHBzY2hlZF9sMnRfbnMoY29u
c3Qgc3RydWN0CnBzY2hlZF9yYXRlY2ZnICpyLAogewogICAgICAgIGxlbiArPSByLT5vdmVyaGVh
ZDsKCisgICAgICAgaWYgKGxlbiA8IHItPm1wdSkKKyAgICAgICAgICAgICAgIGxlbiA9IHItPm1w
dTsKKwogICAgICAgIGlmICh1bmxpa2VseShyLT5saW5rbGF5ZXIgPT0gVENfTElOS0xBWUVSX0FU
TSkpCiAgICAgICAgICAgICAgICByZXR1cm4gKCh1NjQpKERJVl9ST1VORF9VUChsZW4sNDgpKjUz
KSAqIHItPm11bHQpID4+IHItPnNoaWZ0OwoKQEAgLTEyNzUsNiArMTI3OSw3IEBAIHN0YXRpYyBp
bmxpbmUgdm9pZCBwc2NoZWRfcmF0ZWNmZ19nZXRyYXRlKHN0cnVjdAp0Y19yYXRlc3BlYyAqcmVz
LAogICAgICAgIHJlcy0+cmF0ZSA9IG1pbl90KHU2NCwgci0+cmF0ZV9ieXRlc19wcywgfjBVKTsK
CiAgICAgICAgcmVzLT5vdmVyaGVhZCA9IHItPm92ZXJoZWFkOworICAgICAgIHJlcy0+bXB1ID0g
ci0+bXB1OwogICAgICAgIHJlcy0+bGlua2xheWVyID0gKHItPmxpbmtsYXllciAmIFRDX0xJTktM
QVlFUl9NQVNLKTsKIH0KCmRpZmYgLS1naXQgYS9uZXQvc2NoZWQvc2NoX2dlbmVyaWMuYyBiL25l
dC9zY2hlZC9zY2hfZ2VuZXJpYy5jCmluZGV4IDNiMGY2MjA5NTgwMy4uNWQzOTFmZTMxMzdkIDEw
MDY0NAotLS0gYS9uZXQvc2NoZWQvc2NoX2dlbmVyaWMuYworKysgYi9uZXQvc2NoZWQvc2NoX2dl
bmVyaWMuYwpAQCAtMTQ3NCw2ICsxNDc0LDcgQEAgdm9pZCBwc2NoZWRfcmF0ZWNmZ19wcmVjb21w
dXRlKHN0cnVjdCBwc2NoZWRfcmF0ZWNmZyAqciwKIHsKICAgICAgICBtZW1zZXQociwgMCwgc2l6
ZW9mKCpyKSk7CiAgICAgICAgci0+b3ZlcmhlYWQgPSBjb25mLT5vdmVyaGVhZDsKKyAgICAgICBy
LT5tcHUgPSBjb25mLT5tcHU7CiAgICAgICAgci0+cmF0ZV9ieXRlc19wcyA9IG1heF90KHU2NCwg
Y29uZi0+cmF0ZSwgcmF0ZTY0KTsKICAgICAgICByLT5saW5rbGF5ZXIgPSAoY29uZi0+bGlua2xh
eWVyICYgVENfTElOS0xBWUVSX01BU0spOwogICAgICAgIHBzY2hlZF9yYXRlY2ZnX3ByZWNvbXB1
dGVfXyhyLT5yYXRlX2J5dGVzX3BzLCAmci0+bXVsdCwgJnItPnNoaWZ0KTsKLS0KMi4yNS4xCgoK
Ci0tIApJIHRyaWVkIHRvIGJ1aWxkIGEgYmV0dGVyIGZ1dHVyZSwgYSBmZXcgdGltZXM6Cmh0dHBz
Oi8vd2F5Zm9yd2FyZC5hcmNoaXZlLm9yZy8/c2l0ZT1odHRwcyUzQSUyRiUyRnd3dy5pY2VpLm9y
ZwoKRGF2ZSBUw6RodCBDRU8sIFRla0xpYnJlLCBMTEMKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZm
ZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
