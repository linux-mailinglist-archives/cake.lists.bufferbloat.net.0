Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 67DEC1B4A06
	for <lists+cake@lfdr.de>; Wed, 22 Apr 2020 18:15:44 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 439453CB38;
	Wed, 22 Apr 2020 12:15:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1587572143;
	bh=0t9iSNJRRLfdFnYCXVbahvPtomz56Lfc+f/3DmJxwB4=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Qfpmt8ZpkxkaJ/3UpIpkBLoPdpnsJe8Zy56dN9b7+0BANchaFxQaOrpUnQdp8tUo5
	 YXTu40ie1I04MzUM5NxVOEi+/UJBeD1RahMWMDyoJOtgKsyIIVK1npsw+/i3Vq77r4
	 AFSLxsiuZiYYO67HDE4jFxdSfQwAHfKb/EVkI8HCCT0o0RkO9ZHe+Oaeqy2YLbrNCK
	 uq5Js4ltaM74OBj9f3kKQgRyzIHas8kX3GCE6g0x+cc/g58S1CWv14QYILqxfmZcea
	 U50BziPDhWbM+niRPWTrHSxlF/L7n0mqA4X69LrfTM3k828wK2JvQjiydIrRkKIRTE
	 RsFfs4PjMeUUg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x143.google.com (mail-il1-x143.google.com
 [IPv6:2607:f8b0:4864:20::143])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 561333B29E
 for <cake@lists.bufferbloat.net>; Wed, 22 Apr 2020 12:15:42 -0400 (EDT)
Received: by mail-il1-x143.google.com with SMTP id e8so2465437ilm.7
 for <cake@lists.bufferbloat.net>; Wed, 22 Apr 2020 09:15:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=H0NyYBIYVKc6eQcVKymmlI/Rn5DIPL6JhMBtgYtORqo=;
 b=mIq7DBEsgtriQ+0BpYXAfEs7UY37B+lxl0Lej2g5iisyLMT0/HAM2iAMb44GIN9wDL
 Xp+7hGhzGDJjYpAp8KUurHJL/oQwH5PnBDZZ1OvlewvxiBrbDGbofZ8feF7/hCZ8LeZe
 xnJiFPL2fvVW+c4w87xSg/knrHWVfKawxj8D+byC1yHOPczpqG09HYoDTrcOEBK9j8mn
 nIqfWIm+XAun+Ey2v0+xWmtd/ehVdGhHwmzCpl5lUDV5Y2dEhL1oculeW2NMAqw9wmw4
 GnLHQgGrDCOcaKtaLuR0oHEvxdTOPDItvskVRsl7SetT5BFDgyfgyd6BfLirS9fo/u6M
 Dc5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=H0NyYBIYVKc6eQcVKymmlI/Rn5DIPL6JhMBtgYtORqo=;
 b=kA/1yJ4Fe3JJRMli6x0pplPE9oVXLG6XVhp7cpiufXBC7IDr3yn4KmZkNc1fi4nlSW
 7MdOSVEovDbuZzAf8NypIUUnhP90zTFQ5wolw8bgdJADMnFRenxofB4+sDnpgnciQO2E
 WoWxQJzkoPouDLHEKvEvfwUby4mYjB/DyZpXERFD8P4HABHTif23ytzDrabVGc11xTun
 aG9JujjdTgh0yvf5MScFfWqqdfr4CdDq/786Z/c6bXU3LRYnDtRmj0f9/fIWwsLiTlyi
 XNsBtD8xxzyTFgZyOTMpMt1wHfDgzlxyMXvy499oJZIYIrrK6SIxqF0xpx6kGoAg8tDr
 7TtA==
X-Gm-Message-State: AGi0PuaVmjj5DV8MC/up5F5ggY2txKBY+ZvY1ZrghRpIIgP3j7Avo/a7
 eHzIj/tfJEPIM6W90CeB1zwEZ1LQPpZWjWzhuWY=
X-Google-Smtp-Source: APiQypLYXNlx7WrFbwAN7qvqNd/VigEtLu90Q70Vniq+zhZNwnvpni+A2hPvbd2yssbxYD8flXbd7xeGUKLrrdBtm5U=
X-Received: by 2002:a92:dc0d:: with SMTP id t13mr2519358iln.287.1587572141654; 
 Wed, 22 Apr 2020 09:15:41 -0700 (PDT)
MIME-Version: 1.0
References: <F7A06AF9-12CF-42BB-8935-29F784CE882F@darbyshire-bryant.me.uk>
In-Reply-To: <F7A06AF9-12CF-42BB-8935-29F784CE882F@darbyshire-bryant.me.uk>
From: Dave Taht <dave.taht@gmail.com>
Date: Wed, 22 Apr 2020 09:15:29 -0700
Message-ID: <CAA93jw7bKq7hHvQdPGK-iMPwzzaFrTx3UHw=mZq1KO1D2ycDeQ@mail.gmail.com>
To: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
Subject: Re: [Cake] DSCP ramblings
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

T24gV2VkLCBBcHIgMjIsIDIwMjAgYXQgODo1OCBBTSBLZXZpbiBEYXJieXNoaXJlLUJyeWFudAo8
a2V2aW5AZGFyYnlzaGlyZS1icnlhbnQubWUudWs+IHdyb3RlOgo+Cj4gRHVyaW5nIHRoZXNlIHN0
cmFuZ2UgdGltZXMgb2YgbG9ja2Rvd24gSeKAmXZlIGJlZW4gdHJ5aW5nIHRvIGtlZXAgbXlzZWxm
IG9jY3VwaWVkL2VudGVydGFpbmVkL3NhbmUoPz8/KSBieSDigJhmaWRkbGluZyB3aXRoIHN0dWZm
4oCZIGFuZCBpbXByb3ZpbmcgbXkgY29kaW5nLiAgVGhpcyBzdGFydGVkIHdpdGggYW4gaWRlYSBv
ZiBsZWFybmluZyBQeXRob24gd2hpY2ggd2FzIGdyZWF0IHVudGlsIHRoZSBvbi1saW5lIGJpdCBv
ZiBpdCByYW4gb3V0IGFuZCBzb21lb25lIHBvc3RlZCBhbiBpZGVhIG9uIHRoZSBPcGVud3J0IGZv
cnVtIGFib3V0IGdyYXBoaW5nIENha2Ugc3RhdHMuCj4KPiBUaGF0IGhhZCBub3RoaW5nIHRvIGRv
IHdpdGggUHl0aG9uIGFuZCBpbnZvbHZlZCAobmV3IHRvIG1lKSB0ZWNobm9sb2dpZXMgc3VjaCBh
cyDigJhjb2xsZWN0ZOKAmSwg4oCYSlNPTuKAmSwgYSBiaXQgb2YgamF2YXNjcmlwdCBhbmQgbXkg
dXN1YWwgbGV2ZWwgb2YgY29iYmxpbmcgc29tZXRoaW5nIHRvZ2V0aGVyIGluIOKAmGFzaOKAmeKA
pi4gU28gdGhhdCBjb3Vyc2Ugd2FzIHdlbGwgc3BlbnQgOi0pCj4KPiBBbnl3YXksIGRhdGEgd2Fz
IGNvbGxlY3RlZCBhbmQgZ3JhcGhzIHByb2R1Y2VkIGluIGEgdmVyeSBzbWFsbCBob3VzZWhvbGQu
ICBXaGF04oCZcyBpbW1lZGlhdGVseSBhcHBhcmVudCBmcm9tIHRob3NlIGdyYXBocyBhbmQgY2Fr
ZSBpbiDigJhkaWZmc2VydjTigJkgbW9kZSBpcyB0aGF0IHZlcnksIHZlcnkgZmV3IGFwcGxpY2F0
aW9ucyBhcmUgdXNpbmcgRFNDUCBhdCBhbGwuICBNb3N0IHRoaW5ncyBhcmUgdG8gcG9ydCA0NDMu
Cj4KPiBJIHdhcyBhbHNvIGEgbGl0dGxlIHN1cnByaXNlZCB0byBzZWUgdGhhdCBteSBETlMgb3Zl
ciBmb28gcHJveGllcyBzdWNoIGFzIHN0dWJieSAmIGh0dHBzLWRucy1wcm94eSBkb27igJl0IHVz
ZSBEU0NQIGNvZGluZy4gIEl0IHN1cnByaXNlZCBtZSBldmVuIG1vcmUgdG8gc2VlIFJGQyByZWNv
bW1lbmRhdGlvbnMgdGhhdCBETlMgYmUgdHJlYXRlZCBhcyDigJhCZXN0IEVmZm9ydOKAmS4gIE5v
dyBpbiB0aGUgZGF5cyBvZiB1ZHAgb25seSBhbmQgbm8gZG5zc2VjICh3aXRoIGZhbGxiYWNrIHRv
IHRjcCkgdGhpcyBtYXkgYmUgZ29vZCBlbm91Z2gsIGJ1dCBJIHdvbmRlciBpZiB0aGlzIGlzIHJl
YWxpc3RpYyB0aGVzZSBkYXlzPwo+Cj4gU28gcHV0dGluZyBhc2lkZSB0aGUgZGlzY3Vzc2lvbiBv
ZiB3aGF0IGNvZGVwb2ludCBzaG91bGQgYmUgdXNlZCwgSSB0aGVuIHdvbmRlcmVkIGhvdyBoYXJk
IGl0IHdvdWxkIGJlIHRvIGFjdHVhbGx5IHNldCBhIGRzY3AgaW4gdGhlc2UgYXBwbGljYXRpb25z
LiAgQW5kIHRoaXMgaXMgd2hlcmUgSSBoYWQgYW5vdGhlciBzdXJwcmlzZS4gIEZvciBleGFtcGxl
IGh0dHBzLWRucy1wcm94eSB1c2VzIGxpYmN1cmwuICBsaWJjdXJsIGhhcyBubyBzdGFuZGFyZCDi
gJhpbi1saWJyYXJ54oCZIG1ldGhvZCBmb3Igc2V0dGluZyBhIHNvY2tldOKAmXMgZHNjcC4gIEkg
Y29iYmxlZCBhIHdvcmthcm91bmQgaW4gdGhlIGFwcGxpY2F0aW9uIGh0dHBzOi8vZ2l0aHViLmNv
bS9hYXJvbmQxMC9odHRwc19kbnNfcHJveHkvcHVsbC84MyAtIGl0IHdvcmtzLgo+Cj4gTmV4dCBJ
IGF0dGFja2VkIHN0dWJieSwgd2hpY2ggdXNlcyBnZXRkbnMuICBnZXRkbnMgZG9lc27igJl0IGV2
ZW4gaGF2ZSBhIGNhbGxiYWNrIG9yIHBhcmFtZXRlcnMgcGFzc2luZyBzbyB5b3UgY2FuIHNldCBh
IGRzY3Agb24gdGhlIHNvY2tldCBmcm9tIGEgY2xpZW50IGFwcGxpY2F0aW9uLCBwdXJlIOKAmGhh
Y2sgdGhlIGxpYnJhcnnigJkgc3R1ZmYuCj4KPiBUbyBiZSBibHVudCBhbmQgb24gYSBzbWFsbCBz
YW1wbGUgb2YgMiBsaWJyYXJpZXMvYXBwbGljYXRpb25zLCBpdCBzZWVtcyB0aGF0IERTQ1AgaXMg
Y29tcGxldGVseSBpZ25vcmVkLiAgQXBwbGljYXRpb25zIHNpZ25hbGxpbmcg4oCZdGhpcyBpcy9p
c250IGxhdGVuY3kgc2Vuc2l0aXZlL2J1bGvigJkgaXNu4oCZdCBnb2luZyB0byBoYXBwZW4gaWYg
aXQgaXNu4oCZdCBlYXN5IHRvIGRvLgo+Cj4gQXBwbGUgc2hvdWxkIGJlIG1hcmtpbmcgZmFjZXRp
bWUgY2FsbHMgYXMgYmVpbmcg4oCYdmlkZW8gY29uZmVyZW5jZeKAmSBvciB3aGF0ZXZlci4gIEJC
QyBpcGxheWVyIFJhZGlvIGFwcHMgc2hvdWxkIGJlIG1hcmtpbmcg4oCYYXVkaW8gc3RyZWFtaW5n
4oCZLiBCdXQgZXZlcnkgZippbmcgdGhpbmcgaXMgQ1MwIHBvcnQgNDQzLiAgQW5kIEnigJltIHdv
bmRlcmluZyBob3cgbXVjaCBvZiB0aGlzIGlzIGJlY2F1c2UgbGlicmFyeSBzdXBwb3J0IGlzIHNp
bXBseSBtaXNzaW5nLiAgTWF5YmUgZ2FtaW5nIGFwcHMgYXJlIGJldHRlcj8gKEkgZG9u4oCZdCBn
YW1lKQo+Cj4gUmlnaHQsIEnigJltIG9mZiBmb3IgYSBsaWUgZG93bi4gIFNvcnJ5IGZvciB0aGUg
cmFudC4KCldlbGNvbWUgdG8gbXkgZXhwbG9yYXRpb25zLi4uIGluIDIwMTEuIERpZmZzZXJ2IGlz
IHJhdGhlciB1bmRlcnVzZWQsIGlzbid0IGl0PwoKSSB0b29rIGEgc3VydmV5IG9mIGV2ZXJ5ICg1
MDArKSBnYW1pbmcgY29uc29sZSBhdCBhIGNvbnZlbnRpb24uIG5lYXJseQp6ZXJvIGRpZmZzZXJ2
IHVzYWdlIGFuZCBpdCB3YXMgYWxsIG92ZXIgdGhlIG1hcCwgYW5kIEkgdGhpbmssIG1vc3RseSwK
ZnJvbSBvc3guCgp3aW5kb3dzIHJlcXVpcmVzIGFkbWluIHByaXZzIHRvIHNldCB0aGUgdG9zIGJp
dHMgYXQgYWxsCndlYnJ0YyBoYXMgYW4gYXBpIHRvIHNldCB0aGUgYml0cywgYnV0IGl0IGRvZXNu
J3Qgd29yayBvbiB3aW5kb3dzLgoKc3NoIHdpbGwgc2V0IHRoZSBpbW0gYml0IGZvciBpbnRlcmFj
dGl2ZSwgSSBmb3JnZXQgd2hhdCBpdCBzZXRzIGZvciBidWxrCmJncCBzZXRzIGNzNi4gc28gZG9l
cyBiYWJlbC4gQXJndWFibHkgYm90aCB1c2FnZXMgYXJlIHdyb25nLgpzb21lIHdpbmRvd3Mgc3R1
ZmYgc2V0cyBjczEgZm9yIHRoaW5ncyBsaWtlIHBpbmcKSSBnb3QgdGhlIG1vc2ggZm9sayB0byB1
c2UgQUY0MiBhcyBhICh3b3JsZHdpZGUpIHRlc3QsIGZvciBuZWFybHkgYQp5ZWFyLiB0aGV5IGhh
ZCBvbmUgdXNlciB3aXRoIGEgcHJvYmxlbSBhbmQgdGhleSB0dXJuZWQgaXQgb2ZmLiBJdCB3YXMK
ZnVubnksIGtlaXRoIHRob3VnaHQgSSB3YXMgbWFraW5nIGFuIGV4cGVydCByZWNvbW1lbmRhdGlv
biByYXRoZXIgdGhhbgphIHRlc3QgYW5kIGp1c3QgY29weSBwYXN0ZWQgbXkgY29kZSBpbnRvIHRo
ZSB0cmVlIGFuZCBzaGlwcGVkIGl0LgoKbGludXggaW1wbGVtZW50cyBhIHN0cmljdCBwcmlvcml0
eSBxdWV1ZSBpbiBwZmlmb19mYXN0LiBZb3UgY2FuIGRvcyBpdAppZiB5b3UgaGl0IGl0IGJ5IHNl
dHRpbmcgdGhlIGJpdHMuCmlydHQgYW5kIG5ldHBlcmYgbGV0IHlvdSBzZXQgdGhlIGJpdHMuIGlw
ZXJmIGFsc28uCgpJIHByb2R1Y2VkIGEgcGF0Y2ggZm9yIHJzeW5jIGluIHBhcnRpY3VsYXIgKHNp
bmNlIEkgdXNlIGl0IGhlYXZpbHkpCgpzcW0gYXQgbGVhc3QgdXNlZCB0byBtYXJrIGRucyBhbmQg
bnRwIGFzIHNvbWUgZWxpdmF0ZWQgcHJpbywgYnV0IEkKZm9yZ2V0IHdoaWNoIGFuZCBmb3IgYWxs
IEkga25vdyB0aGUgY2FrZSBxb3Mgc3lzdGVtIGRvZXNuJ3QgaW1wbGVtZW50CnRob3NlIGZpbHRl
cnMuCgpBIGZldyBtdWx0aS1xdWV1ZSBldGhlcm5ldCBkZXZpY2VzIGFjdHVhbGx5IGRvIGludGVy
cHJldCB0aGUgYml0cy4KVW5kb2N1bWVudGVkIGFzIHRvIHdoaWNoIG9uZS4uCgphbmQgbGV0cyBu
b3QgZ2V0IHN0YXJ0ZWQgb24gZWNuLgoKPgo+Cj4gSGFjayBmb3IgZ2V0ZG5zL3N0dWJieQo+Cj4g
ZGlmZiAtLWdpdCBhL3NyYy9zdHViLmMgYi9zcmMvc3R1Yi5jCj4gaW5kZXggMjU0N2QxMGYuLjdl
NDdhYmE1IDEwMDY0NAo+IC0tLSBhL3NyYy9zdHViLmMKPiArKysgYi9zcmMvc3R1Yi5jCj4gQEAg
LTUyLDYgKzUyLDcgQEAKPiAgI2luY2x1ZGUgInBsYXRmb3JtLmgiCj4gICNpbmNsdWRlICJnZW5l
cmFsLmgiCj4gICNpbmNsdWRlICJwdWJrZXktcGlubmluZy5oIgo+ICsjaW5jbHVkZSA8bmV0aW5l
dC9pcC5oPgo+Cj4gIC8qIFdTQSBUT0RPOgo+ICAgKiBTVFVCX1RDUF9SRVRSWSBhZGRlZCB0byBk
ZWFsIHdpdGggZWRnZSB0cmlnZ2VyZWQgZXZlbnQgbG9vcHMgKHZlcnN1cwo+IEBAIC0zODEsNiAr
MzgyLDkgQEAgdGNwX2Nvbm5lY3QoZ2V0ZG5zX3Vwc3RyZWFtICp1cHN0cmVhbSwgZ2V0ZG5zX3Ry
YW5zcG9ydF9saXN0X3QgdHJhbnNwb3J0KQo+ICAjIGVsc2UKPiAgICAgICAgIHN0YXRpYyBjb25z
dCBpbnQgIGVuYWJsZSA9IDE7Cj4gICMgZW5kaWYKPiArI2VuZGlmCj4gKyNpZiBkZWZpbmVkKElQ
X1RPUykKPiArICAgICAgIGludCBkc2NwID0gSVBUT1NfQ0xBU1NfQ1M0Owo+ICAjZW5kaWYKPiAg
ICAgICAgIGludCBmZCA9IC0xOwo+Cj4gQEAgLTM5MCw2ICszOTQsMTIgQEAgdGNwX2Nvbm5lY3Qo
Z2V0ZG5zX3Vwc3RyZWFtICp1cHN0cmVhbSwgZ2V0ZG5zX3RyYW5zcG9ydF9saXN0X3QgdHJhbnNw
b3J0KQo+ICAgICAgICAgICAgICAgICAgICBfX0ZVTkNfXywgKHZvaWQqKXVwc3RyZWFtKTsKPiAg
ICAgICAgIGlmICgoZmQgPSBzb2NrZXQodXBzdHJlYW0tPmFkZHIuc3NfZmFtaWx5LCBTT0NLX1NU
UkVBTSwgSVBQUk9UT19UQ1ApKSA9PSAtMSkKPiAgICAgICAgICAgICAgICAgcmV0dXJuIC0xOwo+
ICsjaWYgZGVmaW5lZChJUF9UT1MpCj4gKyAgICAgICBpZiAodXBzdHJlYW0tPmFkZHIuc3NfZmFt
aWx5ID09IEFGX0lORVQ2KQo+ICsgICAgICAgICAgICAgICAodm9pZClzZXRzb2Nrb3B0KGZkLCBJ
UFBST1RPX0lQVjYsIElQX1RPUywgJmRzY3AsIHNpemVvZihkc2NwKSk7Cj4gKyAgICAgICBlbHNl
IGlmICh1cHN0cmVhbS0+YWRkci5zc19mYW1pbHkgPT0gQUZfSU5FVCkKPiArICAgICAgICAgICAg
ICAgKHZvaWQpc2V0c29ja29wdChmZCwgSVBQUk9UT19JUCwgSVBfVE9TLCAmZHNjcCwgc2l6ZW9m
KGRzY3ApKTsKPiArI2VuZGlmCj4KPgo+IENoZWVycywKPgo+IEtldmluIEQtQgo+Cj4gZ3BnOiAw
MTJDIEFDQjIgMjhDNiBDNTNFIDk3NzUgIDkxMjMgQjNBMiAzODlCIDlERTIgMzM0QQo+Cj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBDYWtlIG1haWxp
bmcgbGlzdAo+IENha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cj4gaHR0cHM6Ly9saXN0cy5idWZm
ZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQoKCgotLSAKTWFrZSBNdXNpYywgTm90IFdhcgoKRGF2
ZSBUw6RodApDVE8sIFRla0xpYnJlLCBMTEMKaHR0cDovL3d3dy50ZWtsaWJyZS5jb20KVGVsOiAx
LTgzMS00MzUtMDcyOQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczov
L2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
