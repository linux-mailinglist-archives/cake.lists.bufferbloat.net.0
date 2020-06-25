Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 12574209DE2
	for <lists+cake@lfdr.de>; Thu, 25 Jun 2020 13:55:14 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 10CA03CB43;
	Thu, 25 Jun 2020 07:55:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1593086112;
	bh=CPbghUlh5qWfrP/R5ruewBpA+IMwvGkYCu/pQptGIk4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=R14Z9IawFg5ySuBilpk7ElQoFFSf13Wns3adpymYFOko00LNRdwdTLHCbrVYn6QSV
	 flQhgcR+C0r5TItXZ19YfzxZ8Kib+dSJ9gtczqmjRpqcw5ddHZEBvwvcehXwSmeaRw
	 QpagLknarN0CM8BQZNFF5Dvst5ou9rNuBNN585Bv5lAKJaamDNW8L3ic1BIs71S+FK
	 zRxhY7HbOtBVrp5PRR/WeO+oRgmGuUo0EOU2EuxBTbJkjduwY6tIDIpUqEE+nld7pP
	 KGOawLvUub0YCRadV7Qv0qi/EpF1r3H0pSmcakCsDZ7Kj2bX4gIXX81U1Ti11XqgFN
	 twx21RTfdsX/g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 415DB3B29D
 for <cake@lists.bufferbloat.net>; Thu, 25 Jun 2020 07:55:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1593086110;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Z98FQrFFI6TBMbCHg6wJVE3Bm8z7MLEcouUfaDkGC9U=;
 b=UyNA2CoXbo3Lrt6uiYaRIyd0NGE+R0zgGpugeERLpAh/UTDVVao/uZv0+wWp62vYDqlsaV
 xvqse2BDIfol40mdzEb6cZIBqqlSnB+e6aB0JWFLTvFdaXvY4tWBF9l6PvTMjHKja6lCP+
 W7CqT6a/gHQkgT1EzpNIroMPU613sSw=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-267-vShXtR2kO2OTczJCgYlv9g-1; Thu, 25 Jun 2020 07:55:08 -0400
X-MC-Unique: vShXtR2kO2OTczJCgYlv9g-1
Received: by mail-wm1-f72.google.com with SMTP id o13so6834255wmh.9
 for <cake@lists.bufferbloat.net>; Thu, 25 Jun 2020 04:55:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=Z98FQrFFI6TBMbCHg6wJVE3Bm8z7MLEcouUfaDkGC9U=;
 b=b7RI4OkWby74EpHk2B5rF5FEB1svf7zG5McPy+NAyVEW0JZR6WiAEBpOU1SzPl05oT
 MbWshsWoTit9rYDLSR9/vi1bRAf1q2a34p5C4hYf+LAqnk4K8QB7lsdzYecN6wIz03zw
 FjkSLO5aKiMw3oTPPGfk0oO6rZQVzReab7dhRghAFTZl0pP83Yz4cHvokbnOcvkV84Ot
 2tjpeLT/F/m5XSaGl0DoZ7OJHfuEEDnv0aUkbQ4GbYhwSrNhfMYC2IOPk55a03CRJ78z
 6tMb3/uXtzNOps2L+x5cGOM8UXcQGcpCUa3AvtJ+GNiO0eXcAZHe7tmaRr8TVhsMQUpP
 crrQ==
X-Gm-Message-State: AOAM531nFZz7jqqYorlZSM9itPhU1vlvp4aosXd3DwoZwDJD2FLGTAgS
 QRRXiAqrHQhig2gZcJ8JqzR/TW6SaGKK15cnOmMTKXy/iNjS4cRfndUlU/mby2qn/kpJjN/GZFh
 03l+zoVeZV50kvU9K8Lypdw==
X-Received: by 2002:a05:6000:1190:: with SMTP id
 g16mr26496835wrx.286.1593086106877; 
 Thu, 25 Jun 2020 04:55:06 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxPg4eBO5p7yR0vm1SSGeY6BZ0h9JB+JlQVKoq3eiQbTCy2PH9vp5RNyrbVz5+QWDJ1ZZM4Nw==
X-Received: by 2002:a05:6000:1190:: with SMTP id
 g16mr26496817wrx.286.1593086106671; 
 Thu, 25 Jun 2020 04:55:06 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id 207sm13515653wme.13.2020.06.25.04.55.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Jun 2020 04:55:05 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 151F11814FC; Thu, 25 Jun 2020 13:55:05 +0200 (CEST)
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: David Miller <davem@davemloft.net>
Date: Thu, 25 Jun 2020 13:55:05 +0200
Message-ID: <159308610499.190211.5408420243803826056.stgit@toke.dk>
In-Reply-To: <159308610282.190211.9431406149182757758.stgit@toke.dk>
References: <159308610282.190211.9431406149182757758.stgit@toke.dk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Cake] [PATCH net-next 2/5] sch_cake: don't try to reallocate or
 unshare skb unconditionally
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
ZC9zY2hfY2FrZS5jIGIvbmV0L3NjaGVkL3NjaF9jYWtlLmMKaW5kZXggMGY1OTRkODhhOTU3Li5j
ZWJjYzM2NzU1YWMgMTAwNjQ0Ci0tLSBhL25ldC9zY2hlZC9zY2hfY2FrZS5jCisrKyBiL25ldC9z
Y2hlZC9zY2hfY2FrZS5jCkBAIC0xNTk5LDMwICsxNTk5LDQ5IEBAIHN0YXRpYyB1bnNpZ25lZCBp
bnQgY2FrZV9kcm9wKHN0cnVjdCBRZGlzYyAqc2NoLCBzdHJ1Y3Qgc2tfYnVmZiAqKnRvX2ZyZWUp
CiAKIHN0YXRpYyB1OCBjYWtlX2hhbmRsZV9kaWZmc2VydihzdHJ1Y3Qgc2tfYnVmZiAqc2tiLCB1
MTYgd2FzaCkKIHsKLQlpbnQgd2xlbiA9IHNrYl9uZXR3b3JrX29mZnNldChza2IpOworCWNvbnN0
IGludCBvZmZzZXQgPSBza2JfbmV0d29ya19vZmZzZXQoc2tiKTsKKwl1MTYgKmJ1ZiwgYnVmXzsK
IAl1OCBkc2NwOwogCiAJc3dpdGNoIChjYWtlX3NrYl9wcm90byhza2IpKSB7CiAJY2FzZSBodG9u
cyhFVEhfUF9JUCk6Ci0JCXdsZW4gKz0gc2l6ZW9mKHN0cnVjdCBpcGhkcik7Ci0JCWlmICghcHNr
Yl9tYXlfcHVsbChza2IsIHdsZW4pIHx8Ci0JCSAgICBza2JfdHJ5X21ha2Vfd3JpdGFibGUoc2ti
LCB3bGVuKSkKKwkJYnVmID0gc2tiX2hlYWRlcl9wb2ludGVyKHNrYiwgb2Zmc2V0LCBzaXplb2Yo
YnVmXyksICZidWZfKTsKKwkJaWYgKHVubGlrZWx5KCFidWYpKQogCQkJcmV0dXJuIDA7CiAKLQkJ
ZHNjcCA9IGlwdjRfZ2V0X2RzZmllbGQoaXBfaGRyKHNrYikpID4+IDI7Ci0JCWlmICh3YXNoICYm
IGRzY3ApCisJCS8qIFRvUyBpcyBpbiB0aGUgc2Vjb25kIGJ5dGUgb2YgaXBoZHIgKi8KKwkJZHNj
cCA9IGlwdjRfZ2V0X2RzZmllbGQoKHN0cnVjdCBpcGhkciAqKWJ1ZikgPj4gMjsKKworCQlpZiAo
d2FzaCAmJiBkc2NwKSB7CisJCQljb25zdCBpbnQgd2xlbiA9IG9mZnNldCArIHNpemVvZihzdHJ1
Y3QgaXBoZHIpOworCisJCQlpZiAoIXBza2JfbWF5X3B1bGwoc2tiLCB3bGVuKSB8fAorCQkJICAg
IHNrYl90cnlfbWFrZV93cml0YWJsZShza2IsIHdsZW4pKQorCQkJCXJldHVybiAwOworCiAJCQlp
cHY0X2NoYW5nZV9kc2ZpZWxkKGlwX2hkcihza2IpLCBJTkVUX0VDTl9NQVNLLCAwKTsKKwkJfQor
CiAJCXJldHVybiBkc2NwOwogCiAJY2FzZSBodG9ucyhFVEhfUF9JUFY2KToKLQkJd2xlbiArPSBz
aXplb2Yoc3RydWN0IGlwdjZoZHIpOwotCQlpZiAoIXBza2JfbWF5X3B1bGwoc2tiLCB3bGVuKSB8
fAotCQkgICAgc2tiX3RyeV9tYWtlX3dyaXRhYmxlKHNrYiwgd2xlbikpCisJCWJ1ZiA9IHNrYl9o
ZWFkZXJfcG9pbnRlcihza2IsIG9mZnNldCwgc2l6ZW9mKGJ1Zl8pLCAmYnVmXyk7CisJCWlmICh1
bmxpa2VseSghYnVmKSkKIAkJCXJldHVybiAwOwogCi0JCWRzY3AgPSBpcHY2X2dldF9kc2ZpZWxk
KGlwdjZfaGRyKHNrYikpID4+IDI7Ci0JCWlmICh3YXNoICYmIGRzY3ApCisJCS8qIFRyYWZmaWMg
Y2xhc3MgaXMgaW4gdGhlIGZpcnN0IGFuZCBzZWNvbmQgYnl0ZXMgb2YgaXB2NmhkciAqLworCQlk
c2NwID0gaXB2Nl9nZXRfZHNmaWVsZCgoc3RydWN0IGlwdjZoZHIgKilidWYpID4+IDI7CisKKwkJ
aWYgKHdhc2ggJiYgZHNjcCkgeworCQkJY29uc3QgaW50IHdsZW4gPSBvZmZzZXQgKyBzaXplb2Yo
c3RydWN0IGlwdjZoZHIpOworCisJCQlpZiAoIXBza2JfbWF5X3B1bGwoc2tiLCB3bGVuKSB8fAor
CQkJICAgIHNrYl90cnlfbWFrZV93cml0YWJsZShza2IsIHdsZW4pKQorCQkJCXJldHVybiAwOwor
CiAJCQlpcHY2X2NoYW5nZV9kc2ZpZWxkKGlwdjZfaGRyKHNrYiksIElORVRfRUNOX01BU0ssIDAp
OworCQl9CisKIAkJcmV0dXJuIGRzY3A7CiAKIAljYXNlIGh0b25zKEVUSF9QX0FSUCk6CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcg
bGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0
Lm5ldC9saXN0aW5mby9jYWtlCg==
