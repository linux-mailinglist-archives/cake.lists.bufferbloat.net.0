Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D38695F8EFE
	for <lists+cake@lfdr.de>; Sun,  9 Oct 2022 23:48:21 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 1ED113CB39;
	Sun,  9 Oct 2022 17:48:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1665352100;
	bh=F/zpUt3wjHnaUNVoxEi0kvjbZ61tTpQMJqWKBnFwmU8=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=SUnZBxV36lmtbqN/95JAWN6PKrftEgp3DgVfy9E3l49lMdQ4u8aJDA/JT4iTymgh0
	 QL2jjaW21FVS+eEQKows3XvqAf0+EGn8JDMBrsXNk09DUgcJKgEx4+HzlMI/Jva9Na
	 LDeZWCvYG4CmGJrob02VbnIOqWvHDNGhB+h7le70+0hFuRg4jYGmesOTpmzmSSVGLJ
	 Zqaxj8rl6TTQgR+tTdrZijd/kcuEk3Q/gNTCR4XaUeQ5KFyvZhJKEGgEwnZGobeEdy
	 K95Cb6fINiwZkMk7+Yipv/N4XlzXcq2p3KOP/ypZvcOuzCgc6phbb8wleWU8tO1q1C
	 yX5JD7AI4AZcg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 383303B29E
 for <cake@lists.bufferbloat.net>; Sun,  9 Oct 2022 17:48:18 -0400 (EDT)
Received: by mail-wm1-x334.google.com with SMTP id
 j23-20020a05600c1c1700b003c3c60c13f5so1577018wms.0
 for <cake@lists.bufferbloat.net>; Sun, 09 Oct 2022 14:48:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=a1LNuQb9b8vxX4EPSOd1ilh1Ecn2PwkTXchltCZnJ+I=;
 b=kh8Nnrf7yb8Dr3kQue3MVAabG4LdRWJpgWsQgpPUNxAk3lSP36Q3KVgfFuS5nAez2J
 CBxVKah1H233KRvcRBUbv9bHpa9dwl4mJKe7DZOwuWQka062mpxWFqS8zgq8sUqAKJdJ
 UhL6fYpoZU1j1cIdvIeRw/1YkJ/CYhI5Th2Ya91SeTvLvNlanAJyvzKniJaHF86bzj3V
 EvR0kRUlfctkNteCVoNXKOQ9YN/rP8VMbdYhHxHRFEAHo/tRA+i9TzIRdOaRgr9gETAM
 sCgCFs2t8rcOqLU0XhqhR+/vbbBi3WB8frOmf+pRRn4ypVOfTLOdhPv6Jv3Mopc6OGbj
 3Glg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=a1LNuQb9b8vxX4EPSOd1ilh1Ecn2PwkTXchltCZnJ+I=;
 b=COmGfgyKx7xlviorauCzHgotI5RkGjoDUpIKmzgDopJ72kZong9VHv3IYX5HjhkRqY
 4U4L8arZ82LSgG+WTJ8ATdCt0ouwsq3pV/oCC2svxkyLp+mWAE4wKXJ/Sdv7hXV6eC9R
 9HHumcGB9x3YIl2iapImHZMlqpMaLL/XtObNd2AEDQJwlDdhmDfsrWVc9iSIhNJGux60
 Tk+VgoSxTpaoy2ZzAymBDfZX+oS5ultBUkzW19ySPGPVbzFEdEUdjkTL3EP2JkXkPi3p
 RpZjNLReoXpvpgU/R5zcngDs1wBiHFpHdIl1xiTPgHp2g2I8/3/ri5eGG5SDLp1vTGYV
 u45g==
X-Gm-Message-State: ACrzQf1L000Q/j4+wvKdBJ4+hwQklScv959wPxIVBPKaAd039Xns1waL
 VNzuyRS8JUoecw7tecMo7s9JhtjflNze4TMc55ICNs/I
X-Google-Smtp-Source: AMsMyM7B2oLQkQ1GfJuTyNgaN7ldSVKy67Wr8czI+FzTErE2RJF2Iw4WQvFXH5+RBP8Onf9C2eArS34ph3SoKLXsKdQ=
X-Received: by 2002:a05:600c:6025:b0:3b4:8c0c:f3c9 with SMTP id
 az37-20020a05600c602500b003b48c0cf3c9mr17457475wmb.206.1665352096744; Sun, 09
 Oct 2022 14:48:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
 <e91ad864-2fce-2d57-3d40-32b0e9416921@sewingwitch.com>
 <CADmwGqve4GQzj=MOqsc-J2bNURHqYZX+Y4ApEtOCxDZoACh=uA@mail.gmail.com>
In-Reply-To: <CADmwGqve4GQzj=MOqsc-J2bNURHqYZX+Y4ApEtOCxDZoACh=uA@mail.gmail.com>
Date: Sun, 9 Oct 2022 14:48:03 -0700
Message-ID: <CAA93jw51WNjtmSB+YN1H7GuY45aP_zzueWRJG0KN4nUbTqFQjA@mail.gmail.com>
To: Thomas Croghan <tcroghan@lostcreek.tech>
Subject: Re: [Cake] The most wonderful video ever about bufferbloat
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SSBzYXcgeW91IHRoZXJlLgoKSSBtYWRlIGEgYnVuY2ggb2YgY29tbWVudHMgdGhpcyBtb3JuaW5n
LiBCdXQgdGhleSBhbGwgZGlzYXBwZWFyZWQsCnBvc3NpYmx5IGJlY2F1c2UgSSBwcm92aWRlZCBs
aW5rcyB0byBtb3JlIGluZm9ybWF0aW9uLgoKCk9uIFN1biwgT2N0IDksIDIwMjIgYXQgMTI6NTcg
UE0gVGhvbWFzIENyb2doYW4gdmlhIENha2UKPGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0PiB3
cm90ZToKPgo+IFRoZXJlIHNlZW1zIHRvIGJlIHF1aXRlIGEgbG90IG9mIG1pc2luZm9ybWF0aW9u
IGJlaW5nIHNwcmVhZCBpbiB0aGUgY29tbWVudHMuIEl0IG1pZ2h0IGJlIGdvb2QgaWYgc29tZSBv
ZiB0aGUgcGVvcGxlIHdobyBhcmUgcHJldHR5IGZhbWlsaWFyIHdpdGggdGhpcyB0ZWNoIGp1bXAg
aW4gYW5kIGhlbHAgdG8gbWluaW1pemUgdGhlIGRpc2luZm9ybWF0aW9uIHNwcmVhZC4KPgo+IE9u
IFN1biwgT2N0IDksIDIwMjIsIDEyOjM1IEtlbm5ldGggUG9ydGVyIHZpYSBDYWtlIDxjYWtlQGxp
c3RzLmJ1ZmZlcmJsb2F0Lm5ldD4gd3JvdGU6Cj4+Cj4+IFRoZSB2aWRlbyBjb21tZW50cyBhcmUg
aW50ZXJlc3RpbmcuIFNvbWUgcHVzaGJhY2sgYWdhaW5zdCBibGluZGx5Cj4+IHR1cm5pbmcgb24g
U1FNLgo+Pgo+PiBGb3IgZXhhbXBsZSwgdXNpbmcgQ2FrZSBtaWdodCBub3QgYmUgZ29vZCBvbiBh
biBvbGRlciByb3V0ZXIgd2l0aCBhCj4+IGd1dGxlc3MgQ1BVIGFuZCBGUS1Db0RlbCBtaWdodCBi
ZSB0aGUgYmV0dGVyIGNob2ljZS4KPj4KPj4gSXQgbWlnaHQgYmUgdXNlZnVsIHRvIGFjY3VtdWxh
dGUgYWxsIHRoZSBvYmplY3Rpb25zIHRoZXJlIGFuZCBjcmVhdGUgYQo+PiB3aWtpIHBhZ2UgcmVz
cG9uZGluZyB0byB0aGVtIGluIGFuIG9yZ2FuaXplZCB3YXkuCj4+Cj4+Cj4+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IENha2UgbWFpbGluZyBsaXN0
Cj4+IENha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cj4+IGh0dHBzOi8vbGlzdHMuYnVmZmVyYmxv
YXQubmV0L2xpc3RpbmZvL2Nha2UKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gQ2FrZSBtYWlsaW5nIGxpc3QKPiBDYWtlQGxpc3RzLmJ1ZmZlcmJs
b2F0Lm5ldAo+IGh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UKCgoK
LS0gClRoaXMgc29uZyBnb2VzIG91dCB0byBhbGwgdGhlIGZvbGsgdGhhdCB0aG91Z2h0IFN0YWRp
YSB3b3VsZCB3b3JrOgpodHRwczovL3d3dy5saW5rZWRpbi5jb20vcG9zdHMvZHRhaHRfdGhlLW11
c2hyb29tLXNvbmctYWN0aXZpdHktNjk4MTM2NjY2NTYwNzM1MjMyMC1GWHR6CkRhdmUgVMOkaHQg
Q0VPLCBUZWtMaWJyZSwgTExDCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0
dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
