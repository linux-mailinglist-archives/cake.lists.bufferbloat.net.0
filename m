Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E0FD3BE0DC
	for <lists+cake@lfdr.de>; Wed,  7 Jul 2021 04:27:01 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 02FAD3CB63;
	Tue,  6 Jul 2021 22:27:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1625624820;
	bh=8deNwxCotMQ9PVMpc2ieil3XMZ0nve3Mt5xrWxfzz/M=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cQ7mB40RVX2E3py+C8OcCwvlet2IZCwy8DhjY7cTBY7jXF1qMME5yojEjV4loUrwe
	 W8cTC8sToqZBQ7EJ6WLHZeY9Ga7VwmTNWqBL1THzOpG1DALvXCV3MPEDyqtXEYqwVd
	 HPux5QTVMgniQXQOEW0augCh9joitkfbPFBXRphtzkcijuU9jiE90p7+yBOxasnZ5Q
	 DjrVwhxk1/e9s3OwAzutxKNSefE9fHlAFCFTfg2ut4sXpfZdeDSdTk4LTGTJohBSFR
	 jwr7gzf6f2xnbr2ORRr/X6n3scBiZWY/WfHPOKTKCiFVct+/rTW1rq/yWUlXt4a36P
	 T+hajQG5SNQSA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd36.google.com (mail-io1-xd36.google.com
 [IPv6:2607:f8b0:4864:20::d36])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 48E563CB46;
 Tue,  6 Jul 2021 22:26:59 -0400 (EDT)
Received: by mail-io1-xd36.google.com with SMTP id g22so1180125iom.1;
 Tue, 06 Jul 2021 19:26:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=9AZUm6tWi5/nTm9tqr3v2WpclxIzB0fRyMIUuaYjeXU=;
 b=Bq/fHWLJ/4yywPWUi66medFJ25hJz5pQJPqYATzIxMaR3xDEVDMKKlFlbLcVpWpQ0r
 Jijs0bQjTGFcw75HkvZ+mxf0fD0W+VuIzyZJZCubmZJZCfb1eHzfa2Lcz/qZMV2XVIvI
 3i57vno+pCuhpTR41ogmVs2cK+IWlkJK7igSgn27pfBDbJ8SOs/nLllhNSDoz1WM143l
 9lIqpCXjDWQqrxt3psMlWO1j1UPyfEUfUhyb4nWSMnjZg3caZYeT6+I8zQv6qSWnZFWw
 gbNNg9VMzNnpoDwpKSFWoIe6bN4LN2kGOFa7NBN7UT/fDGkKWoUF9W3cYvRYEQXXbJAa
 jRJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=9AZUm6tWi5/nTm9tqr3v2WpclxIzB0fRyMIUuaYjeXU=;
 b=HzoW2htnP8v3/fBT2pz9H/EtGzchFnVWbPaTka8ZfLinDBJO/TNEVAsP6UJKg/2Y6a
 RBagfllnwQhuHq2/9JuDh8shnJ53uIL4dsOvi0KZls/N4jLI4TUxPswrkEyHthxDmFIA
 PfgAUcj4ttKcww+x1+SeVBrQwgrHmf+WJ0xJjhulnV4CBet375Q+LB8bbfeL2eucSU3e
 vU1Z+8gVIGgxMBWMY04L8gRpaEciErENazew4O74BrNs7z2G5vkKa36HCUQn7SUwDmpu
 ida5XT1t6ALsLTG6bxRdKbCf36mSTge1nOJK4IS89lN81nFW3G12zHGBsoHjSdqKcd4S
 7Jig==
X-Gm-Message-State: AOAM532SapQvY3Zp/KLkAnN2HFyPqgPbOoqv4I44Rk5u4cEk0p38O5xR
 oWEGTDYmDmoENqXukatiHpASCXvBDHmWAwb7Tuo=
X-Google-Smtp-Source: ABdhPJyIGPxB73/li3Wau7hJ86+5NRZTG/RvIrdpXeqT+6L/bcgBIvMYqhkHIKlgFb/cMjt8IP8M/IKGkoCZPkI3fb8=
X-Received: by 2002:a05:6602:71c:: with SMTP id
 f28mr3569106iox.161.1625624818537; 
 Tue, 06 Jul 2021 19:26:58 -0700 (PDT)
MIME-Version: 1.0
References: <20210621210048.628befdb@hermes.local>
 <38CC4C4D-AE42-4629-8472-16BCC0DEAFEA@gmx.de>
 <2dbdf457-5652-6b74-7014-3bf79dde6bc9@gmx.com>
 <CALQXh-OwnqcFBhx+uy9_83eHF3Xh3iAsNkDyFN+TOH_KJBTVvg@mail.gmail.com>
In-Reply-To: <CALQXh-OwnqcFBhx+uy9_83eHF3Xh3iAsNkDyFN+TOH_KJBTVvg@mail.gmail.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Tue, 6 Jul 2021 19:26:47 -0700
Message-ID: <CAA93jw4B70qXxKyQ9QorPHsMFzoLtkrxJzyAWHHoicTEepJQOw@mail.gmail.com>
To: Aaron Wood <woody77@gmail.com>
Subject: Re: [Cake] [Bloat] Really getting 1G out of ISP?
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
Cc: Cake List <cake@lists.bufferbloat.net>,
 Giuseppe De Luca <dropheaders@gmx.com>, bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gVHVlLCBKdWwgNiwgMjAyMSBhdCAzOjMyIFBNIEFhcm9uIFdvb2QgPHdvb2R5NzdAZ21haWwu
Y29tPiB3cm90ZToKPgo+IEknbSBydW5uaW5nIGFuIE9keXNzZXkgZnJvbSBTZWVlZCBTdHVkaW9z
IChjZWxlcm9uIEo0MTI1IHdpdGggZHVhbCBpMjExKSwgYW5kIGl0IGNhbiBoYW5kbGUgQ2FrZSBh
dCAxR2JwcyBvbiBhIHNpbmdsZSBjb3JlICh3aGljaCBpdCBuZWVkcyB0bywgYmVjYXVzZSBPcGVu
V1JUJ3MgaTIxMSBzdXBwb3J0IHN0aWxsIGhhcyBtdWx0aXBsZSByZWNlaXZlIHF1ZXVlcyBkaXNh
YmxlZCkuCgpOb3QgY2xlYXIgaWYgdGhhdCBpcyBzaGFwZWQgb3Igbm90PyBMaW5lIHJhdGUgaXMg
ZWFzeSBvbiBwcm9jZXNzb3JzIG9mCnRoYXQgY2xhc3Mgb3IgYmV0dGVyLCBidXQgc2hhcGVkPwoK
c29tZSBwb2ludHM6CgpPbiBpbmJvdW5kIHNoYXBpbmcgZXNwZWNpYWxseSBpdCBpdCBzdGlsbCBi
ZXN0IHRvIGxvY2sgbmV0d29yayB0cmFmZmljCnRvIGEgc2luZ2xlIGNvcmUgaW4gbG93IGVuZCBw
bGF0Zm9ybXMuCgpDYWtlIGl0c2VsZiBpcyBub3QgbXVsdGljb3JlLCBhbHRob3VnaCB0aGUgZGVz
aWduIGVzc2VudGlhbGx5IGlzLiBXZQpkaWQgc29tZSB3b3JrIHRvd2FyZHMgdHJ5aW5nIHRvIG1h
a2UgaXQgc2hhcGUgYWNyb3NzIG11bHRpcGxlIGNvcmVzCmFuZCBtdWx0aXBsZSBoYXJkd2FyZSBx
dWV1ZXMuIElGIHRoZSBsb2NraW5nIGNvbnRlbnRpb24gY291bGQgYmUKbWluaW1pemVkIChSQ1Up
IEkgZmVsdCBpdCBwb3NzaWJsZSBmb3IgYSB3aW4gaGVyZSwgYnV0IGEgYmlnZ2VyIHdpbgp3b3Vs
ZCBiZSB0byBlbGltaW5hdGUgIm1pcnJlZCIgZnJvbSB0aGUgaW5ncmVzcyBwYXRoIGVudGlyZWx5
LgoKRXZlbiBtdWx0aXBsZSB0cmFuc21pdCBxdWV1ZXMgcmVtYWlucyBraW5kIG9mIGRpY3kgaW4g
bGludXgsIGFuZAphY3R1YWxseSB0ZW5kIHRvIHNsb3cgbmV0d29yayBwcm9jZXNzaW5nIGluIG1v
c3QgY2FzZXMgSSd2ZSB0cmllZCBhdApnYml0IGxpbmUgcmF0ZXMuIFRoZXkgYWxzbyBhZGQgbGF0
ZW5jeSwgYXMgKDEpIEJRTCBpcyBNSUFELCBub3QgQUlNRCwKc28gaXQgc3RheXMgInN0dWNrIiBh
dCBhICJnb29kIiBsZXZlbCBmb3IgYSBsb25nIHRpbWUsIEFORCAyKSBlYWNoIGh3CnF1ZXVlIGdl
dHMgYW4gYWRkaXRpdmUgZmlmbyBhdCB0aGlzIGxheWVyLCBzbyB3aGVyZSwgeW91IG1pZ2h0IG5l
ZWQKb25seSA0MGsgdG8ga2VlcCBhIHNpbmdsZSBodyBxdWV1ZSBidXN5LCB5b3UgZW5kIHVwIHdp
dGggMTYwayB3aXRoIDQKaHcgcXVldWVzLiBUaGlzIHByb2JsZW0gaXMgZ2V0dGluZyB3b3JzZSBh
bmQgd29yc2UgKDY0IHF1ZXVlcyBhcmUKY29tbW9uIGluIG5ld2VyIGhhcmR3YXJlLCAxMDAwcyBp
biByZWFsbHkgbmV3IGhhcmR3YXJlKSBhbmQgYSByZXZpc2l0CnRvIGhvdyBCUUwgZG9lcyB0aGlu
Z3MgaW4gdGhpcyBjYXNlIHdvdWxkIGJlIHVzZWZ1bC4gSWRlYWxseSBpdCB3b3VsZApzaGFyZSBz
dGF0ZSAod2l0aCBhIGNyb3NzIGNvcmUgdmFyaWFibGUgYW5kIGF0b21pYyBsb2NrcykgYXMgdG8g
aG93Cm11Y2ggdG90YWwgYnVmZmVyaW5nIHdhcyBhY3R1YWxseSBuZWVkZWQgImRvd24gdGhlcmUi
IGFjcm9zcyBhbGwgdGhlCnF1ZXVlcywgYnV0IHdpdGhvdXQgdHJ5aW5nIGl0LCBJIHdvcnJ5IHRo
YXQgdGhhdCB3b3VsZCBlbmQgdXAgY29zdGluZwphIGxvdCBvZiBjcHUgY3ljbGVzLgoKRmVlbCBm
cmVlIHRvIGV4cGVyaW1lbnQgd2l0aCBtdWx0aXBsZSB0cmFuc21pdCBxdWV1ZXMgbG9ja2VkIHRv
IG90aGVyCmNvcmVzIHdpdGggdGhlIHNldC1hZmZpbml0eSBiaXRzIGluIC9wcm9jL2ludGVycnVw
dHMuIEknbSBzdXJlIHRoZXNlCk1VU1QgYmUgdXNlZnVsIG9uIHNvbWUgcGxhdGZvcm0sIGJ1dCBJ
IHRoaW5rIG1vc3Qgb2YgdGhlIHVzZSBmb3IKbXVsdGlwbGUgaHcgcXVldWVzIGlzIHdoZW4gYSBs
b2NhbGx5IHByb2Nlc3NpbmcgYXBwbGljYXRpb24gIGlzCmdldHRpbmcgdGhlIGRhdGEsIG5vdCB3
aGVuIGl0IGlzIGJlaW5nIHJvdXRlZC4KCklyb25pY2FsbHksIEkgZ3Vlc3MsIHRoZSBzaG9ydGVy
IHlvdXIgcXVldWVzIHRoZSBoaWdoZXIgbGlrZWxpaG9vZCBhCmdpdmVuIHBhY2tldCB3aWxsIHJl
bWFpbiBpbiBsMiBvciBldmVuIGwxIGNhY2hlLgoKSQo+Cj4gT24gVHVlLCBKdW4gMjIsIDIwMjEg
YXQgMTI6NDQgQU0gR2l1c2VwcGUgRGUgTHVjYSA8ZHJvcGhlYWRlcnNAZ214LmNvbT4gd3JvdGU6
Cj4+Cj4+IEFsc28gYSBQQyBFbmdpbmVzIEFQVTQgd2lsbCBkbyB0aGUgam9iCj4+IChodHRwczov
L2lub25pdXMubmV0L3Jlc3VsdHMvP3VzZXJJZD0xNzk5NjA4N2Y1ZTggLSB0aGlzIGlzIGEKPj4g
MWdiaXQvMWdiaXQsIHdpdGggT3BlbndydC9zcW0tc2NyaXB0cyBzZXQgdG8gOTAwLzkwMC4gIElT
UCBpcyBTb255IE5VUk8KPj4gaW4gSmFwYW4pLiBXaWxsIGZvbGxvdyB0aGlzIHRocmVhZCB0byBr
bm93IGlmIHNvbWUgaW50ZXJlc3RpbmcgZGV2aWNlCj4+IHBvcHVwIDopCj4+Cj4+Cj4+IGh0dHBz
Oi8vaW5vbml1cy5uZXQvcmVzdWx0cy8/dXNlcklkPTE3OTk2MDg3ZjVlOAo+Pgo+PiBPbiA2LzIy
LzIwMjEgNjoxMiBBTSwgU2ViYXN0aWFuIE1vZWxsZXIgd3JvdGU6Cj4+ID4KPj4gPiBPbiAyMiBK
dW5lIDIwMjEgMDY6MDA6NDggQ0VTVCwgU3RlcGhlbiBIZW1taW5nZXIgPHN0ZXBoZW5AbmV0d29y
a3BsdW1iZXIub3JnPiB3cm90ZToKPj4gPj4gSXMgdGhlcmUgYW55IGNvbnN1bWVyIGhhcmR3YXJl
IHRoYXQgY2FuIGFjdHVhbGx5IGtlZXAgdXAgYW5kIGRvIEFRTSBhdAo+PiA+PiAxR2JpdC4KPj4g
PiAgICAgICAgICBPdmVyIGluIHRoZSBPcGVuV3J0IGZvcnVtcyB0aGUgc2FtZSBxdWVzdGlvbiBw
b3BzIHVwIHJvdXRpbmVseSBvbmNlIHBlciB3ZWVrLiBUaGUgYmVzdCBhbnN3ZXIgQVRNIHNlZW1z
IHRvIGJlIGEgY29tYmluYXRpb24gb2YgYSByYXNwYmVycnkgcGk0QiB3aXRoIGEgZGVjZW50IFVT
QjMgZ2lnYWJpdCBldGhlcm5ldCBkb25nbGUsIGEgbWFuYWdlZCBzd2l0Y2ggYW5kIGFueSBjYXBh
YmxlIChPcGVuV3J0KSBBUCBvZiB0aGUgdXNlcidzIGxpa2luZy4gV2l0aCA0IGFybSBBNzIgY29y
ZXMgdGhlIHdpbGwgdHJhZmZpYyBzaGFwZSB1cCB0byBhIGdpZ2FiaXQgYXMgcmVwb3J0ZWQgYnkg
bXVsdGlwbGUgdXNlcnMuCj4+ID4KPj4gPgo+PiA+PiBJdCBzZWVtcyBldmVyeW9uZSBzZWVtcyBv
YnNlc3NlZCB3aXRoIGdhbWVyIFdpZmkgNi4gQnV0IGNhbiBvbmx5IGRvCj4+ID4+IDMwME1iaXQg
c2luZ2xlCj4+ID4+IHN0cmVhbSB3aXRoIGFueSBraW5kIG9mIFFvUy4KPj4gPiBJSVVDIG1vc3Qg
Y29tbWVyY2lhbCBob21lIHJvdXRlcnMvQVBzIGJldCBvbiBvZmZsb2FkIGVuZ2luZXMgdG8gZG8g
bW9zdCBvZiB0aGUgaGVhdnkgbGlmdGluZywgYnV0IGFzIGZhciBhcyBJIHVuZGVyc3RhbmQgb25s
eSB0aGUgTlNTIGNvcmVzIGhhdmUgYSBzaGFwZXIgYW5kIGZxX2NvZGVsIG1vZHVsZS4uLi4KPj4g
Pgo+PiA+Cj4+ID4+IEl0IGRvZXNuJ3QgaGVscCB0aGF0IGFsbCB0aGUgbG9jYWwgSVNQJ3MgY2xh
aW0gMTBNYml0IHVwbG9hZCBldmVuIHdpdGgKPj4gPj4gMUcgZG93bmxvYWQuCj4+ID4+IElzIHRo
aXMgYSBoZWFkIGVuZCBwcm92aXNpb25pbmcgcHJvYmxlbSBvciByZWxhdGVkIHRvIERvY3NpcyAz
LjAgKG9yCj4+ID4+IGxhdGVyKSBtb2RlbXM/Cj4+ID4gRm9yIERPQ1NJUyB0aGUgaXNzdWUgc2Vl
bXMgdG8gYmUgYW4gdW5mb3J0dW5hdGUgZnJlcXVlbmN5IHNwbGl0IGJldHdlZW4gdXAgYW5kIGRv
d25zdHJlYW0gYW5kIHVzZSBvZiBsb3dlciBlZmZpY2llbmN5IGNvZGluZyBzY2hlbWVzIC4KPj4g
PiBPdmVyIGhlcmUgdGhlIGluY3VtYmVudCBjYWJsZSBpc3AgcHJvdmlzaW9ucyAgZmlmdHkgTWJw
cyBmb3IgdXBzdHJlYW0gYW5kIHBsYW5zIHRvIGluY3JlYXNlIHRoYXQgdG8gaHVuZHJlZCBvbmNl
IHRoZSB1cHN0cmVhbSBpcyBzd2l0Y2hlZCB0byBkb2NzaXMgMy4xLgo+PiA+IEkgYmVsaWV2ZSBv
bmUgaXNzdWUgaXMgdGhhdCBzaW5jZSBtb3N0IG9mIHRoZSB1cHN0cmVhbSBpcyByZXF1aXJlZCBm
b3IgdGhlIHJldmVyc2UgQUNLIHRyYWZmaWMgZm9yIHRoZSBkb3dubG9hZCBhbmQgaGVuY2UgaXQg
Y2FuIG5vdCBiZSBvdmVyc3Vic2NyaWJlZCB0b28gbXVjaC4uLi4gYnV0IEkgdGhpbmsgd2UgaGF2
ZSByZWFsIGRvY3NpcyBleHBlcnRzIG9uIHRoZSBsaXN0LCBzbyBJIHdpbGwgc3RvcCBteSBzcGVj
dWxhdGlvbiBoZXJlLi4uCj4+ID4KPj4gPiBSZWdhcmRzCj4+ID4gICAgICAgICAgIFNlYmFzdGlh
bgo+PiA+Cj4+ID4KPj4gPgo+PiA+Cj4+ID4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4+ID4+IEJsb2F0IG1haWxpbmcgbGlzdAo+PiA+PiBCbG9hdEBs
aXN0cy5idWZmZXJibG9hdC5uZXQKPj4gPj4gaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQv
bGlzdGluZm8vYmxvYXQKPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPj4gQmxvYXQgbWFpbGluZyBsaXN0Cj4+IEJsb2F0QGxpc3RzLmJ1ZmZlcmJsb2F0
Lm5ldAo+PiBodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9ibG9hdAo+Cj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbG9hdCBt
YWlsaW5nIGxpc3QKPiBCbG9hdEBsaXN0cy5idWZmZXJibG9hdC5uZXQKPiBodHRwczovL2xpc3Rz
LmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9ibG9hdAoKCgotLSAKTGF0ZXN0IFBvZGNhc3Q6Cmh0
dHBzOi8vd3d3LmxpbmtlZGluLmNvbS9mZWVkL3VwZGF0ZS91cm46bGk6YWN0aXZpdHk6Njc5MTAx
NDI4NDkzNjc4NTkyMC8KCkRhdmUgVMOkaHQgQ1RPLCBUZWtMaWJyZSwgTExDCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNh
a2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xp
c3RpbmZvL2Nha2UK
