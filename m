Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 427A75EF868
	for <lists+cake@lfdr.de>; Thu, 29 Sep 2022 17:11:36 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 0008C3CB40;
	Thu, 29 Sep 2022 11:11:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1664464294;
	bh=Q3ggOgK4lDe/R7NJjehuefpmx9VnK1e6kF1NghGVR7Y=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=ZXxs5EyT0r3kMfAYedoPqOeJoWlVPBHxf+xkroSrVraL7giKcP+ycWT2qAnofZFX2
	 o+GqHD31VpzGUcisXrwF5FUZ8S6HKSyuftRhS3iXUM15CHJ4sWEYUvKnDtr/uHTQ/b
	 ErAkOKBxlvo+381kj4TIemEIju+/YXkeo2ck+LWIlA6WLtP3jakliSStzVs4MVCSbw
	 4SwPuQNETU1JDLD8Si1tKG2FK0HOshHO2g6fsPHjhO+KfBLjQNcJLDUXngfl+2mz0G
	 WY1GNIfA9tgwALnwzWINKDcZJ2e9OiWSzBhcnVoIJ6P6g40CK7rXNsVnwmw5nEV4p1
	 0By24/v2mtF8Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 3ADEE3CB37
 for <cake@lists.bufferbloat.net>; Thu, 29 Sep 2022 11:11:32 -0400 (EDT)
Received: by mail-wr1-x42f.google.com with SMTP id x15so2191603wrv.1
 for <cake@lists.bufferbloat.net>; Thu, 29 Sep 2022 08:11:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date;
 bh=vvTrdO7kENr0+GYkT3tr1dPA6LqvdKtMtrrdwpW8VLY=;
 b=lzeBBORplS08QuZA8kxTpnAY+OQuFfl+owm7R5c3KFNUzp4fhoOxrft41CLPgWll75
 semU4nLrNG7WY/na9MRYTNS9TCqmhbuYZN/PkfGhfClFHCB2ONjtsmFCQbnd5I1Shv9L
 AP/HWin4KeHbQVr7k3yiNul1qA3DUn5f/h79QFuAxmTeuApWEZFRI05HKxH+HmhdWlj2
 GKQFFQQ+/Q9duqjztX2VXW2gMv3/SsQA3dxluV2ZmYju6UChLyZiW6b74AtMSCIEqFXn
 M6XUhkINnaRg6vK6TRv8M+5LSGvjpkicD1rfMEFeU9/KTmgItj4RF03+NqN3W11aNFHE
 R1IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date;
 bh=vvTrdO7kENr0+GYkT3tr1dPA6LqvdKtMtrrdwpW8VLY=;
 b=ytGEMUC2ZNMcYB3xqMchXfKIkzB+xFZTwOamybY76C+xTVxkrjR2Y402LH6s280qGq
 zuYPkax4TPpRKMpybhedY0pXbnT3oxCP2vzjy14U334bFOHAASCqvGduLHrsuH9UEqmx
 LvdFZe+F7B/CsBHPV+GTFhzw1MuaueR7SSNPOWnerDxEMukp3kQG7eCYR6MZmx5jBaeN
 CPzyJPnJL0px2NF3ICrKVYPC1p+Xh1ppzzSvf/3fBKZgNGeGlpgm5wjWu43YlKSJUjEe
 eSPDrhvOjLRv+gvAzwgqsSBuInxeY1gcFXdeL0fAijmMcbO5jKGKr3fcibrnGbO5Eeip
 raXQ==
X-Gm-Message-State: ACrzQf3PqiZu9VUtqjVCexg1VsF7FsJYKKd6wTQk3Z+87Vti24g1LXm+
 PhWa5jimWY90bhYZQ2KSXLd8+Z4psruSN2hVHTxP9EsV
X-Google-Smtp-Source: AMsMyM5D5DrGqphIJ+zuk1EqmNdCVnMmR3Gs/zmRAgnOa1UABCxXkfMAFBtOcYsFi6vURM+7qlPqZysb+/AFQc1kf04=
X-Received: by 2002:a05:6000:18ab:b0:22a:3b4d:3a53 with SMTP id
 b11-20020a05600018ab00b0022a3b4d3a53mr2777934wri.482.1664464290637; Thu, 29
 Sep 2022 08:11:30 -0700 (PDT)
MIME-Version: 1.0
References: <20220929142447.3821638-1-mubashirmaq@gmail.com>
 <20220929142447.3821638-2-mubashirmaq@gmail.com>
In-Reply-To: <20220929142447.3821638-2-mubashirmaq@gmail.com>
Date: Thu, 29 Sep 2022 08:11:18 -0700
Message-ID: <CAA93jw7C5HEqARkav9RTAR+ViRBs0jLUdgMEL3U7xTGitOPbmg@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] Fwd: [PATCH net-next 1/5] tcp: add sysctls for TCP PLB
	parameters
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

SSd2ZSBvZnRlbiB0aG91Z2h0IHRoYXQgdXRpbGl6aW5nIHRoZSBmbG93IGxhYmVsIGluIHRoZSBo
YXNoIHdvdWxkCmhlbHAuIEJ1dCBjb3VsZCBiZSB3cm9uZy4KCi0tLS0tLS0tLS0gRm9yd2FyZGVk
IG1lc3NhZ2UgLS0tLS0tLS0tCkZyb206IE11YmFzaGlyIEFkbmFuIFF1cmVzaGkgPG11YmFzaGly
bWFxQGdtYWlsLmNvbT4KRGF0ZTogVGh1LCBTZXAgMjksIDIwMjIgYXQgODowMiBBTQpTdWJqZWN0
OiBbUEFUQ0ggbmV0LW5leHQgMS81XSB0Y3A6IGFkZCBzeXNjdGxzIGZvciBUQ1AgUExCIHBhcmFt
ZXRlcnMKVG86IERhdmlkIE1pbGxlciA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD4KQ2M6IDxuZXRkZXZA
dmdlci5rZXJuZWwub3JnPiwgTXViYXNoaXIgQWRuYW4gUXVyZXNoaQo8bXViYXNoaXJxQGdvb2ds
ZS5jb20+LCBZdWNodW5nIENoZW5nIDx5Y2hlbmdAZ29vZ2xlLmNvbT4sIE5lYWwKQ2FyZHdlbGwg
PG5jYXJkd2VsbEBnb29nbGUuY29tPiwgRXJpYyBEdW1hemV0IDxlZHVtYXpldEBnb29nbGUuY29t
PgoKCkZyb206IE11YmFzaGlyIEFkbmFuIFF1cmVzaGkgPG11YmFzaGlycUBnb29nbGUuY29tPgoK
UExCIChQcm90ZWN0aXZlIExvYWQgQmFsYW5jaW5nKSBpcyBhIGhvc3QgYmFzZWQgbWVjaGFuaXNt
IGZvciBsb2FkCmJhbGFuY2luZyBhY3Jvc3Mgc3dpdGNoIGxpbmtzLiBJdCBsZXZlcmFnZXMgY29u
Z2VzdGlvbiBzaWduYWxzKGUuZy4gRUNOKQpmcm9tIHRyYW5zcG9ydCBsYXllciB0byByYW5kb21s
eSBjaGFuZ2UgdGhlIHBhdGggb2YgdGhlIGNvbm5lY3Rpb24KZXhwZXJpZW5jaW5nIGNvbmdlc3Rp
b24uIFBMQiBjaGFuZ2VzIHRoZSBwYXRoIG9mIHRoZSBjb25uZWN0aW9uIGJ5CmNoYW5naW5nIHRo
ZSBvdXRnb2luZyBJUHY2IGZsb3cgbGFiZWwgZm9yIElQdjYgY29ubmVjdGlvbnMgKGltcGxlbWVu
dGVkCmluIExpbnV4IGJ5IGNhbGxpbmcgc2tfcmV0aGlua190eGhhc2goKSkuIEJlY2F1c2Ugb2Yg
dGhpcyBpbXBsZW1lbnRhdGlvbgptZWNoYW5pc20sIFBMQiBjYW4gY3VycmVudGx5IG9ubHkgd29y
ayBmb3IgSVB2NiB0cmFmZmljLiBGb3IgbW9yZQppbmZvcm1hdGlvbiwgc2VlIHRoZSBTSUdDT01N
IDIwMjIgcGFwZXI6CiAgaHR0cHM6Ly9kb2kub3JnLzEwLjExNDUvMzU0NDIxNi4zNTQ0MjI2CgpU
aGlzIGNvbW1pdCBhZGRzIG5ldyBzeXNjdGwga25vYnMgYW5kIHNldHMgdGhlaXIgZGVmYXVsdCB2
YWx1ZXMgZm9yClRDUCBQTEIuCgpTaWduZWQtb2ZmLWJ5OiBNdWJhc2hpciBBZG5hbiBRdXJlc2hp
IDxtdWJhc2hpcnFAZ29vZ2xlLmNvbT4KU2lnbmVkLW9mZi1ieTogWXVjaHVuZyBDaGVuZyA8eWNo
ZW5nQGdvb2dsZS5jb20+ClNpZ25lZC1vZmYtYnk6IE5lYWwgQ2FyZHdlbGwgPG5jYXJkd2VsbEBn
b29nbGUuY29tPgpSZXZpZXdlZC1ieTogRXJpYyBEdW1hemV0IDxlZHVtYXpldEBnb29nbGUuY29t
PgotLS0KIERvY3VtZW50YXRpb24vbmV0d29ya2luZy9pcC1zeXNjdGwucnN0IHwgNzUgKysrKysr
KysrKysrKysrKysrKysrKysrKysKIGluY2x1ZGUvbmV0L25ldG5zL2lwdjQuaCAgICAgICAgICAg
ICAgIHwgIDUgKysKIG5ldC9pcHY0L3N5c2N0bF9uZXRfaXB2NC5jICAgICAgICAgICAgIHwgNDMg
KysrKysrKysrKysrKysrCiBuZXQvaXB2NC90Y3BfaXB2NC5jICAgICAgICAgICAgICAgICAgICB8
ICA4ICsrKwogNCBmaWxlcyBjaGFuZ2VkLCAxMzEgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBh
L0RvY3VtZW50YXRpb24vbmV0d29ya2luZy9pcC1zeXNjdGwucnN0CmIvRG9jdW1lbnRhdGlvbi9u
ZXR3b3JraW5nL2lwLXN5c2N0bC5yc3QKaW5kZXggZTdiM2ZhN2JiM2Y3Li44MTVlZmM4OWFkNzMg
MTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vbmV0d29ya2luZy9pcC1zeXNjdGwucnN0CisrKyBi
L0RvY3VtZW50YXRpb24vbmV0d29ya2luZy9pcC1zeXNjdGwucnN0CkBAIC0xMDY5LDYgKzEwNjks
ODEgQEAgdGNwX2NoaWxkX2VoYXNoX2VudHJpZXMgLSBJTlRFR0VSCgogICAgICAgIERlZmF1bHQ6
IDAKCit0Y3BfcGxiX2VuYWJsZWQgLSBCT09MRUFOCisgICAgICAgSWYgc2V0IGFuZCB0aGUgdW5k
ZXJseWluZyBjb25nZXN0aW9uIGNvbnRyb2wgKGUuZy4gRENUQ1ApIHN1cHBvcnRzCisgICAgICAg
YW5kIGVuYWJsZXMgUExCIGZlYXR1cmUsIFRDUCBQTEIgKFByb3RlY3RpdmUgTG9hZCBCYWxhbmNp
bmcpIGlzCisgICAgICAgZW5hYmxlZC4gUExCIGlzIGRlc2NyaWJlZCBpbiB0aGUgZm9sbG93aW5n
IHBhcGVyOgorICAgICAgIGh0dHBzOi8vZG9pLm9yZy8xMC4xMTQ1LzM1NDQyMTYuMzU0NDIyNi4g
QmFzZWQgb24gUExCIHBhcmFtZXRlcnMsCisgICAgICAgdXBvbiBzZW5zaW5nIHN1c3RhaW5lZCBj
b25nZXN0aW9uLCBUQ1AgdHJpZ2dlcnMgYSBjaGFuZ2UgaW4KKyAgICAgICBmbG93IGxhYmVsIGZp
ZWxkIGZvciBvdXRnb2luZyBJUHY2IHBhY2tldHMuIEEgY2hhbmdlIGluIGZsb3cgbGFiZWwKKyAg
ICAgICBmaWVsZCBwb3RlbnRpYWxseSBjaGFuZ2VzIHRoZSBwYXRoIG9mIG91dGdvaW5nIHBhY2tl
dHMgZm9yIHN3aXRjaGVzCisgICAgICAgdGhhdCB1c2UgRUNNUC9XQ01QIGZvciByb3V0aW5nLgor
CisgICAgICAgUExCIGNoYW5nZXMgc29ja2V0IHR4aGFzaCB3aGljaCByZXN1bHRzIGluIGEgY2hh
bmdlIGluIElQdjYgRmxvdyBMYWJlbAorICAgICAgIGZpZWxkLCBhbmQgY3VycmVudGx5IG5vLW9w
IGZvciBJUHY0IGhlYWRlcnMuIEl0IGlzIHBvc3NpYmxlCisgICAgICAgdG8gYXBwbHkgUExCIGZv
ciBJUHY0IHdpdGggb3RoZXIgbmV0d29yayBoZWFkZXIgZmllbGRzIChlLmcuIFRDUAorICAgICAg
IG9yIElQdjQgb3B0aW9ucykgb3IgdXNpbmcgZW5jYXBzdWxhdGlvbiB3aGVyZSBvdXRlciBoZWFk
ZXIgaXMgdXNlZAorICAgICAgIGJ5IHN3aXRjaGVzIHRvIGRldGVybWluZSBuZXh0IGhvcC4gSW4g
ZWl0aGVyIGNhc2UsIGZ1cnRoZXIgaG9zdAorICAgICAgIGFuZCBzd2l0Y2ggc2lkZSBjaGFuZ2Vz
IHdpbGwgYmUgbmVlZGVkLgorCisgICAgICAgV2hlbiBzZXQsIFBMQiBhc3N1bWVzIHRoYXQgY29u
Z2VzdGlvbiBzaWduYWwgKGUuZy4gRUNOKSBpcyBtYWRlCisgICAgICAgYXZhaWxhYmxlIGFuZCB1
c2VkIGJ5IGNvbmdlc3Rpb24gY29udHJvbCBtb2R1bGUgdG8gZXN0aW1hdGUgYQorICAgICAgIGNv
bmdlc3Rpb24gbWVhc3VyZSAoZS5nLiBjZV9yYXRpbykuIFBMQiBuZWVkcyBhIGNvbmdlc3Rpb24g
bWVhc3VyZSB0bworICAgICAgIG1ha2UgcmVwYXRoaW5nIGRlY2lzaW9ucy4KKworICAgICAgIERl
ZmF1bHQ6IEZBTFNFCisKK3RjcF9wbGJfaWRsZV9yZWhhc2hfcm91bmRzIC0gSU5URUdFUgorICAg
ICAgIE51bWJlciBvZiBjb25zZWN1dGl2ZSBjb25nZXN0ZWQgcm91bmRzIChSVFQpIHNlZW4gYWZ0
ZXIgd2hpY2gKKyAgICAgICBhIHJlaGFzaCBjYW4gYmUgcGVyZm9ybWVkLCBnaXZlbiB0aGVyZSBh
cmUgbm8gcGFja2V0cyBpbiBmbGlnaHQuCisgICAgICAgVGhpcyBpcyByZWZlcnJlZCB0byBhcyBN
IGluIFBMQiBwYXBlcjoKKyAgICAgICBodHRwczovL2RvaS5vcmcvMTAuMTE0NS8zNTQ0MjE2LjM1
NDQyMjYuCisKKyAgICAgICBQb3NzaWJsZSBWYWx1ZXM6IDAgLSAzMQorCisgICAgICAgRGVmYXVs
dDogMworCit0Y3BfcGxiX3JlaGFzaF9yb3VuZHMgLSBJTlRFR0VSCisgICAgICAgTnVtYmVyIG9m
IGNvbnNlY3V0aXZlIGNvbmdlc3RlZCByb3VuZHMgKFJUVCkgc2VlbiBhZnRlciB3aGljaAorICAg
ICAgIGEgZm9yY2VkIHJlaGFzaCBjYW4gYmUgcGVyZm9ybWVkLiBCZSBjYXJlZnVsIHdoZW4gc2V0
dGluZyB0aGlzCisgICAgICAgcGFyYW1ldGVyLCBhcyBhIHNtYWxsIHZhbHVlIGluY3JlYXNlcyB0
aGUgcmlzayBvZiByZXRyYW5zbWlzc2lvbnMuCisgICAgICAgVGhpcyBpcyByZWZlcnJlZCB0byBh
cyBOIGluIFBMQiBwYXBlcjoKKyAgICAgICBodHRwczovL2RvaS5vcmcvMTAuMTE0NS8zNTQ0MjE2
LjM1NDQyMjYuCisKKyAgICAgICBQb3NzaWJsZSBWYWx1ZXM6IDAgLSAzMQorCisgICAgICAgRGVm
YXVsdDogMTIKKwordGNwX3BsYl9zdXNwZW5kX3J0b19zZWMgLSBJTlRFR0VSCisgICAgICAgVGlt
ZSwgaW4gc2Vjb25kcywgdG8gc3VzcGVuZCBQTEIgaW4gZXZlbnQgb2YgYW4gUlRPLiBJbiBvcmRl
ciB0byBhdm9pZAorICAgICAgIGhhdmluZyBQTEIgcmVwYXRoIG9udG8gYSBjb25uZWN0aXZpdHkg
ImJsYWNrIGhvbGUiLCBhZnRlciBhbiBSVE8gYSBUQ1AKKyAgICAgICBjb25uZWN0aW9uIHN1c3Bl
bmRzIFBMQiByZXBhdGhpbmcgZm9yIGEgcmFuZG9tIGR1cmF0aW9uIGJldHdlZW4gMXggYW5kCisg
ICAgICAgMnggb2YgdGhpcyBwYXJhbWV0ZXIuIFJhbmRvbW5lc3MgaXMgYWRkZWQgdG8gYXZvaWQg
Y29uY3VycmVudCByZWhhc2hpbmcKKyAgICAgICBvZiBtdWx0aXBsZSBUQ1AgY29ubmVjdGlvbnMu
IFRoaXMgc2hvdWxkIGJlIHNldCBjb3JyZXNwb25kaW5nIHRvIHRoZQorICAgICAgIGFtb3VudCBv
ZiB0aW1lIGl0IHRha2VzIHRvIHJlcGFpciBhIGZhaWxlZCBsaW5rLgorCisgICAgICAgUG9zc2li
bGUgVmFsdWVzOiAwIC0gMjU1CisKKyAgICAgICBEZWZhdWx0OiA2MAorCit0Y3BfcGxiX2Nvbmdf
dGhyZXNoIC0gSU5URUdFUgorICAgICAgIEZyYWN0aW9uIG9mIHBhY2tldHMgbWFya2VkIHdpdGgg
Y29uZ2VzdGlvbiBvdmVyIGEgcm91bmQgKFJUVCkgdG8KKyAgICAgICB0YWcgdGhhdCByb3VuZCBh
cyBjb25nZXN0ZWQuIFRoaXMgaXMgcmVmZXJyZWQgdG8gYXMgSyBpbiB0aGUgUExCIHBhcGVyOgor
ICAgICAgIGh0dHBzOi8vZG9pLm9yZy8xMC4xMTQ1LzM1NDQyMTYuMzU0NDIyNi4KKworICAgICAg
IFRoZSAwLTEgZnJhY3Rpb24gcmFuZ2UgaXMgbWFwcGVkIHRvIDAtMjU2IHJhbmdlIHRvIGF2b2lk
IGZsb2F0aW5nCisgICAgICAgcG9pbnQgb3BlcmF0aW9ucy4gRm9yIGV4YW1wbGUsIDEyOCBtZWFu
cyB0aGF0IGlmIGF0IGxlYXN0IDUwJSBvZgorICAgICAgIHRoZSBwYWNrZXRzIGluIGEgcm91bmQg
d2VyZSBtYXJrZWQgYXMgY29uZ2VzdGVkIHRoZW4gdGhlIHJvdW5kCisgICAgICAgd2lsbCBiZSB0
YWdnZWQgYXMgY29uZ2VzdGVkLgorCisgICAgICAgU2V0dGluZyB0aHJlc2hvbGQgdG8gMCBtZWFu
cyB0aGF0IFBMQiByZXBhdGhzIGV2ZXJ5IFJUVCByZWdhcmRsZXNzCisgICAgICAgb2YgY29uZ2Vz
dGlvbi4gVGhpcyBpcyBub3QgaW50ZW5kZWQgYmVoYXZpb3IgZm9yIFBMQiBhbmQgc2hvdWxkIGJl
CisgICAgICAgdXNlZCBvbmx5IGZvciBleHBlcmltZW50YXRpb24gcHVycG9zZS4KKworICAgICAg
IFBvc3NpYmxlIFZhbHVlczogMCAtIDI1NgorCisgICAgICAgRGVmYXVsdDogMTI4CisKIFVEUCB2
YXJpYWJsZXMKID09PT09PT09PT09PT0KCmRpZmYgLS1naXQgYS9pbmNsdWRlL25ldC9uZXRucy9p
cHY0LmggYi9pbmNsdWRlL25ldC9uZXRucy9pcHY0LmgKaW5kZXggMWI4MDA0Njc5NDQ1Li4yNWY5
MGJiYTQ4ODkgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbmV0L25ldG5zL2lwdjQuaAorKysgYi9pbmNs
dWRlL25ldC9uZXRucy9pcHY0LmgKQEAgLTE4Myw2ICsxODMsMTEgQEAgc3RydWN0IG5ldG5zX2lw
djQgewogICAgICAgIHVuc2lnbmVkIGxvbmcgdGZvX2FjdGl2ZV9kaXNhYmxlX3N0YW1wOwogICAg
ICAgIHUzMiB0Y3BfY2hhbGxlbmdlX3RpbWVzdGFtcDsKICAgICAgICB1MzIgdGNwX2NoYWxsZW5n
ZV9jb3VudDsKKyAgICAgICB1OCBzeXNjdGxfdGNwX3BsYl9lbmFibGVkOworICAgICAgIHU4IHN5
c2N0bF90Y3BfcGxiX2lkbGVfcmVoYXNoX3JvdW5kczsKKyAgICAgICB1OCBzeXNjdGxfdGNwX3Bs
Yl9yZWhhc2hfcm91bmRzOworICAgICAgIHU4IHN5c2N0bF90Y3BfcGxiX3N1c3BlbmRfcnRvX3Nl
YzsKKyAgICAgICBpbnQgc3lzY3RsX3RjcF9wbGJfY29uZ190aHJlc2g7CgogICAgICAgIGludCBz
eXNjdGxfdWRwX3dtZW1fbWluOwogICAgICAgIGludCBzeXNjdGxfdWRwX3JtZW1fbWluOwpkaWZm
IC0tZ2l0IGEvbmV0L2lwdjQvc3lzY3RsX25ldF9pcHY0LmMgYi9uZXQvaXB2NC9zeXNjdGxfbmV0
X2lwdjQuYwppbmRleCA5YjhhNmRiN2E2NmIuLjBhZjI4Y2VkZDA3MSAxMDA2NDQKLS0tIGEvbmV0
L2lwdjQvc3lzY3RsX25ldF9pcHY0LmMKKysrIGIvbmV0L2lwdjQvc3lzY3RsX25ldF9pcHY0LmMK
QEAgLTQwLDYgKzQwLDggQEAgc3RhdGljIGludCBvbmVfZGF5X3NlY3MgPSAyNCAqIDM2MDA7CiBz
dGF0aWMgdTMyIGZpYl9tdWx0aXBhdGhfaGFzaF9maWVsZHNfYWxsX21hc2sgX19tYXliZV91bnVz
ZWQgPQogICAgICAgIEZJQl9NVUxUSVBBVEhfSEFTSF9GSUVMRF9BTExfTUFTSzsKIHN0YXRpYyB1
bnNpZ25lZCBpbnQgdGNwX2NoaWxkX2VoYXNoX2VudHJpZXNfbWF4ID0gMTYgKiAxMDI0ICogMTAy
NDsKK3N0YXRpYyBpbnQgdGNwX3BsYl9tYXhfcm91bmRzID0gMzE7CitzdGF0aWMgaW50IHRjcF9w
bGJfbWF4X2NvbmdfdGhyZXNoID0gMjU2OwoKIC8qIG9ic29sZXRlICovCiBzdGF0aWMgaW50IHN5
c2N0bF90Y3BfbG93X2xhdGVuY3kgX19yZWFkX21vc3RseTsKQEAgLTEzODQsNiArMTM4Niw0NyBA
QCBzdGF0aWMgc3RydWN0IGN0bF90YWJsZSBpcHY0X25ldF90YWJsZVtdID0gewogICAgICAgICAg
ICAgICAgLmV4dHJhMSAgICAgICAgID0gU1lTQ1RMX1pFUk8sCiAgICAgICAgICAgICAgICAuZXh0
cmEyICAgICAgICAgPSBTWVNDVExfVFdPLAogICAgICAgIH0sCisgICAgICAgeworICAgICAgICAg
ICAgICAgLnByb2NuYW1lICAgICAgID0gInRjcF9wbGJfZW5hYmxlZCIsCisgICAgICAgICAgICAg
ICAuZGF0YSAgICAgICAgICAgPSAmaW5pdF9uZXQuaXB2NC5zeXNjdGxfdGNwX3BsYl9lbmFibGVk
LAorICAgICAgICAgICAgICAgLm1heGxlbiAgICAgICAgID0gc2l6ZW9mKHU4KSwKKyAgICAgICAg
ICAgICAgIC5tb2RlICAgICAgICAgICA9IDA2NDQsCisgICAgICAgICAgICAgICAucHJvY19oYW5k
bGVyICAgPSBwcm9jX2RvdTh2ZWNfbWlubWF4LAorICAgICAgICAgICAgICAgLmV4dHJhMSAgICAg
ICAgID0gU1lTQ1RMX1pFUk8sCisgICAgICAgICAgICAgICAuZXh0cmEyICAgICAgICAgPSBTWVND
VExfT05FLAorICAgICAgIH0sCisgICAgICAgeworICAgICAgICAgICAgICAgLnByb2NuYW1lICAg
ICAgID0gInRjcF9wbGJfaWRsZV9yZWhhc2hfcm91bmRzIiwKKyAgICAgICAgICAgICAgIC5kYXRh
ICAgICAgICAgICA9CiZpbml0X25ldC5pcHY0LnN5c2N0bF90Y3BfcGxiX2lkbGVfcmVoYXNoX3Jv
dW5kcywKKyAgICAgICAgICAgICAgIC5tYXhsZW4gICAgICAgICA9IHNpemVvZih1OCksCisgICAg
ICAgICAgICAgICAubW9kZSAgICAgICAgICAgPSAwNjQ0LAorICAgICAgICAgICAgICAgLnByb2Nf
aGFuZGxlciAgID0gcHJvY19kb3U4dmVjX21pbm1heCwKKyAgICAgICAgICAgICAgIC5leHRyYTIg
ICAgICAgICA9ICZ0Y3BfcGxiX21heF9yb3VuZHMsCisgICAgICAgfSwKKyAgICAgICB7CisgICAg
ICAgICAgICAgICAucHJvY25hbWUgICAgICAgPSAidGNwX3BsYl9yZWhhc2hfcm91bmRzIiwKKyAg
ICAgICAgICAgICAgIC5kYXRhICAgICAgICAgICA9ICZpbml0X25ldC5pcHY0LnN5c2N0bF90Y3Bf
cGxiX3JlaGFzaF9yb3VuZHMsCisgICAgICAgICAgICAgICAubWF4bGVuICAgICAgICAgPSBzaXpl
b2YodTgpLAorICAgICAgICAgICAgICAgLm1vZGUgICAgICAgICAgID0gMDY0NCwKKyAgICAgICAg
ICAgICAgIC5wcm9jX2hhbmRsZXIgICA9IHByb2NfZG91OHZlY19taW5tYXgsCisgICAgICAgICAg
ICAgICAuZXh0cmEyICAgICAgICAgPSAmdGNwX3BsYl9tYXhfcm91bmRzLAorICAgICAgIH0sCisg
ICAgICAgeworICAgICAgICAgICAgICAgLnByb2NuYW1lICAgICAgID0gInRjcF9wbGJfc3VzcGVu
ZF9ydG9fc2VjIiwKKyAgICAgICAgICAgICAgIC5kYXRhICAgICAgICAgICA9ICZpbml0X25ldC5p
cHY0LnN5c2N0bF90Y3BfcGxiX3N1c3BlbmRfcnRvX3NlYywKKyAgICAgICAgICAgICAgIC5tYXhs
ZW4gICAgICAgICA9IHNpemVvZih1OCksCisgICAgICAgICAgICAgICAubW9kZSAgICAgICAgICAg
PSAwNjQ0LAorICAgICAgICAgICAgICAgLnByb2NfaGFuZGxlciAgID0gcHJvY19kb3U4dmVjX21p
bm1heCwKKyAgICAgICB9LAorICAgICAgIHsKKyAgICAgICAgICAgICAgIC5wcm9jbmFtZSAgICAg
ICA9ICJ0Y3BfcGxiX2NvbmdfdGhyZXNoIiwKKyAgICAgICAgICAgICAgIC5kYXRhICAgICAgICAg
ICA9ICZpbml0X25ldC5pcHY0LnN5c2N0bF90Y3BfcGxiX2NvbmdfdGhyZXNoLAorICAgICAgICAg
ICAgICAgLm1heGxlbiAgICAgICAgID0gc2l6ZW9mKGludCksCisgICAgICAgICAgICAgICAubW9k
ZSAgICAgICAgICAgPSAwNjQ0LAorICAgICAgICAgICAgICAgLnByb2NfaGFuZGxlciAgID0gcHJv
Y19kb2ludHZlY19taW5tYXgsCisgICAgICAgICAgICAgICAuZXh0cmExICAgICAgICAgPSBTWVND
VExfWkVSTywKKyAgICAgICAgICAgICAgIC5leHRyYTIgICAgICAgICA9ICZ0Y3BfcGxiX21heF9j
b25nX3RocmVzaCwKKyAgICAgICB9LAogICAgICAgIHsgfQogfTsKCmRpZmYgLS1naXQgYS9uZXQv
aXB2NC90Y3BfaXB2NC5jIGIvbmV0L2lwdjQvdGNwX2lwdjQuYwppbmRleCA2Mzc2YWQ5MTU3NjUu
LjNiMjM0MTBhM2FlYSAxMDA2NDQKLS0tIGEvbmV0L2lwdjQvdGNwX2lwdjQuYworKysgYi9uZXQv
aXB2NC90Y3BfaXB2NC5jCkBAIC0zMjE2LDYgKzMyMTYsMTQgQEAgc3RhdGljIGludCBfX25ldF9p
bml0IHRjcF9za19pbml0KHN0cnVjdCBuZXQgKm5ldCkKICAgICAgICBuZXQtPmlwdjQuc3lzY3Rs
X3RjcF9mYXN0b3Blbl9ibGFja2hvbGVfdGltZW91dCA9IDA7CiAgICAgICAgYXRvbWljX3NldCgm
bmV0LT5pcHY0LnRmb19hY3RpdmVfZGlzYWJsZV90aW1lcywgMCk7CgorICAgICAgIC8qIFNldCBk
ZWZhdWx0IHZhbHVlcyBmb3IgUExCICovCisgICAgICAgbmV0LT5pcHY0LnN5c2N0bF90Y3BfcGxi
X2VuYWJsZWQgPSAwOyAvKiBEaXNhYmxlZCBieSBkZWZhdWx0ICovCisgICAgICAgbmV0LT5pcHY0
LnN5c2N0bF90Y3BfcGxiX2lkbGVfcmVoYXNoX3JvdW5kcyA9IDM7CisgICAgICAgbmV0LT5pcHY0
LnN5c2N0bF90Y3BfcGxiX3JlaGFzaF9yb3VuZHMgPSAxMjsKKyAgICAgICBuZXQtPmlwdjQuc3lz
Y3RsX3RjcF9wbGJfc3VzcGVuZF9ydG9fc2VjID0gNjA7CisgICAgICAgLyogRGVmYXVsdCBjb25n
ZXN0aW9uIHRocmVzaG9sZCBmb3IgUExCIHRvIG1hcmsgYSByb3VuZCBpcyA1MCUgKi8KKyAgICAg
ICBuZXQtPmlwdjQuc3lzY3RsX3RjcF9wbGJfY29uZ190aHJlc2ggPSAoMSA8PCBUQ1BfUExCX1ND
QUxFKSAvIDI7CisKICAgICAgICAvKiBSZW5vIGlzIGFsd2F5cyBidWlsdCBpbiAqLwogICAgICAg
IGlmICghbmV0X2VxKG5ldCwgJmluaXRfbmV0KSAmJgogICAgICAgICAgICBicGZfdHJ5X21vZHVs
ZV9nZXQoaW5pdF9uZXQuaXB2NC50Y3BfY29uZ2VzdGlvbl9jb250cm9sLAotLQoyLjM3LjMuOTk4
Lmc1NzdlNTkxNDNmLWdvb2cKCgoKLS0gCkZRIFdvcmxkIERvbWluYXRpb24gcGVuZGluZzogaHR0
cHM6Ly9ibG9nLmNlcm93cnQub3JnL3Bvc3Qvc3RhdGVfb2ZfZnFfY29kZWwvCkRhdmUgVMOkaHQg
Q0VPLCBUZWtMaWJyZSwgTExDCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0
dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
