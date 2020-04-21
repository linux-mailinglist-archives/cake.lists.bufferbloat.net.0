Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E291B3310
	for <lists+cake@lfdr.de>; Wed, 22 Apr 2020 01:27:44 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 9099B3CB42;
	Tue, 21 Apr 2020 19:27:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1587511663;
	bh=dM/Eym4rA45LR38/KneyqdU/Z9tqXKdrEJ0QkosFawc=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kq7DQAR9k+1z8xK8sDSTufpfGP1SDN5A0OcP2tx2fV3uTrmD25uHLOKIB503uCUCG
	 bD5eipiT2E5nSXB2lrLGG9DGQwlLjx+VYhXlp59aeXWYutCzw2+/HqVi7bFnSxl37I
	 t7DOBrw9Ga2z7U9LNbJMbvgi9GK8yYTAzFepWDxVWZdGtyC+CYYPRwQbkX5r4bsFjZ
	 /0ArRitmO35PB1ajsVNYdWjYyhfA3UEnB+nnMpklFaF1wE8qsnnqgK1snzVT5BbW1g
	 2aa5YR5AcmmGtapaBOGBIJjJPUha+Z1pMBUcRi6EAZky8GhN8KZuDnScSZgVtC7YKS
	 7Zpo6qOxVxDfg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x12a.google.com (mail-il1-x12a.google.com
 [IPv6:2607:f8b0:4864:20::12a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 503C03B29D
 for <cake@lists.bufferbloat.net>; Tue, 21 Apr 2020 19:27:42 -0400 (EDT)
Received: by mail-il1-x12a.google.com with SMTP id r2so89113ilo.6
 for <cake@lists.bufferbloat.net>; Tue, 21 Apr 2020 16:27:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Ha1/f1Q/C9GBnZpJ8gcUE5BX1rV9QWA9BTGQr3abt+A=;
 b=Kzy/Ap6Nqt8pQiIYk0XwRqIdyKk6XkaJmtuGuLYYMby42IPW2fWjNP2/oiaxo+XNoA
 66mzZcdTqnbvERFxmnlg+ziHw9d1cpU2G5ysyGr/AtLqp5KvG+peIlI9BKMOLBkGBnWk
 xN+MZyBNTCsdpI8w2PiiyKTqnCcN5CGhRAl0DyzZ86Hsvp2Zkv9jeLeKgidTXGTfbK0a
 j9aIhNOPVTi6e5RYBdwx5pMbFHJtioIFpZkFn3gwtDqV/HLKpUIT6Rq522N9fQe1Mfnx
 tx/jTAnP/gsDtkIO9C4CzQ+eOX4hb8M5VQkHSWNUDr2hV6tEu5QCcRw1TLyTMXjXwcnS
 wgiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Ha1/f1Q/C9GBnZpJ8gcUE5BX1rV9QWA9BTGQr3abt+A=;
 b=uRWNwQmqOPMThqeuuJFwg2DCnybd1AOJMvolqbg995QcyzFCvkFnakxSURQ4gciwUp
 Jf6c2wm5SyHwX9y4FkXWkeWMbaRQWTeAFEdeyXZCOA+WtB94yBzaS39sk6ike7Ccmfhu
 blb/qll7/qRaWBOFyVUMV3Qix720zHzWOFiwXDzsz8nBrtUxacsl4F+gNFTSxEJ6Gfwy
 sB/qcn7hJquaYyff+evEv9204o+BtdXEEeEq7bYkitps0XnME9aVQAMJc7Clp88/oHiA
 E+OdpGLU76C3LDZWD1efEquBOsHIBp2JMEhNlkUIHm5Thd/epTTX5+2IVMJtQJBmgCzZ
 qYVw==
X-Gm-Message-State: AGi0PuZQc/t2EfZh4W3Xce1e+uXoeEeQSMFy9j52yVBK662fPmERxRJ/
 /h+0OMqet7ojwdqd/k9HXRIdpPE5v9uHkgfD9aw=
X-Google-Smtp-Source: APiQypKOvkSKFjPIB/cl4fWQIEFIpWorUTRGlyL752qCGnXcJnEPeOSboyRc1vvagXzTuplswdjB2tQia+CJiCWhRl0=
X-Received: by 2002:a92:c7a9:: with SMTP id f9mr9822451ilk.0.1587511661758;
 Tue, 21 Apr 2020 16:27:41 -0700 (PDT)
MIME-Version: 1.0
References: <d3f45591-7359-47a6-bd0b-f89f9b49c5a7@www.fastmail.com>
 <75FEC2D9-BFC8-4FA2-A972-D11A823C5528@gmail.com>
 <CAA93jw7kfSjuQP2j8uX5-+hs2PBLNZ6c0=tV=PjZE50fQ1oFLw@mail.gmail.com>
 <AAAE0AE6-BA8C-4236-A68D-C5A4CF7DFEDA@slashdirt.org>
 <603DFF79-D0C0-41BD-A2FB-E40B95A9CBB0@gmail.com>
 <CAA93jw5yvybv+aXH4NLd1r_8xSP2CPwzeh0q6wm1c26jLPBxag@mail.gmail.com>
 <CAA93jw4hr+YS+W371pEiVB0KLy88miHtXpTrnLpa85B5AjTA4A@mail.gmail.com>
 <2044323F-4CD0-4A75-91DF-FF2DA3E41B86@gmail.com>
In-Reply-To: <2044323F-4CD0-4A75-91DF-FF2DA3E41B86@gmail.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Tue, 21 Apr 2020 16:27:30 -0700
Message-ID: <CAA93jw70uBiZrRTN4=yHXBg+oZZEg4s_ibYX7X1SLNFZ6if29g@mail.gmail.com>
To: Jonathan Morton <chromatix99@gmail.com>
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

T24gVHVlLCBBcHIgMjEsIDIwMjAgYXQgNDowNyBQTSBKb25hdGhhbiBNb3J0b24gPGNocm9tYXRp
eDk5QGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiA+IE9uIDIyIEFwciwgMjAyMCwgYXQgMTo1MCBhbSwg
RGF2ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwuY29tPiB3cm90ZToKPiA+Cj4gPiBKb24sIGhvdydz
IFNDRSBsb29raW5nPyByZWFkeSBmb3IgYSBiYWNrcG9ydCB5ZXQ/Cj4KPiBXZSBjYW4ndCBkbyBh
bnkgc29ydCBvZiB3aWRlIGRlcGxveW1lbnQgb2YgU0NFIHVudGlsIGl0J3MgYmVlbiBhcHByb3Zl
ZCBhcyBhbiBJbnRlcm5ldCBleHBlcmltZW50IGJ5IHRoZSBJRVRGLgoKSWYgdGhlIHByZXNlbnQg
YWxnb3JpdGhtIG9uIHRoZSBxZGlzYyBpcyBzdGFibGUsIEknZCBsaWtlIHRvIHRyeSBpdCBvbiB3
aWZpLgoKPiBJbnRlcmVzdGVkIGluZGl2aWR1YWxzIGNhbiBhbHJlYWR5IGNvbXBpbGUgdGhlIFND
RS1lbmFibGVkIGtlcm5lbCBhbmQganVtcCB0aHJvdWdoIHRoZSBob29wcyB0byB0cnkgdGhpbmdz
IG91dCAtIGNhcmVmdWxseS4gIFRoZXJlJ3MgYSBiaXQgb2YgaW5mcmFzdHJ1Y3R1cmUgY29kZSB0
byBnbyB3aXRoIHRoZSBuZXcgVENQIGFsZ29yaXRobXMgYW5kIHFkaXNjcywgc28gSSdtIG5vdCBj
ZXJ0YWluIGhvdyBlYXN5IGEgYmFja3BvcnQgd291bGQgYmU7IGJldHRlciB0byBqdXN0IGJ1aWxk
IHRoZSAocmVsYXRpdmVseSkgY3VycmVudCBjb2RlIGZvciBub3cuCgpOb3Qgb24gb3BlbndydC4g
SXQgc2VlbWVkIGVhc3kgdG8gYmFja3BvcnQganVzdCBjYWtlIHRoZXJlLCBhbmQgdGhlCnJlc3Qg
b2YgdGhlIGNvZGUgb24gZGVkaWNhdGVkIHNlcnZlcnMgYW5kIGNsaWVudHMuIFNpbWlsYXJseSBJ
J2QgdHJ5CmZvciB0aGUgd2lmaSBhdHRlbXB0IGFsc28uCgpJIGNhcmUgYWJvdXQgdGhlIGNwdSBp
bXBhY3QgYSBsb3QuIEFsc28gYSByZWNlbnQgc3RyaW5nIG9mIHBvc3RpbmdzIG9uCm5ldGRldiB0
aGF0IEkgaGF2ZSBoYWQgdG9vIG11Y2ggUFRTRCB0byByZXBseSB0byBzZWVtIHRvIGluZGljYXRl
IHRoYXQKYWNjZWNuICpyZXF1aXJlcyogdGhhdCB0aGUgdGNwIG9mZmxvYWQgZW5naW5lIGJlIGRp
c2FibGVkLCB3aGljaCBpcwpkaWZmaWN1bHQgdG8gc3dhbGxvdy4gQ2FuIFNDRSB3b3JrIHdpdGgg
dGNwIG9mZmxvYWRzIGVuYWJsZWQgKG9uIHRoZQpzZXJ2ZXIsIGNsaWVudCBhbmQgcWRpc2M/KT8K
ClRoZSBzYW1lIHBvc3QgY2xhaW1lZCB0aGF0IGFwcGxlIHByb3ZlZCB3ZSBjb3VsZCAianVzdCB0
dXJuIGVjbiBvbiIsCmFuZCB0byBleHBsb3JlIHRoYXQgY2xhaW0gSSB1cGRhdGVkIG15IG9zeCB0
byB0aGUgbGF0ZXN0IG9ubHkgdG8KaW1tZWRpYXRlIGZpbmQgYXBwbGUncyBoZXVyaXN0aWNzICpk
aXNhYmxlZCogYXR0ZW1wdHMgYXQgZWNuCm5lZ290aWF0aW9uIG9uIHRoZSBzZWNvbmQgb2YgdHdv
IHJydWwgdGVzdHMsIGFuZCBJJ2QgYWxzbyBwb2tlZCBpbnRvIGEKd29ybGR3aWRlIGRhdGFzZXQg
dGhhdCBzaG93ZWQgV0FZIGxlc3MgZWNuIGF0dGVtcHRzIG1ha2luZyBpdCBmcm9tCmFwcGxlIGdl
YXIgdG8gdGhlIHRlc3Qgc2VydmVyLgoKQW5vdGhlciBwb3N0ICh3aGljaCBJIGhhdmUgbm90IHJl
c3BvbmRlZCB0byBlaXRoZXIpIHBvaW50ZWQgdG8gYW4KaW1wcm92ZW1lbnQgaW4gdGhlIDNXSFMg
dGhhdCBtYXkgb3IgbWF5IG5vdCBiZSBnZW51aW5lbHkgdXNlZnVsLCBidXQKYXQgdGhhdCBwb2lu
dCwgSSB3ZW50IGJhY2sgdG8gZml4aW5nIHdpZmkgd2l0aCB3aGF0IEkga25ldyB3b3JrZWQuCgpU
aGUgY29kZSBpdHNlbGYsIHdhcyBub3QgYmFkLiBQZXJoYXBzIHNvbWUgcmV2aWV3IG9mIHRoYXQg
c2V0IG9mCnBhdGNoZXMgYW5kIHRocmVhZCBpcyBuZWVkZWQgYnkgc29tZSBvdGhlcnMgd2l0aCBz
dHJvbmdlciBzdG9tYWNocy4KCmh0dHBzOi8vd3d3LnNwaW5pY3MubmV0L2xpc3RzL25ldGRldi9t
c2c2Mzg4ODIuaHRtbAoKCj4KPiBJRVRGIFRTVldHIGludGVyaW0gbWVldGluZyBuZXh0IHdlZWsg
KHRoZSBzZWNvbmQgb2YgdHdvIHJlcGxhY2luZyBwbGFubmVkIGluLXBlcnNvbiBzZXNzaW9ucyBh
dCBWYW5jb3V2ZXIpIHdpbGwgZGlzY3VzcyB0aGUgYmlnIEVDVCgxKSBpc3N1ZSwgd2hpY2ggaXMg
aG90bHkgZGlzcHV0ZWQgYmV0d2VlbiBTQ0UgYW5kIEw0Uy4gIFRoZSBrZXkgcXVlc3Rpb24gaXMg
d2hldGhlciBFQ1QoMSkgc2hvdWxkIGJlY29tZSBhIGNsYXNzaWZpZXIgaW5wdXQgdG8gdGhlIG5l
dHdvcmsgKG9ydGhvZ29uYWwgdG8gRGlmZnNlcnYgYnV0IHdpdGggc29tZSBvZiB0aGUgc2FtZSBi
YXNpYyBwcm9ibGVtcyksIG9yIGFuIGFkZGl0aW9uYWwgY29uZ2VzdGlvbiBzaWduYWwgb3V0cHV0
IGZyb20gdGhlIG5ldHdvcmsgKGluZGljYXRpbmcgYSBsZXNzZXIgZGVncmVlIG9mIGNvbmdlc3Rp
b24sIHRvIHdoaWNoIGEgc21hbGxlciBhbmQgbW9yZSBudWFuY2VkIHJlc3BvbnNlIGlzIGRlc2ly
ZWQpLiAgSXQncyBhbnlvbmUncyBndWVzcyBob3cgdGhhdCB3aWxsIHR1cm4gb3V0LCBidXQgdGhl
IHRlY2huaWNhbCBtZXJpdCBpcyBvbiBvdXIgc2lkZSBhbmQgdGhhdCByZWFsbHkgc2hvdWxkIGNv
dW50IGZvciBzb21ldGhpbmcuCj4KPiBJZiB5b3UncmUga2VlcGluZyBhbiBleWUgb24gdGhlIFRT
VldHIGxpc3QsIGV4cGVjdCBhIG1ham9yIGJvbWJzaGVsbCB0byBkcm9wIHRoZXJlIGluIHRoZSBu
ZXh0IGZldyBkYXlzLgoKSSBkby4gSSB3aXNoIG1vcmUgZGlkLiBCZXZlcmFnZSBpbiBoYW5kLiA6
KQoKPiAgLSBKb25hdGhhbiBNb3J0b24KPgoKCi0tIApNYWtlIE11c2ljLCBOb3QgV2FyCgpEYXZl
IFTDpGh0CkNUTywgVGVrTGlicmUsIExMQwpodHRwOi8vd3d3LnRla2xpYnJlLmNvbQpUZWw6IDEt
ODMxLTQzNS0wNzI5Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8v
bGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
