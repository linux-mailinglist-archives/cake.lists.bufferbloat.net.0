Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id C94DA89BFB6
	for <lists+cake@lfdr.de>; Mon,  8 Apr 2024 15:00:33 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B108B3CB41;
	Mon,  8 Apr 2024 09:00:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1712581231;
	bh=dsyCslZD4U96PzbB05pb59xq0Cm14ztHzwYqBI0QxSU=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=GdEoVEP+sgo5V/C+xvvv4T5fhgzIp/T8C21gGcnTVYQaz5wRCNcbnDNuLvhKu1hjz
	 f1FQxkbnuzpk/nP1qZD6997iMrGNcTCZa28VY2Dh4GBLTmlfLXRw1fTVvnLLs9rNDC
	 /CjBk0SKC9XNUKHQvhHiNRcwlwLP2N1DPABYk7K3M/BOBiNrFNpbaT04YnvA2c4fiJ
	 Qdpsto/s+yjKBrdkmuQPH8Y/reHdMttIDS4+Ly20PLlrY2HuLkP0ZoAZjsRJ2jvWb8
	 TE8kWkVqtD6HsEDSsy+qq/p0hFe2+vFxCIzDuuDzLiuxlLIUtMmWScLfNcnxhk+rcJ
	 5XV/MZfnaRJsQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id E17163B2A4
 for <cake@lists.bufferbloat.net>; Mon,  8 Apr 2024 09:00:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1712581229; bh=FkXLzyxqjZzUX3ydZJqpehjHFFdMSDLx+4h5DWHTIiY=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=wNVB4yArKpa2PUdlKiLdUKq+m0PD/rqSv51mIeW6FY3daUZxgK8MjoX3api0EigvJ
 d5z8okWEZnkeGojomYZA7aj65SsZa2dOSApaNxn8tFnlvRvlc/7hgZwq5qAZFZp7pL
 1iaq0RtpGeDFMHpwyKAhdlW4p+XbPu3Kc3DuG0drdQvu4h3ol/L5ja8gwcd0Hitm1K
 T2NtVewABkVOGdCDoZbjpCZVKXITP4DD8t2PTpdUAby5d4tjjTeE6dNCaRZQfI7Ick
 FgMlzoZJSH9a24rzBvXxDStS9jsl0JRPl77FgvewUknuJ5doB+aFCH1YU8LucGi4yv
 LXUTQZ5bAez+A==
To: Kuan-Wei Chiu <visitorckw@gmail.com>
In-Reply-To: <ZhPRfYt0BLh9UELN@visitorckw-System-Product-Name>
References: <20240406235532.613696-1-visitorckw@gmail.com>
 <87frvxgnmr.fsf@toke.dk> <ZhPRfYt0BLh9UELN@visitorckw-System-Product-Name>
Date: Mon, 08 Apr 2024 15:00:29 +0200
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87cyr0ggb6.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] [PATCH net-next] net: sched: cake: Optimize number of
 calls to cake_heapify()
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
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= via Cake
 <cake@lists.bufferbloat.net>
Reply-To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
Cc: jiri@resnulli.us, netdev@vger.kernel.org, jhs@mojatatu.com,
 jserv@ccns.ncku.edu.tw, cake@lists.bufferbloat.net, edumazet@google.com,
 kuba@kernel.org, xiyou.wangcong@gmail.com, pabeni@redhat.com,
 davem@davemloft.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

S3Vhbi1XZWkgQ2hpdSA8dmlzaXRvcmNrd0BnbWFpbC5jb20+IHdyaXRlczoKCj4gT24gU3VuLCBB
cHIgMDcsIDIwMjQgYXQgMDY6MTA6MDRQTSArMDIwMCwgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu
IHdyb3RlOgo+PiBLdWFuLVdlaSBDaGl1IDx2aXNpdG9yY2t3QGdtYWlsLmNvbT4gd3JpdGVzOgo+
PiAKPj4gPiBJbXByb3ZlIHRoZSBtYXgtaGVhcCBjb25zdHJ1Y3Rpb24gcHJvY2VzcyBieSByZWR1
Y2luZyB1bm5lY2Vzc2FyeQo+PiA+IGhlYXBpZnkgb3BlcmF0aW9ucy4gU3BlY2lmaWNhbGx5LCBh
ZGp1c3QgdGhlIHN0YXJ0aW5nIGNvbmRpdGlvbiBmcm9tCj4+ID4gbiAvIDIgdG8gbiAvIDIgLSAx
IGluIHRoZSBsb29wIHRoYXQgaXRlcmF0ZXMgb3ZlciBhbGwgbm9uLWxlYWYKPj4gPiBlbGVtZW50
cy4KPj4gCj4+IFBsZWFzZSBhZGQgYW4gZXhwbGFuYXRpb24gZm9yIHdoeSB0aGlzIGNoYW5nZSBp
cyBjb3JyZWN0LCBhbmQgd2h5IGl0IGlzCj4+IGJlbmVmaWNpYWwuICJJbXByb3ZlIiBhbmQgInVu
bmVjZXNzYXJ5IiBpcyB3YXkgdG9vIGltcGxpY2l0Lgo+PiAKPj4gcHctYm90OiBjcgo+Cj4gRm9y
IGNvcnJlY3RuZXNzOgo+IFRvIGJ1aWxkIGEgaGVhcCwgd2UgbmVlZCB0byBwZXJmb3JtIGhlYXBp
Znkgb3BlcmF0aW9ucyBvbiBhbGwgbm9uLWxlYWYKPiBub2Rlcywgc28gd2UgbmVlZCB0byBmaW5k
IHRoZSBpbmRleCBvZiB0aGUgZmlyc3Qgbm9uLWxlYWYgbm9kZS4gSW4gYQo+IGhlYXAsIHRoZSBp
bmRleCBvZiBub2RlIGksIHRoZSBsZWZ0IGNoaWxkJ3MgaW5kZXggaXMgMiAqIGkgKyAxLCBhbmQg
dGhlCj4gcmlnaHQgY2hpbGQncyBpbmRleCBpcyAyICogaSArIDIuIFRoZSBsZWZ0IGFuZCByaWdo
dCBjaGlsZHJlbiBvZiBub2RlCj4gQ0FLRV9NQVhfVElOUyAqIENBS0VfUVVFVUVTIC8gMiBhcmUg
YXQgaW5kZXhlcyBDQUtFX01BWF9USU5TICoKPiBDQUtFX1FVRVVFUyArIDEgYW5kIENBS0VfTUFY
X1RJTlMgKiBDQUtFX1FVRVVFUyArIDIsIHJlc3BlY3RpdmVseS4gQm90aAo+IGNoaWxkcmVuJ3Mg
aW5kZXhlcyBhcmUgYmV5b25kIHRoZSByYW5nZSBvZiB0aGUgaGVhcCwgaW5kaWNhdGluZyB0aGF0
Cj4gQ0FLRV9NQVhfVElOUyAqIENBS0VfUVVFVUVTIC8gMiBpcyBhIGxlYWYgbm9kZS4gVGhlIGxl
ZnQgY2hpbGQgb2Ygbm9kZQo+IENBS0VfTUFYX1RJTlMgKiBDQUtFX1FVRVVFUyAvIDIgLSAxIGlz
IGF0IGluZGV4IENBS0VfTUFYX1RJTlMgKgo+IENBS0VfUVVFVUVTIC0gMSwgYW5kIHRoZSByaWdo
dCBjaGlsZCBpcyBhdCBpbmRleCBDQUtFX01BWF9USU5TICoKPiBDQUtFX1FVRVVFUy4gVGhlcmVm
b3JlLCB3ZSBrbm93IHRoZSBsZWZ0IGNoaWxkIGV4aXN0cywgYnV0IHRoZSByaWdodAo+IGNoaWxk
IGRvZXMgbm90LiBTaW5jZSBpdCdzIG5vdCBhIGxlYWYgbm9kZSwgdGhlIGxvb3Agc2hvdWxkIHN0
YXJ0IGZyb20KPiBpdC4KPgo+IEZvciBiZW5lZml0Ogo+IFdlIGNhbiByZWR1Y2UgMiBmdW5jdGlv
biBjYWxscyAob25lIGZvciBjYWtlX2hlYXBpZnkoKSBhbmQgYW5vdGhlciBmb3IKPiBjYWtlX2hl
YXBfZ2V0X2JhY2tsb2coKSkgYW5kIGRlY3JlYXNlIDUgYnJhbmNoIGNvbmRpdGlvbiBldmFsdWF0
aW9ucwo+IChvbmUgZm9yIGl0ZXJhdGluZyB0aHJvdWdoIGFsbCBub24tbGVhZiBub2Rlcywgb25l
IGluc2lkZSB0aGUgd2hpbGUKPiBsb29wIG9mIGNha2VfaGVhcGlmeSgpLCBhbmQgdGhyZWUgbW9y
ZSBpbnNpZGUgdGhlIHdoaWxlIGxvb3Agd2l0aCBpZgo+IGNvbmRpdGlvbnMpLiBUaGUgb25seSBh
ZGRlZCBvcGVyYXRpb24gaXMgYW4gZXh0cmEgc3VidHJhY3Rpb24uCj4KPiBJZiB5b3UncmUgc2F0
aXNmaWVkIHdpdGggdGhlIGV4cGxhbmF0aW9uIGFib3ZlLCBJIGNhbiBhdHRlbXB0IHRvCj4gcmV3
cml0ZSB0aGUgY29tbWl0IG1lc3NhZ2UgYW5kIHNlbmQgdGhlIHYyIHBhdGNoLgoKWWVzLCBzb3Vu
ZHMgcmVhc29uYWJsZS4gRGlkIHlvdSBtZWFzdXJlIGFueSByZWFsLXdvcmxkIHBlcmZvcm1hbmNl
CmJlbmVmaXQsIG9yIGlzIHRoaXMgcHVyZWx5IGEgdGhlb3JldGljYWwgb3B0aW1pc2F0aW9uPyBF
aXRoZXIgd2F5LApwbGVhc2UgaW5kaWNhdGUgdGhpcyBpbiB0aGUgdXBkYXRlZCBwYXRjaCBkZXNj
cmlwdGlvbi4KCi1Ub2tlCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBz
Oi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
