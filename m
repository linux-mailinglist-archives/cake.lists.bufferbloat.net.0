Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D8131618D2B
	for <lists+cake@lfdr.de>; Fri,  4 Nov 2022 01:22:17 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6EE503CB41;
	Thu,  3 Nov 2022 20:22:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1667521335;
	bh=dGvofVIKAs5F+dVW7k9S5B9gb/WUOn7JTC5y8KlG+40=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=ELyjtsHes+904Uz1eFXK3fvHS5UVlUbcoEgbqy+RtSgCHIW7G+h3/MuIlA+/Prei0
	 P6SI3MeWrLpGd5anMhRIKTEBQlDllowcsU24At5xpYCtQUQg843+LQROThfmk/Bj5/
	 /O9vEk/0ZPxK53W0+6SNbhr2VvC7Z3LAeNqZI2+pM5jAQupASJd0PMbIayBIHq7CpT
	 hq/su3+Hqi3j3p+xNw95f4b2JZbGpuggtPoCCTgzamrhoMLLZ6k9uvd8mS/y1dd9a9
	 hKqvShK7io+xWH7Uu8bWk4IFqgsOe6HJpKR8Q0bn9orKpL0Uqioc6ldLEwjt/ogj8+
	 tfFzjFdAHn5hQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id AB9803B2A4
 for <cake@lists.bufferbloat.net>; Thu,  3 Nov 2022 20:22:13 -0400 (EDT)
Received: by mail-wr1-x42d.google.com with SMTP id o4so4994832wrq.6
 for <cake@lists.bufferbloat.net>; Thu, 03 Nov 2022 17:22:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=oS3qtU24aY9hKO7IKJrrDGIxnbp2DhyEUxBM59OdpBo=;
 b=bHX57E0u8dSqiY1OZAYT6Wgd05hQcjkEiWbgrdSTdLJTf8RVykZC4mOJGmubgobF8h
 gUF/QgbojhlJ3OHhXWga8iHFBF2LdQhf0R4kD4V4lzbUiVmgxbUYuxuSG7UQYUKYlJ8n
 1fJkRwVVHatvBG4kEQkpn46hgbb1eN20BnrhQCasd5ZlnDxe9VFPKAJjd3sZOTzyYzP7
 QzzM07eyiOk4L4HGbqkD9Xpvy+3ADiLNHa9eyCVoS7jJ0J9YDY3wgHTSNNsh5cZnJW+0
 tD75t0YwtAZXZ8ohEFD/UD9nCvJqQrcZtDGl//MLHPxHlgAJzPoW+ZjdvQDnsTsh5vJi
 3W6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=oS3qtU24aY9hKO7IKJrrDGIxnbp2DhyEUxBM59OdpBo=;
 b=1v6C6UHGf5OsvQij5myHLSEhOSuUb1RNKRaNXuPSwijSK5uCpUtK6qwQHdhAr8soVE
 DfpBLREOUD7JkI/ve1TXo5abWx41Vm2C60TQfQXGc3LZkCRmrbH3GHk04TC0ZX1Nc6h+
 7BEVDu3X2zEl+PEDiHO8sG9ejXSmDGZ0PucrVy6XgVyxz7GxPNAyCt7RFwZMRFD+Zdv5
 lu48BgNYa0ZyxSXA7ylRFw1RDlekz7BLVOArgaAKQ5IXa5ChA2bMCk0xFLY+OO1tZeke
 Asxhd1fKCZ/rdImi+55pjv5yzvkzEoCOfeq4zwhdM25bkBBDKOPxWE6uJP8UDPFN2AwR
 LvAQ==
X-Gm-Message-State: ACrzQf2//vjGwI/UnZnmy6wg/UbSvI2y9KmH1po7O0uabf6DQZO+xlph
 y5MFvC9m//ek8YCqmIjzq1dFTEgiV5UhQYSwr9aOQbhmtvY=
X-Google-Smtp-Source: AMsMyM4T2M1aKv8iilV/8i/7FMrJ1LCQG4PeCmK1J5Ghbv54a9HDPQ74VJwyAPP76D7yPdyrRARScXlmoZzKEPYsa3M=
X-Received: by 2002:adf:f352:0:b0:236:ba3a:d58e with SMTP id
 e18-20020adff352000000b00236ba3ad58emr18342564wrp.430.1667521332048; Thu, 03
 Nov 2022 17:22:12 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 3 Nov 2022 17:22:00 -0700
Message-ID: <CAA93jw7z1uw-_usjzNmHP9-e1MvFwWFsPJeALaZQD0m9v+qpzg@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] cambium QoE sure looks like cake
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RnJvbToKCmh0dHBzOi8vd3d3LmNhbWJpdW1uZXR3b3Jrcy5jb20vcHJvZHVjdHMvYWR2YW5jZWQt
c2VydmljZXMvcXVhbGl0eS1vZi1leHBlcmllbmNlLwoKIkNhbWJpdW0gUW9FIHBsYXRmb3JtIGFs
bG93cyB5b3UgdG8gZW5mb3JjZSBiYW5kd2lkdGggbGltaXRhdGlvbnMgaW4gYQpmbGV4aWJsZSBh
bmQgZWNvbm9taWNhbCB3YXksIHdpdGggdGhlIG1vc3QgYWR2YW5jZWQgcXVldWVpbmcKdGVjaG5v
bG9neSBpbiB0aGUgbWFya2V0LCB3aGljaCB3aWxsIGRlbGl2ZXIgdGhlIGJlc3QgcG9zc2libGUg
UXVhbGl0eQpvZiBTZXJ2aWNlIChRb1MpIGFuZCBRdWFsaXR5IG9mIEV4cGVyaWVuY2UgKFFvRSku
CgpXaGVuIHNwZWVkIGlzIGxpbWl0ZWQsIG5ldHdvcmsgcGFja2V0cyBtdXN0IHdhaXQgaW4gcXVl
dWVzIHRvIGJlCmRlbGl2ZXJlZCwgd2hpY2ggaW5jcmVhc2VzIG5ldHdvcmsgbGF0ZW5jeSBhbmQg
Y2FuIGNyZWF0ZSBwYWNrZXQKbG9zc2VzLiBBcyBhIHJlc3VsdCwgdGhlIG5ldHdvcmsgUXVhbGl0
eSBvZiBFeHBlcmllbmNlIG1heSBiZSBzZXZlcmVseQpkZWdyYWRlZCwgZXNwZWNpYWxseSBmb3Ig
aW50ZXJhY3RpdmUgYXBwbGljYXRpb25zLCBsaWtlIG9uLWxpbmUgZ2FtZXMKYW5kIHRlbGVjb25m
ZXJlbmNlcywgd2hpY2ggYXJlIHZlcnkgc2Vuc2l0aXZlIHRvIGxhdGVuY3kgYW5kIGxvc3Nlcy4K
Ck91ciB1bmlxdWUgbXVsdGktcXVldWUgdGVjaG5vbG9neSBndWFyYW50ZWVzIGFuIGluZGVwZW5k
ZW50IHF1ZXVlIGZvcgplYWNoIGNvbm5lY3Rpb24sIHdpdGhvdXQgYW55IHNoYXJpbmcgKHVubGlr
ZSBjb21wZXRpbmcgc29sdXRpb25zKS4KTXVsdGlwbGUgaW5kZXBlbmRlbnQgcXVldWVzIGVuc3Vy
ZSB0aGF0IGludGVyYWN0aXZlIGRhdGEgZG8gbm90IGhhdmUKdG8gd2FpdCBpbiBxdWV1ZXMgd2l0
aCBoZWF2eSB0cmFmZmljLCBsaWtlIHZpZGVvIHN0cmVhbWluZy4gTW9yZW92ZXIsCmludGVyYWN0
aXZlIHF1ZXVlcyBhcmUgcHJpb3JpdGl6ZWQuIEluIHRoaXMgd2F5LCBpbnRlcmFjdGl2ZQphcHBs
aWNhdGlvbnMgd2lsbCBub3Qgbm90aWNlIHRoZSByYXRlIGxpbWl0YXRpb24sIGV2ZW4gaW4gY29u
Z2VzdGlvbgpzaXR1YXRpb25zLiIKCkkgZG8gaG9wZSB0aGV5IGFyZSBrZWVwaW5nIHRyYWNrIG9m
IGRyb3AgQU5EIG1hcmsgc3RhdGlzdGljcy4uLgoKLS0gClRoaXMgc29uZyBnb2VzIG91dCB0byBh
bGwgdGhlIGZvbGsgdGhhdCB0aG91Z2h0IFN0YWRpYSB3b3VsZCB3b3JrOgpodHRwczovL3d3dy5s
aW5rZWRpbi5jb20vcG9zdHMvZHRhaHRfdGhlLW11c2hyb29tLXNvbmctYWN0aXZpdHktNjk4MTM2
NjY2NTYwNzM1MjMyMC1GWHR6CkRhdmUgVMOkaHQgQ0VPLCBUZWtMaWJyZSwgTExDCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0
CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0
L2xpc3RpbmZvL2Nha2UK
