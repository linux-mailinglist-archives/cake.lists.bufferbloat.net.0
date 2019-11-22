Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 63F091071B0
	for <lists+cake@lfdr.de>; Fri, 22 Nov 2019 12:46:26 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 3B82C3CB38;
	Fri, 22 Nov 2019 06:46:25 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1574423185;
	bh=TgUiinXMUvN1FHpK7KRcJYpWlU3YPkGh1qrz/pJ0xTk=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CSb1ReMcWEopY2CfOjnu1pLz3724G7L0MUUIEVyoVJB/ctYCuOGeDvyl9KFUK3ZpJ
	 4iFmREzZdGbpBLCL2f2eMI9z1IJP7Il+OEot2X3JsBPnrV71yN9a8W31HxfbeusUD/
	 NJYLOnRMJO8H2EHuamzwlRwU3hsHvWUYCDs4lPYI1bVF79xWzFzmIh+fKVQ/PG3KGS
	 R51Hk7QWtVetK7vf/4VhnF7VVNM4Hln0OWLxqNhUjD7rpHUyYMCJROTRrFmwCT+ph5
	 iNAdayzK/IF42ZNjrexH3bUJr+qEGBE/pI4u5QuLrVhMLuuqEyXIgRVUhnu2LIbfzA
	 9QXcmeJMPUziw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 79F913B29E
 for <cake@lists.bufferbloat.net>; Fri, 22 Nov 2019 06:46:24 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1574423183;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oXTceKtCmwgvLcwWCYl6ebtanY6Gv96Fkg2/4szCo10=;
 b=MNAZO4HdIq7jC7PnKtGvAQ9yfsGU6kxLpsT/NEBPuVA9szTNChimKYWh4LbfhHSqrkDDQb
 Crj8HMTOFeewk+AEBy3SjwM/wlTxiyd1iGc0n84zhd20XOT4zMg2u7o8oDtgKJiByAlSyF
 sajzKnuUY0+HqAf8f/6lj2LNJ/wWlvY=
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com
 [209.85.208.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-346-DSpWp7B5PkmyLh-dqerVqw-1; Fri, 22 Nov 2019 06:46:22 -0500
Received: by mail-lj1-f197.google.com with SMTP id 70so1267208ljf.13
 for <cake@lists.bufferbloat.net>; Fri, 22 Nov 2019 03:46:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=eKJd0BLhuiGSUyn/SWkDuLjYIjyrW6N6AD6B9E8zfl4=;
 b=CyXokzcQ1FmTVb7bznc32VqaRL5ELFJIA4fM5bUfpRK9hoNiRT1dqfiQXciizRTlLL
 aqtxLi7uAeOU0m1NM89zpqvB130Uu03zaF0xlAb5Nb3fVLWrwZwR1reA/i8iPzIoSJPc
 O38I9mNOFQwyk93IaKLYcHDpX84fJH3HdDvmtjLKqdwbuyGWcXBdX4yzYXzmIOB0SEBM
 7+KoK7/c0XXSXx5kWrfC+nJuegBkVLXxvvZAAn+EgwABJIWB3ma2b32GsSaNfPV2+ZBX
 9xAbBel/q2TXs7JDWV1tBzK7BaD3w8xeI0OyhtxYM+E10+UxAshvwkK5RJRAz6Gn/5OX
 d/dA==
X-Gm-Message-State: APjAAAXOF0J6+ly0pagrqkfbY2A5kriNyOozB9V6HkxPSEznDW2wuo7h
 qBe9D9C4Cf6bwAcTXNLvzEowLr8/s6OFlmVhzVikxg0YPX49rXks48x4Y/hPK8jzeXxYLXR/vSV
 f6f9TkbuNCO72LKc7pU4rIg==
X-Received: by 2002:a2e:7013:: with SMTP id l19mr11915638ljc.201.1574423180616; 
 Fri, 22 Nov 2019 03:46:20 -0800 (PST)
X-Google-Smtp-Source: APXvYqyHRvbSe9/m6emtw2aPwdaUoCNyTy5PgzWAhad6u+emh30vIiaAoUmE7t0w77qlwq7NqELoXA==
X-Received: by 2002:a2e:7013:: with SMTP id l19mr11915613ljc.201.1574423180359; 
 Fri, 22 Nov 2019 03:46:20 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id z17sm2759885ljm.16.2019.11.22.03.46.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 03:46:19 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 9F06C1800B9; Fri, 22 Nov 2019 12:46:18 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Adam Moffett <adam@plexicomm.net>, cake@lists.bufferbloat.net
In-Reply-To: <em348223d0-543c-4b79-ba6b-93f2244326c1@adam-pc>
References: <em287ad38a-b2b3-4e82-9836-99fab879ad14@adam-pc>
 <CAA93jw4N_-5bui532Ad5QwGn=GH2CnqWYm=BRn75Fgo93R6aJw@mail.gmail.com>
 <em348223d0-543c-4b79-ba6b-93f2244326c1@adam-pc>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Fri, 22 Nov 2019 12:46:18 +0100
Message-ID: <878so85e2d.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: DSpWp7B5PkmyLh-dqerVqw-1
X-Mimecast-Spam-Score: 0
Subject: Re: [Cake] Cake implementations
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
Cc: Jesper Dangaard Brouer <brouer@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

IkFkYW0gTW9mZmV0dCIgPGFkYW1AcGxleGljb21tLm5ldD4gd3JpdGVzOgoKPj4+Cj4+PiAgQXJl
IHRoZXJlIGFueSBjb21tZXJjaWFsIHByb2R1Y3RzIGFscmVhZHkgdXNpbmcgQ2FrZT8KPj4KPj5F
dmVucm91dGUsIGVlcm8sIHVibnQgdG9wIHRoYXQgbGlzdC4gRXZlbnJvdXRlJ3MgaW1wbGVtZW50
YXRpb24gaXMKPj5zdXBlcmIsIHRoZSBmaXJzdCBvbmUgdGhhdCB1c2VkIGFjdGl2ZSBsaW5lIG1l
YXN1cmVtZW50cyB0byBoYW5kbGUKPj4ic2FnIi4gQW55dGhpbmcgZGVyaXZlZCBmcm9tIG9wZW53
cnQgKHNvbWV3aGVyZSBiZXR3ZWVuIDEwLTMwJSBvZiB0aGUKPj5ob21lIHJvdXRlciBtYXJrZXQp
LiBJJ20gbm90IHN1cmUgaWYgcHJlc2VlbSBpcyB1c2luZyBpdCBvciBub3QuCj4+ZGQtd3J0LiBN
b3N0IG90aGVyIHRoaW5ncyBkb2luZyAiU1FNIiBhcmUgZG9pbmcgaXQgdmlhIGh0YiArIGZxX2Nv
ZGVsLgo+Pgo+Pgo+IEFuIGlkZWEgd2hpY2ggd2FzIGZsb2F0ZWQgd2FzIHRvIGV4cGVyaW1lbnQg
d2l0aCByb3V0aW5nIElTUCBjdXN0b21lciAKPiB0cmFmZmljIHRocm91Z2ggYSBMaW51eCBzZXJ2
ZXIgdXNpbmcgY2FrZSB0byBpbXByb3ZlIGN1c3RvbWVyIAo+IGV4cGVyaWVuY2UuICBCYXNpY2Fs
bHkgbGlrZSBQcmVzZWVtLiAgTXkgY29sbGVhZ3VlIGhhcyB0b3llZCB3aXRoIGl0IGEgCj4gYml0
IGluIHNtYWxsIHRlc3QgY2FzZXMgYW5kIHdhcyBpbXByZXNzZWQgd2l0aCB0aGUgb3V0Y29tZXMu
Cj4KPiBIZSdzIGxvb2tlZCBjbG9zZXIgdGhhbiBJIGhhdmUsIGJ1dCBJJ20gdHJ5aW5nIHRvIHBp
Y3R1cmUgaG93IGhpcyBpZGVhIAo+IHdvdWxkIHNjYWxlLiAgSSBiZWxpZXZlIEknbSBzZWVpbmcg
YSBDTEkgdG9vbCBmb3IgY29uZmlndXJpbmcgcG9saWNpZXMuICAKPiBJdCBzZWVtcyBsaWtlIHdl
J2QgaGF2ZSB0byBjcmVhdGUgYSBtaWRkbGUgbGF5ZXIgdG8gY3JlYXRlL3VwZGF0ZSAKPiBwb2xp
Y2llcyBmb3IgY3VzdG9tZXIncyBJUCBhZGRyZXNzIGJhc2VkIG9uIGluZm9ybWF0aW9uIG9idGFp
bmVkIGZyb20gCj4gb3VyIEFBQSBhbmQgQ1JNIHN5c3RlbXMuICBJIGNhbiBwaWN0dXJlIHNvbWUg
c2hhcGVzIHRoYXQgbWlnaHQgdGFrZSwgYnV0IAo+IEkgdGhpbmsgaXQgd291bGQgdWx0aW1hdGVs
eSBoYXZlIHRvIHJldm9sdmUgYXJvdW5kIHNjcmlwdGluZyB0aGUgdGMgCj4gY29tbWFuZC4gIFRo
ZXJlIHdvdWxkIGJlIHRob3VzYW5kcyBvZiBwb2xpY2llcyBhbmQgYSBwb2xpY3kgd291bGQgYmUg
Cj4gY3JlYXRlZC91cGRhdGVkIHdoZW5ldmVyIGEgc3Vic2NyaWJlciByZWNvbm5lY3RzIChlLmcu
IHdoZW4gYSBESENQIGxlYXNlIAo+IHJlbmV3cyBvciBhIFJBRElVUyBhdXRoIGV2ZW50IGhhcHBl
bnMgb3Igc2ltaWxhcikuCgpJIGtub3cgc2V2ZXJhbCBJU1BzIHRoYXQgZG8gdGhpcyAocm91dGUg
dHJhZmZpYyB0aHJvdWdoIGEgTGludXggYm94IGFuZApzaGFwZSB0aGVyZSkuIFRoaXMgZGVwbG95
bWVudCBtb2RlIGhhcyBub3QgYmVlbiB0aGUgcHJpbWFyeSBmb2N1cyBvZgpDQUtFLCB0aG91Z2g7
IHRoZSAic3RhbmRhcmQiIHdheSB0byBkbyBpdCBpcyB3aXRoIEhUQitGUS1Db0RlbCwgd2hpY2gK
YWxsb3dzIHlvdSB0byBzZXQgdXAgYXJiaXRyYXJpbHkgY29tcGxleCBjb25maWd1cmF0aW9ucyBv
biBhIHNpbmdsZQppbnRlcmZhY2UuIFRoaXMgY2FuIGFsc28gYmUgbWFkZSB0byBzY2FsZSwgYnV0
IHRoZXJlJ3MgYSBjZW50cmFsIHFkaXNjCmxvY2sgaW4gTGludXggdGhhdCB5b3UgaGF2ZSB0byBn
ZXQgYXJvdW5kIHRvIHNjYWxlIHRvIG11bHRpcGxlIGNvcmVzLgpGb3J0dW5hdGVseSwgSmVzcGVy
IGhhcyBhbHJlYWR5IHNvbHZlZCB0aGlzIHBhcnRpY3VsYXIgaXNzdWU6CgpodHRwczovL2dpdGh1
Yi5jb20vbmV0b3B0aW1pemVyL3hkcC1jcHVtYXAtdGMKCj4gU2hvdWxkIHdlIGV2ZW4gcHVyc3Vl
IHRoaXMgaWRlYT8KCkluIG15IG93biB0b3RhbGx5IG5vbi1iaWFzZWQgb3BpbmlvbjogWWVzISA6
KQoKPiBBbHRob3VnaCBtb3N0IHN0YWZmIHdobyB3b3VsZCB0b3VjaCB0aGlzIHdpbGwgaGF2ZSBz
dHVkaWVkIHByb2dyYW1taW5nIAo+IGluIGNvbGxlZ2UsIEkgd291bGQgbm90IHF1YWxpZnkgYW55
IG9mIHVzIGFzICJwcm9ncmFtbWVycyIgcGVyIHNlLiAgTXkgCj4gYmlnZ2VzdCBjb25jZXJuIHdv
dWxkIGJlIGhpdHRpbmcgYSBzZXJ2aWNlIGFmZmVjdGluZyBwcm9ibGVtIHRoYXQgd2UgCj4gY2Fu
J3Qgc29sdmUuCgpPbmUgd2F5IHRvIGdvIGFib3V0IHRoaXMgd291bGQgYmUgdG8gb3BlbiBzb3Vy
Y2UgdGhlIGVudGlyZSBzb2x1dGlvbi4KVGhlcmUgYXJlIGFscmVhZHkgYml0cyBhbmQgcGllY2Vz
IGF2YWlsYWJsZSBhcyBvcGVuIHNvdXJjZSAoc3VjaCBhcwpKZXNwZXIncyByZXBvc2l0b3J5IGFi
b3ZlLCBhbmQgc3FtLXNjcmlwdHNbMF0pIHRoYXQgeW91IGNhbiBidWlsZCBvbiwKYW5kIHRoaXMg
d2F5IHlvdSBjb3VsZCBlbmxpc3QgY29tbXVuaXR5IGhlbHAgdG8gc29sdmUgYW55IGlzc3VlcyB3
aXRoCnRoZSBMaW51eCBzaWRlLiBZb3UnZCBzdGlsbCBuZWVkIHRvIGdldCB0aGUgZGF0YSBmcm9t
IHlvdXIgaW50ZXJuYWwKc3lzdGVtcywgb2YgY291cnNlLCBidXQgeW91IGNvdWxkIGRlZmluZSBh
IHNpbXBsZSBjb25maWd1cmF0aW9uIGZvcm1hdAp0aGF0IHdhcyBwYXJ0IG9mIHRoZSBvcGVuIHNv
dXJjZSBjb2RlOyB0aGVuIHlvdSdsbCBqdXN0IG5lZWQgdG8gd3JpdGUgYQpzY3JpcHQgdGhhdCBn
cmFicyBjdXN0b21lciBpbmZvIGZyb20geW91ciBDUk0gYW5kIG91dHB1dHMgdGhlIGNvbmZpZwpm
b3JtYXQuLi4KCj4gU2Vjb25kIGNvbmNlcm4gaXMgdGhhdCBtYW55IG9mIG91ciBlcXVpcG1lbnQg
dmVuZG9ycyBhbHJlYWR5IHVzZQo+IExpbnV4LiBFdmVuIENpc2NvIG5vdyBpbiBzb21lIHByb2R1
Y3RzLiBNYXliZSB3ZSdsbCB3YXN0ZSBvdXIgdGltZQo+IHRyeWluZyB0byByb2xsIG91ciBvd24g
c29sdXRpb24gYW5kIHRoZW4gZmluZCB0aGF0IGEgc29mdHdhcmUgdXBkYXRlCj4gZnJvbSBhIHZl
bmRvciBuZXh0IHllYXIgZ2l2ZXMgdXMgZXZlcnl0aGluZyB3ZSBuZWVkZWQgYW55d2F5LgoKVGhp
cyB3b3VsZCBiZSBncmVhdCwgb2YgY291cnNlLCBhbmQgZG8gZ28gYW5kIGJ1ZyB5b3VyIHZlbmRv
cnMgdG8gc29sdmUKdGhpcyBwcm9ibGVtISBOb3RlLCBob3dldmVyLCB0aGF0IGp1c3QgYmVjYXVz
ZSBhIHN5c3RlbSBpcyBydW5uaW5nCkxpbnV4IG9uIHRoZSBjb250cm9sIHBsYW5lLCBpdCBtYXkg
YmUgdXNpbmcgYSBoYXJkd2FyZS1vZmZsb2FkZWQgZGF0YQpwbGFuZSB0aGF0IGRvZXMgbm90IGhh
dmUgYW55IG9mIHRoZSBidWZmZXJibG9hdCBtaXRpZ2F0aW9uIGZlYXR1cmVzCih1bmxlc3MgdGhl
IHZlbmRvciBzcGVjaWZpY2FsbHkgaW1wbGVtZW50ZWQgdGhlbSkuIEknbSBob3BpbmcgdGhhdAoq
ZXZlbnR1YWxseSogdGhlc2UgdGhpbmdzIHdpbGwgYmUgdWJpcXVpdG91cyBhY3Jvc3MgdGhlIGlu
ZHVzdHJ5LCBidXQKdGh1cyBmYXIgdGhpcyBoYXMgc2VlbWVkIHRvIGJlIGFuICJhbnkgZGVjYWRl
IG5vdyIga2luZCBvZiBwcm9wb3NpdGlvbiA6LwoKLVRva2UKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMu
YnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nh
a2UK
