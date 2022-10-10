Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A475F9B9B
	for <lists+cake@lfdr.de>; Mon, 10 Oct 2022 11:08:30 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 381F63CB39;
	Mon, 10 Oct 2022 05:08:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1665392908;
	bh=o7Noc1KAxWMR31ayUH7x2KsLTWhPDqu9YV96tD7m7ss=;
	h=In-Reply-To:Date:References:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=cHN0LcMOMPQsOn7ZF/R72WLT/E9hiSTE8EDchKu7tCKG2gzUC1wxThdc7OPB7twEX
	 GQK8g5ZxGxOFKb9Ei5OUMS6ULrKglJqR1AQ6k8xiQ9kXH7n7VU0BuuXPqZsWoyncrf
	 cd26MrMPSrKjlqYu3GcuWnUseFtTDpezPbzceKgzoW8G3wBjc4F6hzmbmHSJym6ZcB
	 C3ztWpoMuHdhFIa1Jt6Y6qV3ANnuSKgnpGKpkHeqq25dGI6+xxRu+b9JdAZDMjxuBR
	 JNgFiX5wwYWpyWMw1rDpb2yZhFHFLnCQowv4x2A5bN6jr6wY3sKikw+xOkvUFEr3qr
	 8B0wPdMZO+MsQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 145A93B29E
 for <cake@lists.bufferbloat.net>; Mon, 10 Oct 2022 05:08:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1665392878;
 bh=qfjL9bUM9rnHtomXw0NhrVq0MCWu4RGDG9pohsc5M1E=;
 h=X-UI-Sender-Class:Subject:From:In-Reply-To:Date:Cc:References:To;
 b=GK5qDBAQL5T3khD+hlua5IQcO7sCOf2vqbX/l6r+xUb3R38JiHsf3fHc0DdWVxa0n
 EcpZJLzfbkFr/hVNI/NM+b6z02b8mo1eXDzkuSFHsl1qChfoCGaQgb2n+R/a2C0Xlj
 2d5mW52FcW6cWTpoInM7sR/r1Ueolm9uZ8qMf3yA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from smtpclient.apple ([134.76.241.253]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1N4hvR-1p8Fzt2SMp-011l6W; Mon, 10
 Oct 2022 11:07:58 +0200
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
In-Reply-To: <CAA93jw51WNjtmSB+YN1H7GuY45aP_zzueWRJG0KN4nUbTqFQjA@mail.gmail.com>
Date: Mon, 10 Oct 2022 11:07:57 +0200
Message-Id: <F255375C-BB64-44DC-ACD7-CCA34D61ED1C@gmx.de>
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
 <e91ad864-2fce-2d57-3d40-32b0e9416921@sewingwitch.com>
 <CADmwGqve4GQzj=MOqsc-J2bNURHqYZX+Y4ApEtOCxDZoACh=uA@mail.gmail.com>
 <CAA93jw51WNjtmSB+YN1H7GuY45aP_zzueWRJG0KN4nUbTqFQjA@mail.gmail.com>
To: =?utf-8?Q?Dave_T=C3=A4ht?= <dave.taht@gmail.com>
X-Mailer: Apple Mail (2.3696.120.41.1.1)
X-Provags-ID: V03:K1:euFmPiPi7KyLG+Uye76idSJ+l8RSjKRRDma30KE12Y/pyw19fid
 CFD/9eDHnI4f+KO2Gh4uB/VZfPLwXb/YQ908H8fH4+Nd1gXe8rNABOBri5fpvSlIol2Hj1z
 KDWGwGU6LmROty7geJVkDgpSIZiLPyJ8kD1cc/EX6qGwJesNh9GPPAMJN9S9xPfREjCHL9Y
 wfizYmdxNh3/uOkhavTmQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:DUNF+vSO/80=:oaZNUNp9WB6Kp7lsCwG4VQ
 ih1IEXIhm3ERbuwF3v/crE+3iPUOYDYHfu+fnDBfzxaz8kS3C07ZfQFVd9XAw2C5I9IFNocZq
 h2Ul3qTJ/u2Gmu5cGIDZw5j1CDFRK/Ue2usJ/Gw+jF3/m085x3CoWCv0AAhJy5rgXB9bPPX0l
 fBjKl1d4RRUJpEaA45Sbu0oCdz2nNjkkMxRFIuW2tgB7vVmXawK04q3zcFgxuZkAxJcDcPE8B
 vkotPlHu/AYBUpgb9C9HtgcVo32Z/5UcTvPazP/zavnopBuOqApBnkBm31L6fGtWpGxdw5ZvA
 r2L9sruACWjp5zKfw+/J3BOyEFd7uRoDZtMNF4jc93cdrRGGwH9HgIZnVZPsnYcL+6Fg6/cpw
 1HitRx1oPVFbIfKFZvfzu3b/xv8nWkUiYV185/qc7gn+J4Rs1Q1ZbBivJnxxYBdeRq0LAzycZ
 IYk5Wri3FnI5qeCgNb+Sn/a+RW7XFlwaFU3xnZhNwXTrX6tOex1U4+R0SAgq8wuvoagFlKtir
 5fAzeZOjVWXDT3brVqfd5VXnXt7qsdlHnMOq2b6f1b8Jx4EvjCOomYjNYtHrKvKoPAVkPoQMJ
 YboVoQqfaimKSRD+P4FGTwa4ULz4dt2UreHGaveFtgv2/pJ84a02rs8Lonv533jTnJb4gl50W
 dzz9F0HtuT/Uu4qxFWzV6iDO+++u2W5XOIBe5dWMwlBVRkzuPyvxDJwwuxr5qD8KpSRTjtZss
 w650nQp/fh0LjFiEOJA0hPkxalaFWGMND1XkbIM0ZhEulTG0ApOAosKOd7Ay12BOge5YrAbqi
 KnzL1UI+4Gp/i27gb3OHPE8eYcvRaPb82XxnEI/X8qfPYzp1hu6iJm6d2hgJPFzAnqtDImTWe
 GD4zhue574YH7MUNaIT9Qk5Y+zlAYnc0B8Y+y3WII29vLJlzoRsfF+Jt7RbDRDOcLeEmZhWEl
 /m7Jv8BHQ79aqDXwyrnEk3WKSqOXO13zU+p9ueqYRV9vkosSM11NTHGhoTfeISAxTFm4Kjyhp
 G8gPw+FQzBL1xca6/DbcJSIJEXec3UhYxI68r+aNESYuqB/SaHl9Jq2Y1o5vCHHrPXGu0UNyD
 lpy+gCa0dD/J6l5ocVhRJHXf6NN9X8cYZrCaP0X7m8TtZJ9ph5URCaoJWyrr4Py313xgpqRRk
 nOGj1SfTLT3Saxo3YF0M7K2F1BSQbaSYaaZ6P6aYq6a1HsvUbukpMPm9yNB7RLmsy1NfN/cwa
 rKD3ybueYP7LNTJMn99IQyHESI8cEv+z81PTHSLclgxggPyejjSCHuhY0CZy/ArfTG87fWgsp
 79rX2u8a1OPI3WWNRkCU1Q2DcUwS7uV8Xtse6pu6BFcaWQBnC5b1I6wZHAGr+HL4LQynWVeWK
 07q4ehW3/zVBzEa0Xu7ib6BOwylkdEQP7zTy/4sAf4TkSypEq/cNsccfUTelPpG6jQ/mf8eKh
 qbUMaQvUNMxJ18bLgGF8+jHAm261OK7zFKnmcqm7LxRbTNoD8goNabZpiIIo8wD6JsRkd99vC
 dYdGYQyRBcFgWH5eeLeP3wSTK06yuerkkMnIEiUnhiWze
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
From: Sebastian Moeller via Cake <cake@lists.bufferbloat.net>
Reply-To: Sebastian Moeller <moeller0@gmx.de>
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

V29oYWEsIHlvdXR1YmUncyBjb21tZW50IGludGVyZmFjZSBpcyBubyBqb3kgdG8gd29yayB3aXRo
Li4uCgpHbGFkIHlvdSBhcmUgZW5nYWdpbmcgdGhlcmUhCgpSZWdhcmRzCglTZWJhc3RpYW4KCgoK
PiBPbiBPY3QgOSwgMjAyMiwgYXQgMjM6NDgsIERhdmUgVGFodCB2aWEgQ2FrZSA8Y2FrZUBsaXN0
cy5idWZmZXJibG9hdC5uZXQ+IHdyb3RlOgo+IAo+IEkgc2F3IHlvdSB0aGVyZS4KPiAKPiBJIG1h
ZGUgYSBidW5jaCBvZiBjb21tZW50cyB0aGlzIG1vcm5pbmcuIEJ1dCB0aGV5IGFsbCBkaXNhcHBl
YXJlZCwKPiBwb3NzaWJseSBiZWNhdXNlIEkgcHJvdmlkZWQgbGlua3MgdG8gbW9yZSBpbmZvcm1h
dGlvbi4KPiAKPiAKPiBPbiBTdW4sIE9jdCA5LCAyMDIyIGF0IDEyOjU3IFBNIFRob21hcyBDcm9n
aGFuIHZpYSBDYWtlCj4gPGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0PiB3cm90ZToKPj4gCj4+
IFRoZXJlIHNlZW1zIHRvIGJlIHF1aXRlIGEgbG90IG9mIG1pc2luZm9ybWF0aW9uIGJlaW5nIHNw
cmVhZCBpbiB0aGUgY29tbWVudHMuIEl0IG1pZ2h0IGJlIGdvb2QgaWYgc29tZSBvZiB0aGUgcGVv
cGxlIHdobyBhcmUgcHJldHR5IGZhbWlsaWFyIHdpdGggdGhpcyB0ZWNoIGp1bXAgaW4gYW5kIGhl
bHAgdG8gbWluaW1pemUgdGhlIGRpc2luZm9ybWF0aW9uIHNwcmVhZC4KPj4gCj4+IE9uIFN1biwg
T2N0IDksIDIwMjIsIDEyOjM1IEtlbm5ldGggUG9ydGVyIHZpYSBDYWtlIDxjYWtlQGxpc3RzLmJ1
ZmZlcmJsb2F0Lm5ldD4gd3JvdGU6Cj4+PiAKPj4+IFRoZSB2aWRlbyBjb21tZW50cyBhcmUgaW50
ZXJlc3RpbmcuIFNvbWUgcHVzaGJhY2sgYWdhaW5zdCBibGluZGx5Cj4+PiB0dXJuaW5nIG9uIFNR
TS4KPj4+IAo+Pj4gRm9yIGV4YW1wbGUsIHVzaW5nIENha2UgbWlnaHQgbm90IGJlIGdvb2Qgb24g
YW4gb2xkZXIgcm91dGVyIHdpdGggYQo+Pj4gZ3V0bGVzcyBDUFUgYW5kIEZRLUNvRGVsIG1pZ2h0
IGJlIHRoZSBiZXR0ZXIgY2hvaWNlLgo+Pj4gCj4+PiBJdCBtaWdodCBiZSB1c2VmdWwgdG8gYWNj
dW11bGF0ZSBhbGwgdGhlIG9iamVjdGlvbnMgdGhlcmUgYW5kIGNyZWF0ZSBhCj4+PiB3aWtpIHBh
Z2UgcmVzcG9uZGluZyB0byB0aGVtIGluIGFuIG9yZ2FuaXplZCB3YXkuCj4+PiAKPj4+IAo+Pj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IENha2Ug
bWFpbGluZyBsaXN0Cj4+PiBDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo+Pj4gaHR0cHM6Ly9s
aXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo+PiAKPj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQ2FrZSBtYWlsaW5nIGxpc3QKPj4g
Q2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKPj4gaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5u
ZXQvbGlzdGluZm8vY2FrZQo+IAo+IAo+IAo+IC0tIAo+IFRoaXMgc29uZyBnb2VzIG91dCB0byBh
bGwgdGhlIGZvbGsgdGhhdCB0aG91Z2h0IFN0YWRpYSB3b3VsZCB3b3JrOgo+IGh0dHBzOi8vd3d3
LmxpbmtlZGluLmNvbS9wb3N0cy9kdGFodF90aGUtbXVzaHJvb20tc29uZy1hY3Rpdml0eS02OTgx
MzY2NjY1NjA3MzUyMzIwLUZYdHoKPiBEYXZlIFTDpGh0IENFTywgVGVrTGlicmUsIExMQwo+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQ2FrZSBtYWls
aW5nIGxpc3QKPiBDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo+IGh0dHBzOi8vbGlzdHMuYnVm
ZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxv
YXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
