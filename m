Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1021B5C05
	for <lists+cake@lfdr.de>; Thu, 23 Apr 2020 14:59:04 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 24F513CB38;
	Thu, 23 Apr 2020 08:59:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1587646743;
	bh=B6x+uGEY0C+4CnzL0/KGQCjPVPAAJB+PVhSFms7OeME=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CJfXfhZGG1kXnLh1jqqmW6luqrwUXTdxE/tk/cD673cuiP8ePXuqWud6ePmSe8NDd
	 RnWXulk6hbwaplIr1P+gA7WUgpSlbm2vcc6rflTuscNhlO7PsQo0c9aSJVZ1gsRpBI
	 tN6W2nbxSusZbiNtpAAvZdSHyTOG0yWKjMixHxro4OaE4zFRzN6HJ5RE0quApBf2bo
	 mDFwrHdlVXB2dDF4Dw2icNoVobC8RCU9R8eFlNNjOMwzOPFepS9XKK9EHWPbXMyJWk
	 CX0pT2+99tXOdj4u6novRHXfxzzMek2sjQsTX7s/Lw2mHlP7V7+4aBnQGPFg1RM9cs
	 o64sRQPEouAig==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from ns.iliad.fr (ns.iliad.fr [212.27.33.1])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id E06BA3B2A4
 for <cake@lists.bufferbloat.net>; Thu, 23 Apr 2020 08:33:31 -0400 (EDT)
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id EA25C201B8;
 Thu, 23 Apr 2020 14:33:30 +0200 (CEST)
Received: from sakura (freebox.vlq16.iliad.fr [213.36.7.13])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ns.iliad.fr (Postfix) with ESMTPS id DCDC1201AA;
 Thu, 23 Apr 2020 14:33:30 +0200 (CEST)
Date: Thu, 23 Apr 2020 14:33:29 +0200
From: Maxime Bizon <mbizon@freebox.fr>
To: Toke =?iso-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>
Message-ID: <20200423123329.GG28541@sakura>
References: <d3f45591-7359-47a6-bd0b-f89f9b49c5a7@www.fastmail.com>
 <75FEC2D9-BFC8-4FA2-A972-D11A823C5528@gmail.com>
 <CAA93jw7kfSjuQP2j8uX5-+hs2PBLNZ6c0=tV=PjZE50fQ1oFLw@mail.gmail.com>
 <AAAE0AE6-BA8C-4236-A68D-C5A4CF7DFEDA@slashdirt.org>
 <603DFF79-D0C0-41BD-A2FB-E40B95A9CBB0@gmail.com>
 <CAA93jw5yvybv+aXH4NLd1r_8xSP2CPwzeh0q6wm1c26jLPBxag@mail.gmail.com>
 <CAH8sseTdDfswOYpYvaDFm_jsaMCpsT9Ebj2ZvkKwaqyyjZiWHA@mail.gmail.com>
 <CAA93jw54L6-mUU9oTgZVFHh5kY7HHGVQjZJZfUMw7Kuq+S9-8w@mail.gmail.com>
 <20200423092909.GC28541@sakura> <87o8ri76u2.fsf@toke.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87o8ri76u2.fsf@toke.dk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Thu Apr 23 14:33:30 2020 +0200 (CEST)
X-Mailman-Approved-At: Thu, 23 Apr 2020 08:59:01 -0400
Subject: Re: [Cake] Advantages to tightly tuning latency
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

Ck9uIFRodXJzZGF5IDIzIEFwciAyMDIwIMOgIDEzOjU3OjI1ICgrMDIwMCksIFRva2UgSMO4aWxh
bmQtSsO4cmdlbnNlbiB3cm90ZToKCkhlbGxvIFRva2UsCgo+IFRoYXQgaXMgYXdlc29tZSEgUGxl
YXNlIG1ha2Ugc3VyZSB5b3UgaW5jbHVkZSB0aGUgQVFMIHBhdGNoIGZvciBhdGgxMGssCj4gaXQg
cmVhbGx5IHdvcmtzIHdvbmRlcnMsIGFzIERhdmUgZGVtb25zdHJhdGVkOgo+IAo+IGh0dHBzOi8v
bGlzdHMuYnVmZmVyYmxvYXQubmV0L3BpcGVybWFpbC9tYWtlLXdpZmktZmFzdC8yMDIwLU1hcmNo
LzAwMjcyMS5odG1sCgpXYXMgaXQgaW4gNS40ID8gd2UgdHJ5IHRvIHN0aWNrIHRvIExUUyBrZXJu
ZWwKCj4gV2UncmUgd29ya2luZyBvbiB0aGF0IGluIGtlcm5lbCBsYW5kIC0gZXZlciBoZWFyZCBv
ZiBYRFA/IE9uIGJpZy1pcm9uCj4gc2VydmVycyB3ZSBoYXZlIG5vIGlzc3VlcyBwdXNoaW5nIDEw
cyBhbmQgMTAwcyBvZiBHYnBzIGluIHNvZnR3YXJlCj4gKHdlbGwsIHRoZSBsYXR0ZXIgb25seSBn
aXZlbiBlbm91Z2ggY29yZXMgdG8gdGhyb3cgYXQgdGhlIHByb2JsZW0gOikpLgo+IFRoZXJlJ3Mg
bm90IGEgbG90IG9mIGVtYmVkZGVkIHBsYXRmb3JtcyBzdXBwb3J0IGFzIG9mIHlldCwgYnV0IHdl
IGRvCj4gaGF2ZSBzb21lIHBlb3BsZSBpbiB0aGUgQVJNIHdvcmxkIHdvcmtpbmcgb24gdGhhdC4K
PiAKPiBQZXJzb25hbGx5LCBJIGRvIHNlZSBlbWJlZGRlZCBwbGF0Zm9ybXMgYXMgYW4gaW1wb3J0
YW50IChmdXR1cmUpIHVzZQo+IGNhc2UgZm9yIFhEUCwgdGhvdWdoLCBpbiBwYXJ0aWN1bGFyIGZv
ciBDUEVzLiBTbyBJIHdvdWxkIGJlIHZlcnkKPiBpbnRlcmVzdGVkIGluIGhlYXJpbmcgZGV0YWls
cyBhYm91dCB5b3VyIHBhcnRpY3VsYXIgcGxhdGZvcm0sIGFuZCB5b3VyCj4gRFBESyBzb2x1dGlv
biwgc28gd2UgY2FuIHRoaW5rIGFib3V0IHdoYXQgaXQgd2lsbCB0YWtlIHRvIGFjaGlldmUgdGhl
Cj4gc2FtZSB3aXRoIFhEUC4gSWYgeW91J3JlIGludGVyZXN0ZWQgaW4gdGhpcywgcGxlYXNlIGZl
ZWwgZnJlZSB0byByZWFjaAo+IG91dCA6KQoKTGFzdCB0aW1lIEkgbG9va2VkIGF0IFhEUCwgaXRz
IHByaW1hcnkgdXNlIGNhc2VzIHdlcmUgImVhcmx5IGRyb3AiIC8KImFudGkgZGRvcyIuCgpJbiBv
dXIgY2FzZSwgZWFjaCBwYWNrZXQgaGFzIHRvIGJlIHJvdXRlZCtOQVQsIHdlIGhhdmUgVkxBTiB0
YWdzLCB3ZQphbHNvIGhhdmUgTUFQLUUgZm9yIElQdjQgdHJhZmZpYy4gU28gaW4gdGhlIHZhbmls
bGEgZm9yd2FkaW5nIHBhdGgsCnRoaXMgZG9lcyBtdWx0aXBsZSByb3VuZHMgb2YgUlgvVFggYmVj
YXVzZSBvZiB0dW5uZWxpbmcuCgpUQkgsIHRoZSBoYXJkIHdvcmsgaW4gb3VyIG9wdGltaXplZCBm
b3J3YXJkaW5nIGNvZGUgaXMgZmlndXJpbmcgb3V0CndoYXQgbW9kaWZpY2F0aW9ucyB0byBhcHBs
eSB0byBlYWNoIHBhY2tldHMuIE5vdyB3aGV0aGVyIG1vZGlmaWNhdGlvbnMKYW5kIHR4IHdvdWxk
IGJlIGRvbmUgYnkgWERQIG9yIGJ5IGhhbmQgd3JpdHRlbiBDIGNvZGUgaW4gdGhlIGtlcm5lbCBp
cwptb3JlIG9mIGEgZGV0YWlsLCBldmVuIHRob3VnaCB1c2luZyBYRFAgaXMgbXVjaCBjbGVhbmVy
IG9mIGNvdXJzZS4KCldoYXQgdGhlIGtlcm5lbCBhbHdheXMgbGFja2VkIGlzIHdoYXQgRGF2ZU0g
Y2FsbGVkIG9uY2UgdGhlICJncmFuZAp1bmlmaWVkIGZsb3cgY2FjaGUiLCB0aGUgYWJpbGl0eSB0
byBkbyBhIHNpbmdsZSBsb29rdXAgYW5kIGJlIGFibGUgdG8KZGVjaWRlIHdoYXQgdG8gZG8gd2l0
aCB0aGUgcGFja2V0LiBJbnN0ZWFkIHdlIGhhdmUgdGhlIGJyaWRnZQpmb3J3YXJkaW5nIHRhYmxl
LCB0aGUgaXAgcm91dGluZyB0YWJsZSAodXNlZCB0byBiZSBhIGNhY2hlKSwgdGhlCm5ldGZpbHRl
ciBjb25udHJhY2sgbG9va3VwLCBhbmQgbXVsdGlwbGUgcm91bmQgb2YgdGhvc2UgaWYgeW91IGRv
CnR1bm5lbGluZy4KCk9uY2UgeW91IGhhdmUgdGhpcyAiZmxvdyB0YWJsZSIgaW5mcmFzdHJ1Y3R1
cmUsIGl0IGJlY29tZXMgZWFzeSB0bwpvZmZsb2FkIGZvcndhcmRpbmcsIGVpdGhlciB0byByZWFs
IGhhcmR3YXJlLCBvciBzb2Z0d2FyZSAoZm9yIGV4YW1wbGUsCmRlZGljYXRlIGEgQ1BVIGNvcmUg
aW4gcG9sbGluZyBtb2RlKQoKVGhlIGdvb2QgbmV3cyBpcyB0aGF0IGl0IHNlZW1zIG5mdGFibGVz
IGlzIGJ1aWxkaW5nIHRoaXM6CgpodHRwczovL3dpa2kubmZ0YWJsZXMub3JnL3dpa2ktbmZ0YWJs
ZXMvaW5kZXgucGhwL0Zsb3d0YWJsZQoKSSdtIHN0aWxsIHVzaW5nIGlwdGFibGVzLCBidXQgaXQg
c2VlbXMgdGhhdCB0aGUgZmVhdHVyZXMgSSB3YXMgbWlzc2luZwpsaWtlIFRDUE1TUyBhcmUgbm93
IGluIG5mdCBhbHNvLCBzbyBJIHdpbGwgaGF2ZSBhIGxvb2suCgoKPiBTZXR0aW5nIGFzaWRlIHRo
ZSBmYWN0IHRoYXQgdGhvc2Ugc2luZ2xlLXN0cmVhbSB0ZXN0cyBvdWdodCB0byBkaWUgYQo+IGhv
cnJpYmxlIGRlYXRoLCBJIGRvIHdvbmRlciBpZiBpdCB3b3VsZCBiZSBmZWFzaWJsZSB0byBkbyBh
IGJpdCBvZgo+ICdvcHRpbWlzaW5nIGZvciB0aGUgdGVzdCc/IFdpdGggWERQIHdlIGRvIGhhdmUg
dGhlIGFiaWxpdHkgdG8gc3RlZXIKPiBwYWNrZXRzIGJldHdlZW4gQ1BVcyBiYXNlZCBvbiBhcmJp
dHJhcnkgY3JpdGVyaWEsIGFuZCB3aGlsZSBpdCBpcyBub3QgYXMKPiBlZmZpY2llbnQgYXMgaGFy
ZHdhcmUtYmFzZWQgUlNTIGl0IG1heSBiZSBlbm91Z2ggdG8gYWNoaWV2ZSBsaW5lIHJhdGUKPiBm
b3IgYSBzaW5nbGUgVENQIGZsb3c/CgpZb3UgY2Fubm90IGRvIHN0ZWVyaW5nIGZvciBhIHNpbmds
ZSBUQ1AgZmxvdyBhdCB0aG9zZSByYXRlcyBiZWNhdXNlCnlvdSB3aWxsIGdldCBvdXQtb2Ytb3Jk
ZXIgcGFja2V0cyBhbmQga2lsbCBUQ1AgcGVyZm9ybWFuY2UuCgpJIGRvIG5vdCBjb25zaWRlciB0
aG9zZSBzaW5nbGUtc3RyZWFtIHRlc3RzIHRvIGJlIHVucmVhbGlzdGljLCB0aGlzIGlzCmV4YWN0
bHkgd2hhdCBoYXBwZW4gaWYgc2F5IHlvdSBidXkgYSBnYW1lIG9uIFN0ZWFtIGFuZCBkb3dubG9h
ZCBpdC4KCi0tIApNYXhpbWUKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0
cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
