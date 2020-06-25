Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C7F20A664
	for <lists+cake@lfdr.de>; Thu, 25 Jun 2020 22:12:15 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id E8AC73CB42;
	Thu, 25 Jun 2020 16:12:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1593115933;
	bh=ahki1eCedBStSj0UeAWKhIfqTgAz8rIDVJ2jEBng6ys=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YiiIsEFBrBszyRptTsGK1tdwnOwYANOP+f/y6/iATOG6XHKvsH/fTBaoez/uTzBrl
	 wol/NvVSbjmIHJ5DTQuxnK3fJYlTzqD5ligF0HYeN0Rz9KBzt5WzJKa3L1tRC7QIqj
	 hisDTKdXU6TyTh4EzSzQeXParcCiZXgoc8sWEmCA2DiCZ4W+P/vNINKyoLwt5uBbC5
	 Bhh+nVjfCdHySgzSmG08MLut7dlpj/z3odt5aEYyLCnlW0bZJuRPXRB5ZsiZotegcS
	 ut83HkDMKUhfK2u0PzSpMjMfb99M9ryvLh5zi9xuagC8E5MeM/FbNaRvHzQDZfa4ul
	 968iGAZGcbqrg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 8C9F53B29D
 for <cake@lists.bufferbloat.net>; Thu, 25 Jun 2020 16:12:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1593115932;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=mN7Y1KGa2J2xgeNCzqBVm8zM5KlsQKQcbLdGW8o5Jko=;
 b=BVE82JE3D8z+tCPl2DgQIk4FxJhCv4BvNYiAWyRNzYOGwaObXNz6D9IQ+qev7ybzWrJc8U
 lYJiAvDG6JqRmTs9YwnBwV4w49ZkYaQC67EkdVDSAc6v9P6jCeZaU8VcUfzlIuL05Glomy
 Tdpwk8qs/HDHfl6Y4bBtrifTu9rFXgQ=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-96-kZwNxgIrPiCs-3jll10ILg-1; Thu, 25 Jun 2020 16:12:10 -0400
X-MC-Unique: kZwNxgIrPiCs-3jll10ILg-1
Received: by mail-ed1-f71.google.com with SMTP id m12so4714839edv.3
 for <cake@lists.bufferbloat.net>; Thu, 25 Jun 2020 13:12:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=mN7Y1KGa2J2xgeNCzqBVm8zM5KlsQKQcbLdGW8o5Jko=;
 b=oViu2KH2MXXQrFr6XX7f3Q2sISUd57CaNDY5Bj/P2KRhCERZFUYMl1NHjMtj49XjLD
 AnBRKIiGQI8gIqAiL+3Gs9F8JbgEcQJ5oLYOg2lMpvwEEm9kxO3gRwp3yHaW4s+aeskv
 s0BOi7+gKtPpZPFjw7j8LcDkV2e9J9BQdFcU/c5a6jiG/S0Ph11b2qO6MQ++/vf0jhKs
 X4FTY37TOE73G4sAYufrz7/5Uj/KhNQFSwgDeP3IYDOkx9YsHePtN4+E76MmrgaRRQ8D
 czWJcsL2dz/F9H6vbrHbndfxdPDYpRj6OSeKHvnqJpG+k0/2vRQsJLbPxEiTV9xgv+Pw
 Rggw==
X-Gm-Message-State: AOAM533DCrhmpidmVyzmQJNeoqg9hp2/6nQg4NB22aM2mJlzBX01BSP6
 dOMEWOrKzTzH2rU9PqfaKqsrOBn/uBXUkC+rqM6qiHbpD9zJf8gNJHmaSlVFVky/KQG52t/olU4
 PpKix/1ftTOpXwDRvy+9DhQ==
X-Received: by 2002:aa7:c407:: with SMTP id j7mr14112609edq.96.1593115928929; 
 Thu, 25 Jun 2020 13:12:08 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyp7QvmjJwBiH/dfiy9QdMEtZMuD1OjwUyOp8+bCFpFIw2UNiSUMdidP3us9YRTOpD6oHnF9Q==
X-Received: by 2002:aa7:c407:: with SMTP id j7mr14112592edq.96.1593115928709; 
 Thu, 25 Jun 2020 13:12:08 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id f1sm18891018edn.66.2020.06.25.13.12.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Jun 2020 13:12:07 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 38F591814FA; Thu, 25 Jun 2020 22:12:07 +0200 (CEST)
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: David Miller <davem@davemloft.net>
Date: Thu, 25 Jun 2020 22:12:07 +0200
Message-ID: <159311592714.207748.900920527922661905.stgit@toke.dk>
In-Reply-To: <159311592607.207748.5904268231642411759.stgit@toke.dk>
References: <159311592607.207748.5904268231642411759.stgit@toke.dk>
User-Agent: StGit/0.23
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=toke@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Cake] [PATCH net 1/3] sch_cake: don't try to reallocate or unshare
 skb unconditionally
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
Cc: cake@lists.bufferbloat.net, netdev@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RnJvbTogSWx5YSBQb25ldGF5ZXYgPGkucG9uZXRhZXZAbmRtc3lzdGVtcy5jb20+CgpjYWtlX2hh
bmRsZV9kaWZmc2VydigpIHRyaWVzIHRvIGxpbmVhcml6ZSBtYWMgYW5kIG5ldHdvcmsgaGVhZGVy
IHBhcnRzIG9mCnNrYiBhbmQgdG8gbWFrZSBpdCB3cml0YWJsZSB1bmNvbmRpdGlvbmFsbHkuIElu
IHNvbWUgY2FzZXMgaXQgbGVhZHMgdG8gZnVsbApza2IgcmVhbGxvY2F0aW9uLCB3aGljaCByZWR1
Y2VzIHRocm91Z2hwdXQgYW5kIGluY3JlYXNlcyBDUFUgbG9hZC4gU29tZQptZWFzdXJlbWVudHMg
b2YgSVB2NCBmb3J3YXJkICsgTkFQVCBvbiBNSVBTIHJvdXRlciB3aXRoIDU4MCBNSHogc2luZ2xl
LWNvcmUKQ1BVIHdhcyBjb25kdWN0ZWQuIEl0IGFwcGVhcnMgdGhhdCBvbiBrZXJuZWwgNC45IHNr
Yl90cnlfbWFrZV93cml0YWJsZSgpCnJlYWxsb2NhdGVzIHNrYiwgaWYgc2tiIHdhcyBhbGxvY2F0
ZWQgaW4gZXRoZXJuZXQgZHJpdmVyIHZpYSBzby1jYWxsZWQKJ2J1aWxkIHNrYicgbWV0aG9kIGZy
b20gcGFnZSBjYWNoZSAoaXQgd2FzIGRpc2NvdmVyZWQgYnkgc3RyYW5nZSBpbmNyZWFzZQpvZiBr
bWFsbG9jLTIwNDggc2xhYiBhdCBmaXJzdCkuCgpPYnRhaW4gRFNDUCB2YWx1ZSB2aWEgcmVhZC1v
bmx5IHNrYl9oZWFkZXJfcG9pbnRlcigpIGNhbGwsIGFuZCBsZWF2ZQpsaW5lYXJpemF0aW9uIG9u
bHkgZm9yIERTQ1AgYmxlYWNoaW5nIG9yIEVDTiBDRSBzZXR0aW5nLiBBbmQsIGFzIGFuCmFkZGl0
aW9uYWwgb3B0aW1pc2F0aW9uLCBza2lwIGRpZmZzZXJ2IHBhcnNpbmcgZW50aXJlbHkgaWYgaXQg
aXMgbm90IG5lZWRlZApieSB0aGUgY3VycmVudCBjb25maWd1cmF0aW9uLgoKRml4ZXM6IGM4N2I0
ZWNkYmU4ZCAoInNjaF9jYWtlOiBNYWtlIHN1cmUgd2UgY2FuIHdyaXRlIHRoZSBJUCBoZWFkZXIg
YmVmb3JlIGNoYW5naW5nIERTQ1AgYml0cyIpClNpZ25lZC1vZmYtYnk6IElseWEgUG9uZXRheWV2
IDxpLnBvbmV0YWV2QG5kbXN5c3RlbXMuY29tPgpbIGZpeCBhIGZldyBzdHlsZSBpc3N1ZXMsIHJl
ZmxvdyBjb21taXQgbWVzc2FnZSBdClNpZ25lZC1vZmYtYnk6IFRva2UgSMO4aWxhbmQtSsO4cmdl
bnNlbiA8dG9rZUByZWRoYXQuY29tPgotLS0KIG5ldC9zY2hlZC9zY2hfY2FrZS5jIHwgICA0MSAr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQs
IDMwIGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL25ldC9zY2hl
ZC9zY2hfY2FrZS5jIGIvbmV0L3NjaGVkL3NjaF9jYWtlLmMKaW5kZXggNjBmOGFlNTc4ODE5Li5j
YWUwMDZiZWY1NjUgMTAwNjQ0Ci0tLSBhL25ldC9zY2hlZC9zY2hfY2FrZS5jCisrKyBiL25ldC9z
Y2hlZC9zY2hfY2FrZS5jCkBAIC0xNTUzLDMwICsxNTUzLDQ5IEBAIHN0YXRpYyB1bnNpZ25lZCBp
bnQgY2FrZV9kcm9wKHN0cnVjdCBRZGlzYyAqc2NoLCBzdHJ1Y3Qgc2tfYnVmZiAqKnRvX2ZyZWUp
CiAKIHN0YXRpYyB1OCBjYWtlX2hhbmRsZV9kaWZmc2VydihzdHJ1Y3Qgc2tfYnVmZiAqc2tiLCB1
MTYgd2FzaCkKIHsKLQlpbnQgd2xlbiA9IHNrYl9uZXR3b3JrX29mZnNldChza2IpOworCWNvbnN0
IGludCBvZmZzZXQgPSBza2JfbmV0d29ya19vZmZzZXQoc2tiKTsKKwl1MTYgKmJ1ZiwgYnVmXzsK
IAl1OCBkc2NwOwogCiAJc3dpdGNoICh0Y19za2JfcHJvdG9jb2woc2tiKSkgewogCWNhc2UgaHRv
bnMoRVRIX1BfSVApOgotCQl3bGVuICs9IHNpemVvZihzdHJ1Y3QgaXBoZHIpOwotCQlpZiAoIXBz
a2JfbWF5X3B1bGwoc2tiLCB3bGVuKSB8fAotCQkgICAgc2tiX3RyeV9tYWtlX3dyaXRhYmxlKHNr
Yiwgd2xlbikpCisJCWJ1ZiA9IHNrYl9oZWFkZXJfcG9pbnRlcihza2IsIG9mZnNldCwgc2l6ZW9m
KGJ1Zl8pLCAmYnVmXyk7CisJCWlmICh1bmxpa2VseSghYnVmKSkKIAkJCXJldHVybiAwOwogCi0J
CWRzY3AgPSBpcHY0X2dldF9kc2ZpZWxkKGlwX2hkcihza2IpKSA+PiAyOwotCQlpZiAod2FzaCAm
JiBkc2NwKQorCQkvKiBUb1MgaXMgaW4gdGhlIHNlY29uZCBieXRlIG9mIGlwaGRyICovCisJCWRz
Y3AgPSBpcHY0X2dldF9kc2ZpZWxkKChzdHJ1Y3QgaXBoZHIgKilidWYpID4+IDI7CisKKwkJaWYg
KHdhc2ggJiYgZHNjcCkgeworCQkJY29uc3QgaW50IHdsZW4gPSBvZmZzZXQgKyBzaXplb2Yoc3Ry
dWN0IGlwaGRyKTsKKworCQkJaWYgKCFwc2tiX21heV9wdWxsKHNrYiwgd2xlbikgfHwKKwkJCSAg
ICBza2JfdHJ5X21ha2Vfd3JpdGFibGUoc2tiLCB3bGVuKSkKKwkJCQlyZXR1cm4gMDsKKwogCQkJ
aXB2NF9jaGFuZ2VfZHNmaWVsZChpcF9oZHIoc2tiKSwgSU5FVF9FQ05fTUFTSywgMCk7CisJCX0K
KwogCQlyZXR1cm4gZHNjcDsKIAogCWNhc2UgaHRvbnMoRVRIX1BfSVBWNik6Ci0JCXdsZW4gKz0g
c2l6ZW9mKHN0cnVjdCBpcHY2aGRyKTsKLQkJaWYgKCFwc2tiX21heV9wdWxsKHNrYiwgd2xlbikg
fHwKLQkJICAgIHNrYl90cnlfbWFrZV93cml0YWJsZShza2IsIHdsZW4pKQorCQlidWYgPSBza2Jf
aGVhZGVyX3BvaW50ZXIoc2tiLCBvZmZzZXQsIHNpemVvZihidWZfKSwgJmJ1Zl8pOworCQlpZiAo
dW5saWtlbHkoIWJ1ZikpCiAJCQlyZXR1cm4gMDsKIAotCQlkc2NwID0gaXB2Nl9nZXRfZHNmaWVs
ZChpcHY2X2hkcihza2IpKSA+PiAyOwotCQlpZiAod2FzaCAmJiBkc2NwKQorCQkvKiBUcmFmZmlj
IGNsYXNzIGlzIGluIHRoZSBmaXJzdCBhbmQgc2Vjb25kIGJ5dGVzIG9mIGlwdjZoZHIgKi8KKwkJ
ZHNjcCA9IGlwdjZfZ2V0X2RzZmllbGQoKHN0cnVjdCBpcHY2aGRyICopYnVmKSA+PiAyOworCisJ
CWlmICh3YXNoICYmIGRzY3ApIHsKKwkJCWNvbnN0IGludCB3bGVuID0gb2Zmc2V0ICsgc2l6ZW9m
KHN0cnVjdCBpcHY2aGRyKTsKKworCQkJaWYgKCFwc2tiX21heV9wdWxsKHNrYiwgd2xlbikgfHwK
KwkJCSAgICBza2JfdHJ5X21ha2Vfd3JpdGFibGUoc2tiLCB3bGVuKSkKKwkJCQlyZXR1cm4gMDsK
KwogCQkJaXB2Nl9jaGFuZ2VfZHNmaWVsZChpcHY2X2hkcihza2IpLCBJTkVUX0VDTl9NQVNLLCAw
KTsKKwkJfQorCiAJCXJldHVybiBkc2NwOwogCiAJY2FzZSBodG9ucyhFVEhfUF9BUlApOgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5n
IGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9h
dC5uZXQvbGlzdGluZm8vY2FrZQo=
