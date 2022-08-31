Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id DCBD05A8402
	for <lists+cake@lfdr.de>; Wed, 31 Aug 2022 19:09:02 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id C44483CB43;
	Wed, 31 Aug 2022 13:08:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1661965735;
	bh=PLwwEbH5mRLihpqVcqVKmL0oCT/Zsqg/nIelwVvpJhw=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=ZHzXN2nr/MiISgH721vhi3WanuD3ghdBJJTjm7Hz5ZlPggkkMS/x06/WgiiovXLlf
	 ZGLd4WHJFcsulMXMq2xRWJlBiPuZM9ayCa35iRiqoCh+Enm0p2IE5G5v9L+EG3HfNE
	 07R3Cq87XxwLJ9cv1K7ADlWVmKGMUQKwRDEiycy7GJJPd1VpFy14xve2KaX3CCanqc
	 26/45r+PJHOcFM/jGsTKaNF62dcUJ/R3A5DVWGMuIwb5As7pVTiD4UmaTXYpOgTxYL
	 Je8DdaG8EYYiB5ANwCijFZHd5UM5P7hAQ//EEO8f0HeMo22gSEzRH4YogNkmVU1APq
	 PKE2MbP53cDDA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com
 [IPv6:2607:f8b0:4864:20::b35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id EF3BD3B2A4
 for <cake@lists.bufferbloat.net>; Wed, 31 Aug 2022 13:08:54 -0400 (EDT)
Received: by mail-yb1-xb35.google.com with SMTP id 130so5086130ybw.8
 for <cake@lists.bufferbloat.net>; Wed, 31 Aug 2022 10:08:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc;
 bh=zftIQ411D/F+q8QhoQwsILwL9NsdWWrYVbDr2LyC+Ag=;
 b=OQ7sKCmxPyWKCDN5gUarxjhFYd1O4pOph4TbiOP/usrlDrDxDZ/Lkqk4RvcIg1yqb2
 87Y598LALYgpF3y5oor4fgJv6Z9xgMYkaodCZbSQY9fD0FrPd8FbIs7uvzDQLnlzrkjX
 c01YOnh8XQbuuZa5detMGe6+1oJGccmePC9jwWaCKjQHP+Y6aGPK+QzBtgWlRsO4LUh7
 oa415oD6dIyw8872X+zSQiwBvCloZS4btS1yk1pmrMva8uIY7LAHOc0U1hYvpgyZbXWA
 A/fQ0qpLvy2jqNlznSadD4JgCkYxA5wLwB3ufQeOLKHQTyy9iC15CP1bw3EXIVumgoA3
 ALBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc;
 bh=zftIQ411D/F+q8QhoQwsILwL9NsdWWrYVbDr2LyC+Ag=;
 b=mMPYz4gayNmtOsrj0OEAopPiiA7UHOnH6geRrtN9aeiqCDwTM9HUinvSw1j9zC/boN
 veItRNFor8+hqm2R5G/YVkRY4xQU+poFd3YJLJQ/pxj2TOky9S22nOMtK8aJugZu0zfQ
 thk1xg20B3fnO80oRxenc0Z7+ISLFsJovUSxPqcnTYtWUpXPU49ZWiz1fJ8171MOZi3J
 CXVEU4EIFkBR5az5KzwN2GjsHnrUSb69qyRjukrfiDZyznKIvBW3eWLPoL8KO1aLWUcL
 DxBVmYyLMSsp3Ij0aq9PXHXb9zJGajXL0QVv/52VUFYLnrspOFLKi1h1P2XEIyAwa6p5
 zAgw==
X-Gm-Message-State: ACgBeo2lB11sefVTx9t8DrY2U8l5aciSqcnHd+s97j3cKGPlufF/uXW5
 bxX4cVF4iQhZ41NaT2XjFW1uCbcjfdzG9gP6Jx+k4Q==
X-Google-Smtp-Source: AA6agR4bpTI9OyQMRsa/Sv5Ts/rONTlAjKcYdn/SaPSeJ8HtCSTWSqVEIb5kQseLtBokc7e3e9iApAvkakWAKjEc28o=
X-Received: by 2002:a25:4291:0:b0:696:56f3:5934 with SMTP id
 p139-20020a254291000000b0069656f35934mr16104965yba.55.1661965733674; Wed, 31
 Aug 2022 10:08:53 -0700 (PDT)
MIME-Version: 1.0
References: <20220831092103.442868-1-toke@toke.dk>
In-Reply-To: <20220831092103.442868-1-toke@toke.dk>
Date: Wed, 31 Aug 2022 10:08:42 -0700
Message-ID: <CANn89iKiJ91D7fELw9iKB4yCLaDj-WEv27wRS4PtLqM7oK8m=w@mail.gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@toke.dk>
Subject: Re: [Cake] [PATCH net] sch_cake: Return __NET_XMIT_STOLEN when
 consuming enqueued skb
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
From: Eric Dumazet via Cake <cake@lists.bufferbloat.net>
Reply-To: Eric Dumazet <edumazet@google.com>
Cc: Jiri Pirko <jiri@resnulli.us>, netdev <netdev@vger.kernel.org>,
 Jamal Hadi Salim <jhs@mojatatu.com>, cake@lists.bufferbloat.net,
 Jakub Kicinski <kuba@kernel.org>, Cong Wang <xiyou.wangcong@gmail.com>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gV2VkLCBBdWcgMzEsIDIwMjIgYXQgMjoyNSBBTSBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4g
PHRva2VAdG9rZS5kaz4gd3JvdGU6Cj4KPiBXaGVuIHRoZSBHU08gc3BsaXR0aW5nIGZlYXR1cmUg
b2Ygc2NoX2Nha2UgaXMgZW5hYmxlZCwgR1NPIHN1cGVycGFja2V0cwo+IHdpbGwgYmUgYnJva2Vu
IHVwIGFuZCB0aGUgcmVzdWx0aW5nIHNlZ21lbnRzIGVucXVldWVkIGluIHBsYWNlIG9mIHRoZQo+
IG9yaWdpbmFsIHNrYi4gSW4gdGhpcyBjYXNlLCBDQUtFIGNhbGxzIGNvbnN1bWVfc2tiKCkgb24g
dGhlIG9yaWdpbmFsIHNrYiwKPiBidXQgc3RpbGwgcmV0dXJucyBORVRfWE1JVF9TVUNDRVNTLiBU
aGlzIGNhbiBjb25mdXNlIHBhcmVudCBxZGlzY3MgaW50bwo+IGFzc3VtaW5nIHRoZSBvcmlnaW5h
bCBza2Igc3RpbGwgZXhpc3RzLCB3aGVuIGl0IHJlYWxseSBoYXMgYmVlbiBmcmVlZC4gRml4Cj4g
dGhpcyBieSBhZGRpbmcgdGhlIF9fTkVUX1hNSVRfU1RPTEVOIGZsYWcgdG8gdGhlIHJldHVybiB2
YWx1ZSBpbiB0aGlzIGNhc2UuCj4KCkkgdGhpbmsgeW91IGZvcmdvdCB0byBnaXZlIGNyZWRpdHMg
dG8gdGhlIHRlYW0gd2hvIGRpc2NvdmVyZWQgdGhpcyBpc3N1ZS4KClNvbWV0aGluZyBsaWtlIHRo
aXMKClJlcG9ydGVkLWJ5OiB6ZGktZGlzY2xvc3VyZXNAdHJlbmRtaWNyby5jb20gIyBaREktQ0FO
LTE4MjMxCgoKCj4gRml4ZXM6IDBjODUwMzQ0ZDM4OCAoInNjaF9jYWtlOiBDb25kaXRpb25hbGx5
IHNwbGl0IEdTTyBzZWdtZW50cyIpCj4gU2lnbmVkLW9mZi1ieTogVG9rZSBIw7hpbGFuZC1Kw7hy
Z2Vuc2VuIDx0b2tlQHRva2UuZGs+Cj4gLS0tCj4gIG5ldC9zY2hlZC9zY2hfY2FrZS5jIHwgNCAr
KystCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPgo+
IGRpZmYgLS1naXQgYS9uZXQvc2NoZWQvc2NoX2Nha2UuYyBiL25ldC9zY2hlZC9zY2hfY2FrZS5j
Cj4gaW5kZXggYTQzYTU4YTczZDA5Li5hMDQ5MjgwODJlNGEgMTAwNjQ0Cj4gLS0tIGEvbmV0L3Nj
aGVkL3NjaF9jYWtlLmMKPiArKysgYi9uZXQvc2NoZWQvc2NoX2Nha2UuYwo+IEBAIC0xNzEzLDYg
KzE3MTMsNyBAQCBzdGF0aWMgczMyIGNha2VfZW5xdWV1ZShzdHJ1Y3Qgc2tfYnVmZiAqc2tiLCBz
dHJ1Y3QgUWRpc2MgKnNjaCwKPiAgICAgICAgIH0KPiAgICAgICAgIGlkeC0tOwo+ICAgICAgICAg
ZmxvdyA9ICZiLT5mbG93c1tpZHhdOwo+ICsgICAgICAgcmV0ID0gTkVUX1hNSVRfU1VDQ0VTUzsK
Pgo+ICAgICAgICAgLyogZW5zdXJlIHNoYXBlciBzdGF0ZSBpc24ndCBzdGFsZSAqLwo+ICAgICAg
ICAgaWYgKCFiLT50aW5fYmFja2xvZykgewo+IEBAIC0xNzcxLDYgKzE3NzIsNyBAQCBzdGF0aWMg
czMyIGNha2VfZW5xdWV1ZShzdHJ1Y3Qgc2tfYnVmZiAqc2tiLCBzdHJ1Y3QgUWRpc2MgKnNjaCwK
Pgo+ICAgICAgICAgICAgICAgICBxZGlzY190cmVlX3JlZHVjZV9iYWNrbG9nKHNjaCwgMS1udW1z
ZWdzLCBsZW4tc2xlbik7Cj4gICAgICAgICAgICAgICAgIGNvbnN1bWVfc2tiKHNrYik7Cj4gKyAg
ICAgICAgICAgICAgIHJldCB8PSBfX05FVF9YTUlUX1NUT0xFTjsKPiAgICAgICAgIH0gZWxzZSB7
Cj4gICAgICAgICAgICAgICAgIC8qIG5vdCBzcGxpdHRpbmcgKi8KPiAgICAgICAgICAgICAgICAg
Y29iYWx0X3NldF9lbnF1ZXVlX3RpbWUoc2tiLCBub3cpOwo+IEBAIC0xOTA0LDcgKzE5MDYsNyBA
QCBzdGF0aWMgczMyIGNha2VfZW5xdWV1ZShzdHJ1Y3Qgc2tfYnVmZiAqc2tiLCBzdHJ1Y3QgUWRp
c2MgKnNjaCwKPiAgICAgICAgICAgICAgICAgfQo+ICAgICAgICAgICAgICAgICBiLT5kcm9wX292
ZXJsaW1pdCArPSBkcm9wcGVkOwo+ICAgICAgICAgfQo+IC0gICAgICAgcmV0dXJuIE5FVF9YTUlU
X1NVQ0NFU1M7Cj4gKyAgICAgICByZXR1cm4gcmV0Owo+ICB9Cj4KPiAgc3RhdGljIHN0cnVjdCBz
a19idWZmICpjYWtlX2RlcXVldWVfb25lKHN0cnVjdCBRZGlzYyAqc2NoKQo+IC0tCj4gMi4zNy4y
Cj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBt
YWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZm
ZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
