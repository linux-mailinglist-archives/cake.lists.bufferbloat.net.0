Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 587C0213C79
	for <lists+cake@lfdr.de>; Fri,  3 Jul 2020 17:23:01 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 22FE33CB49;
	Fri,  3 Jul 2020 11:23:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1593789780;
	bh=pmsv6E/xxWoQLCfGm/DpMhoEjpXrJ2L4byV8vZK7dmo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=htOGrPddwq1iKc44R4ba3+aR144mPQP8rqDqsNrLfM3tw1LJWDSYm8NoIleefM41B
	 qbBvlmvCTpYPCgSqozafH/X4h5CGh3h/yduX+BaA5XEzFF66onEcs9NhtQ5N+BEQO4
	 JsFG9hhxgz51yEM/J25srqXwPj2RBGDFWfRbDsXi0AVBrEQJtNSVHV86GqAJH8ZyN8
	 ZmzxJrSlK6SueYHLYOYINVPHy4DgnJEfIo9McVhfFui5wu1imw+DsSi8o1PlJJgzN8
	 kRfv8UZAM+s4oRegeLHrAfGS2fJXiaiiwi2hf46UM8XSDsd+cy+JOm9Mb80ft6mYGY
	 A+N2BtvJ1ljPQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id DAABB3B2A4
 for <cake@lists.bufferbloat.net>; Fri,  3 Jul 2020 11:22:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1593789778;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=mwHfjECovqnrdiZdeWZ/+ZE2IfWWHSrra5lzv3/Rh4s=;
 b=BBTf2IrJNy0bPWnp7+oTAXv6Wd41ndWWhY5dQCD6aXBVP6HX615pAxa/jRlhCfnd5qU8/Y
 vOK8qOMVAvDbe9P6LkbjljqWCLBMCd0Pujvhp9G+/NGPTJGLRHf+AK9/1icmoI36tzUYe3
 dZhDAdFv81fsDr4Z5k4ysMz0OvF17+c=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-30-AJYYSV-OOPyhEJRpQpP6Dw-1; Fri, 03 Jul 2020 11:22:55 -0400
X-MC-Unique: AJYYSV-OOPyhEJRpQpP6Dw-1
Received: by mail-qv1-f71.google.com with SMTP id w18so20724380qvd.16
 for <cake@lists.bufferbloat.net>; Fri, 03 Jul 2020 08:22:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mwHfjECovqnrdiZdeWZ/+ZE2IfWWHSrra5lzv3/Rh4s=;
 b=YZSpKiDpi9V9yfgXiS8rtT1lCvH3MF02KOgfUWvbhCBGc0nMfShxgIvYfGtoCmCMl8
 5xzlB0s4zH4mUvuwhpCfHOGCdZiYROKsbRqArq5h0gTrgAgAmwfRmPh6PewQcYIq+AIY
 CMkFNEirJS2uzmRMQOrxw41FDiUGs1CD/s/IZYu28xhcqxaTL6CuVBMhVQjdmemkFzzc
 43tMKmtL1WKuitCiJ3XYRw+wKlZD6L3FUjwoLI/5E++pmgxNvoIF4psxebPYa1RGRGxr
 SDdIXSC5CNIletHfsgpz8vNyCdfAbP15yqTSz2rp5s8CR2/Mu6/qH78KPW0+SlDjKwWe
 X4zw==
X-Gm-Message-State: AOAM532whcuOF3Eg74ZQjWyf1tB8J+BF60unXsOxG1/JP28Ca3w/m6Oq
 ZiAWEPDqZ4XVoVt5SvGMTv9WMsN/bseo3XB0vZ6uJZxG2dm7ceoEqjeGtcEGMwGVq0QDDC7v0gS
 EF1Rv1LT3Pb4F6c5Fk6dTHg==
X-Received: by 2002:ac8:5411:: with SMTP id b17mr36647206qtq.238.1593789773840; 
 Fri, 03 Jul 2020 08:22:53 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx9TgiZ9Q/o7YYdsCkzrp7xaWTJvLZeL92oBjtE7nXhEZikcSIeDPa3xV7LhSZLEhIuTHoAsA==
X-Received: by 2002:ac8:5411:: with SMTP id b17mr36647164qtq.238.1593789773324; 
 Fri, 03 Jul 2020 08:22:53 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id o12sm10933385qtl.48.2020.07.03.08.22.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jul 2020 08:22:52 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id CDE751828E4; Fri,  3 Jul 2020 17:22:50 +0200 (CEST)
From: =?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: davem@davemloft.net
Date: Fri,  3 Jul 2020 17:22:39 +0200
Message-Id: <20200703152239.471624-1-toke@redhat.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=toke@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Cake] [PATCH net v2] sched: consistently handle layer3 header
	accesses in the presence of VLANs
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
Cc: Davide Caratti <dcaratti@redhat.com>, Jiri Pirko <jiri@resnulli.us>,
 netdev@vger.kernel.org, Jamal Hadi Salim <jhs@mojatatu.com>,
 cake@lists.bufferbloat.net, Ilya Ponetayev <i.ponetaev@ndmsystems.com>,
 Cong Wang <xiyou.wangcong@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

VGhlcmUgYXJlIGEgY291cGxlIG9mIHBsYWNlcyBpbiBuZXQvc2NoZWQvIHRoYXQgY2hlY2sgc2ti
LT5wcm90b2NvbCBhbmQgYWN0Cm9uIHRoZSB2YWx1ZSB0aGVyZS4gSG93ZXZlciwgaW4gdGhlIHBy
ZXNlbmNlIG9mIFZMQU4gdGFncywgdGhlIHZhbHVlIHN0b3JlZAppbiBza2ItPnByb3RvY29sIGNh
biBiZSBpbmNvbnNpc3RlbnQgYmFzZWQgb24gd2hldGhlciBWTEFOIGFjY2VsZXJhdGlvbiBpcwpl
bmFibGVkLiBUaGUgY29tbWl0IHF1b3RlZCBpbiB0aGUgRml4ZXMgdGFnIGJlbG93IGZpeGVkIHRo
ZSB1c2VycyBvZgpza2ItPnByb3RvY29sIHRvIHVzZSBhIGhlbHBlciB0aGF0IHdpbGwgYWx3YXlz
IHNlZSB0aGUgVkxBTiBldGhlcnR5cGUuCgpIb3dldmVyLCBtb3N0IG9mIHRoZSBjYWxsZXJzIGRv
bid0IGFjdHVhbGx5IGhhbmRsZSB0aGUgVkxBTiBldGhlcnR5cGUsIGJ1dApleHBlY3QgdG8gZmlu
ZCB0aGUgSVAgaGVhZGVyIHR5cGUgaW4gdGhlIHByb3RvY29sIGZpZWxkLiBUaGlzIG1lYW5zIHRo
YXQKdGhpbmdzIGxpa2UgY2hhbmdpbmcgdGhlIEVDTiBmaWVsZCwgb3IgcGFyc2luZyBkaWZmc2Vy
diB2YWx1ZXMsIHN0b3BzCndvcmtpbmcgaWYgdGhlcmUncyBhIFZMQU4gdGFnLCBvciBpZiB0aGVy
ZSBhcmUgbXVsdGlwbGUgbmVzdGVkIFZMQU4KdGFncyAoUWluUSkuCgpUbyBmaXggdGhpcywgY2hh
bmdlIHRoZSBoZWxwZXIgdG8gdGFrZSBhbiBhcmd1bWVudCB0aGF0IGluZGljYXRlcyB3aGV0aGVy
CnRoZSBjYWxsZXIgd2FudHMgdG8gc2tpcCB0aGUgVkxBTiB0YWdzIG9yIG5vdC4gV2hlbiBza2lw
cGluZyBWTEFOIHRhZ3MsIHdlCm1ha2Ugc3VyZSB0byBza2lwIGFsbCBvZiB0aGVtLCBzbyBiZWhh
dmlvdXIgaXMgY29uc2lzdGVudCBldmVuIGluIFFpblEKbW9kZS4KClRvIG1ha2UgdGhlIGhlbHBl
ciB1c2FibGUgZnJvbSB0aGUgRUNOIGNvZGUsIG1vdmUgaXQgdG8gaWZfdmxhbi5oIGluc3RlYWQK
b2YgcGt0X3NjaGVkLmguCgp2MjoKLSBVc2UgZXRoX3R5cGVfdmxhbigpIGhlbHBlciBpbiBza2Jf
cHJvdG9jb2woKQotIEFsc28gZml4IGNvZGUgdGhhdCByZWFkcyBza2ItPnByb3RvY29sIGRpcmVj
dGx5Ci0gQ2hhbmdlIGEgY291cGxlIG9mICdpZi9lbHNlIGlmJyBzdGF0ZW1lbnRzIHRvIHN3aXRj
aCBjb25zdHJ1Y3RzIHRvIGF2b2lkCiAgY2FsbGluZyB0aGUgaGVscGVyIHR3aWNlCgpSZXBvcnRl
ZC1ieTogSWx5YSBQb25ldGF5ZXYgPGkucG9uZXRhZXZAbmRtc3lzdGVtcy5jb20+CkZpeGVzOiBk
OGI5NjA1ZDI2OTcgKCJuZXQ6IHNjaGVkOiBmaXggc2tiLT5wcm90b2NvbCB1c2UgaW4gY2FzZSBv
ZiBhY2NlbGVyYXRlZCB2bGFuIHBhdGgiKQpTaWduZWQtb2ZmLWJ5OiBUb2tlIEjDuGlsYW5kLUrD
uHJnZW5zZW4gPHRva2VAcmVkaGF0LmNvbT4KLS0tCiBpbmNsdWRlL2xpbnV4L2lmX3ZsYW4uaCAg
fCAyOSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKwogaW5jbHVkZS9uZXQvaW5ldF9lY24u
aCAgIHwgIDUgKysrLS0KIGluY2x1ZGUvbmV0L3BrdF9zY2hlZC5oICB8IDExIC0tLS0tLS0tLS0t
CiBuZXQvc2NoZWQvYWN0X2Nvbm5tYXJrLmMgfCAgOSArKysrKystLS0KIG5ldC9zY2hlZC9hY3Rf
Y3N1bS5jICAgICB8ICAyICstCiBuZXQvc2NoZWQvYWN0X2N0LmMgICAgICAgfCAgOSArKysrLS0t
LS0KIG5ldC9zY2hlZC9hY3RfY3RpbmZvLmMgICB8ICA5ICsrKysrKy0tLQogbmV0L3NjaGVkL2Fj
dF9tcGxzLmMgICAgIHwgIDIgKy0KIG5ldC9zY2hlZC9hY3Rfc2tiZWRpdC5jICB8ICAyICstCiBu
ZXQvc2NoZWQvY2xzX2FwaS5jICAgICAgfCAgMiArLQogbmV0L3NjaGVkL2Nsc19mbG93LmMgICAg
IHwgIDggKysrKy0tLS0KIG5ldC9zY2hlZC9jbHNfZmxvd2VyLmMgICB8ICAyICstCiBuZXQvc2No
ZWQvZW1faXBzZXQuYyAgICAgfCAgMiArLQogbmV0L3NjaGVkL2VtX2lwdC5jICAgICAgIHwgIDIg
Ky0KIG5ldC9zY2hlZC9lbV9tZXRhLmMgICAgICB8ICAyICstCiBuZXQvc2NoZWQvc2NoX2Nha2Uu
YyAgICAgfCAgNCArKy0tCiBuZXQvc2NoZWQvc2NoX2RzbWFyay5jICAgfCAgNiArKystLS0KIG5l
dC9zY2hlZC9zY2hfdGVxbC5jICAgICB8ICAyICstCiAxOCBmaWxlcyBjaGFuZ2VkLCA2NiBpbnNl
cnRpb25zKCspLCA0MiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2lm
X3ZsYW4uaCBiL2luY2x1ZGUvbGludXgvaWZfdmxhbi5oCmluZGV4IGIwNWU4NTVmMWRkZC4uZDBj
MWNiMGQyNjRkIDEwMDY0NAotLS0gYS9pbmNsdWRlL2xpbnV4L2lmX3ZsYW4uaAorKysgYi9pbmNs
dWRlL2xpbnV4L2lmX3ZsYW4uaApAQCAtMzA4LDYgKzMwOCwzNSBAQCBzdGF0aWMgaW5saW5lIGJv
b2wgZXRoX3R5cGVfdmxhbihfX2JlMTYgZXRoZXJ0eXBlKQogCX0KIH0KIAorLyogQSBnZXR0ZXIg
Zm9yIHRoZSBTS0IgcHJvdG9jb2wgZmllbGQgd2hpY2ggd2lsbCBoYW5kbGUgVkxBTiB0YWdzIGNv
bnNpc3RlbnRseQorICogd2hldGhlciBWTEFOIGFjY2VsZXJhdGlvbiBpcyBlbmFibGVkIG9yIG5v
dC4KKyAqLworc3RhdGljIGlubGluZSBfX2JlMTYgc2tiX3Byb3RvY29sKGNvbnN0IHN0cnVjdCBz
a19idWZmICpza2IsIGJvb2wgc2tpcF92bGFuKQoreworCXVuc2lnbmVkIGludCBvZmZzZXQgPSBz
a2JfbWFjX29mZnNldChza2IpICsgc2l6ZW9mKHN0cnVjdCBldGhoZHIpOworCV9fYmUxNiBwcm90
byA9IHNrYi0+cHJvdG9jb2w7CisJc3RydWN0IHZsYW5faGRyIHZoZHIsICp2aDsKKworCWlmICgh
c2tpcF92bGFuKQorCQkvKiBWTEFOIGFjY2VsZXJhdGlvbiBzdHJpcHMgdGhlIFZMQU4gaGVhZGVy
IGZyb20gdGhlIHNrYiBhbmQKKwkJICogbW92ZXMgaXQgdG8gc2tiLT52bGFuX3Byb3RvCisJCSAq
LworCQlyZXR1cm4gc2tiX3ZsYW5fdGFnX3ByZXNlbnQoc2tiKSA/IHNrYi0+dmxhbl9wcm90byA6
IHByb3RvOworCisJd2hpbGUgKGV0aF90eXBlX3ZsYW4ocHJvdG8pKSB7CisJCXZoID0gc2tiX2hl
YWRlcl9wb2ludGVyKHNrYiwgb2Zmc2V0LCBzaXplb2YodmhkciksICZ2aGRyKTsKKwkJaWYgKCF2
aCkKKwkJCWJyZWFrOworCisJCXByb3RvID0gdmgtPmhfdmxhbl9lbmNhcHN1bGF0ZWRfcHJvdG87
CisJCW9mZnNldCArPSBzaXplb2Yodmhkcik7CisJfQorCisJcmV0dXJuIHByb3RvOworfQorCisK
Kwogc3RhdGljIGlubGluZSBib29sIHZsYW5faHdfb2ZmbG9hZF9jYXBhYmxlKG5ldGRldl9mZWF0
dXJlc190IGZlYXR1cmVzLAogCQkJCQkgICBfX2JlMTYgcHJvdG8pCiB7CmRpZmYgLS1naXQgYS9p
bmNsdWRlL25ldC9pbmV0X2Vjbi5oIGIvaW5jbHVkZS9uZXQvaW5ldF9lY24uaAppbmRleCAwZjBk
MWVmZTA2ZGQuLjgyNzYzYmE1OTdmMiAxMDA2NDQKLS0tIGEvaW5jbHVkZS9uZXQvaW5ldF9lY24u
aAorKysgYi9pbmNsdWRlL25ldC9pbmV0X2Vjbi5oCkBAIC00LDYgKzQsNyBAQAogCiAjaW5jbHVk
ZSA8bGludXgvaXAuaD4KICNpbmNsdWRlIDxsaW51eC9za2J1ZmYuaD4KKyNpbmNsdWRlIDxsaW51
eC9pZl92bGFuLmg+CiAKICNpbmNsdWRlIDxuZXQvaW5ldF9zb2NrLmg+CiAjaW5jbHVkZSA8bmV0
L2RzZmllbGQuaD4KQEAgLTE3Miw3ICsxNzMsNyBAQCBzdGF0aWMgaW5saW5lIHZvaWQgaXB2Nl9j
b3B5X2RzY3AodW5zaWduZWQgaW50IGRzY3AsIHN0cnVjdCBpcHY2aGRyICppbm5lcikKIAogc3Rh
dGljIGlubGluZSBpbnQgSU5FVF9FQ05fc2V0X2NlKHN0cnVjdCBza19idWZmICpza2IpCiB7Ci0J
c3dpdGNoIChza2ItPnByb3RvY29sKSB7CisJc3dpdGNoIChza2JfcHJvdG9jb2woc2tiLCB0cnVl
KSkgewogCWNhc2UgY3B1X3RvX2JlMTYoRVRIX1BfSVApOgogCQlpZiAoc2tiX25ldHdvcmtfaGVh
ZGVyKHNrYikgKyBzaXplb2Yoc3RydWN0IGlwaGRyKSA8PQogCQkgICAgc2tiX3RhaWxfcG9pbnRl
cihza2IpKQpAQCAtMTkxLDcgKzE5Miw3IEBAIHN0YXRpYyBpbmxpbmUgaW50IElORVRfRUNOX3Nl
dF9jZShzdHJ1Y3Qgc2tfYnVmZiAqc2tiKQogCiBzdGF0aWMgaW5saW5lIGludCBJTkVUX0VDTl9z
ZXRfZWN0MShzdHJ1Y3Qgc2tfYnVmZiAqc2tiKQogewotCXN3aXRjaCAoc2tiLT5wcm90b2NvbCkg
eworCXN3aXRjaCAoc2tiX3Byb3RvY29sKHNrYiwgdHJ1ZSkpIHsKIAljYXNlIGNwdV90b19iZTE2
KEVUSF9QX0lQKToKIAkJaWYgKHNrYl9uZXR3b3JrX2hlYWRlcihza2IpICsgc2l6ZW9mKHN0cnVj
dCBpcGhkcikgPD0KIAkJICAgIHNrYl90YWlsX3BvaW50ZXIoc2tiKSkKZGlmZiAtLWdpdCBhL2lu
Y2x1ZGUvbmV0L3BrdF9zY2hlZC5oIGIvaW5jbHVkZS9uZXQvcGt0X3NjaGVkLmgKaW5kZXggOTA5
MmU2OTcwNTllLi5hYzhjODkwYTI2NTcgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbmV0L3BrdF9zY2hl
ZC5oCisrKyBiL2luY2x1ZGUvbmV0L3BrdF9zY2hlZC5oCkBAIC0xMzYsMTcgKzEzNiw2IEBAIHN0
YXRpYyBpbmxpbmUgdm9pZCBxZGlzY19ydW4oc3RydWN0IFFkaXNjICpxKQogCX0KIH0KIAotc3Rh
dGljIGlubGluZSBfX2JlMTYgdGNfc2tiX3Byb3RvY29sKGNvbnN0IHN0cnVjdCBza19idWZmICpz
a2IpCi17Ci0JLyogV2UgbmVlZCB0byB0YWtlIGV4dHJhIGNhcmUgaW4gY2FzZSB0aGUgc2tiIGNh
bWUgdmlhCi0JICogdmxhbiBhY2NlbGVyYXRlZCBwYXRoLiBJbiB0aGF0IGNhc2UsIHVzZSBza2It
PnZsYW5fcHJvdG8KLQkgKiBhcyB0aGUgb3JpZ2luYWwgdmxhbiBoZWFkZXIgd2FzIGFscmVhZHkg
c3RyaXBwZWQuCi0JICovCi0JaWYgKHNrYl92bGFuX3RhZ19wcmVzZW50KHNrYikpCi0JCXJldHVy
biBza2ItPnZsYW5fcHJvdG87Ci0JcmV0dXJuIHNrYi0+cHJvdG9jb2w7Ci19Ci0KIC8qIENhbGN1
bGF0ZSBtYXhpbWFsIHNpemUgb2YgcGFja2V0IHNlZW4gYnkgaGFyZF9zdGFydF94bWl0CiAgICBy
b3V0aW5lIG9mIHRoaXMgZGV2aWNlLgogICovCmRpZmYgLS1naXQgYS9uZXQvc2NoZWQvYWN0X2Nv
bm5tYXJrLmMgYi9uZXQvc2NoZWQvYWN0X2Nvbm5tYXJrLmMKaW5kZXggNDNhMjQzMDgxZTdkLi5m
OTAxNDIxYjA2MzQgMTAwNjQ0Ci0tLSBhL25ldC9zY2hlZC9hY3RfY29ubm1hcmsuYworKysgYi9u
ZXQvc2NoZWQvYWN0X2Nvbm5tYXJrLmMKQEAgLTQzLDE3ICs0MywyMCBAQCBzdGF0aWMgaW50IHRj
Zl9jb25ubWFya19hY3Qoc3RydWN0IHNrX2J1ZmYgKnNrYiwgY29uc3Qgc3RydWN0IHRjX2FjdGlv
biAqYSwKIAl0Y2ZfbGFzdHVzZV91cGRhdGUoJmNhLT50Y2ZfdG0pOwogCWJzdGF0c191cGRhdGUo
JmNhLT50Y2ZfYnN0YXRzLCBza2IpOwogCi0JaWYgKHNrYi0+cHJvdG9jb2wgPT0gaHRvbnMoRVRI
X1BfSVApKSB7CisJc3dpdGNoIChza2JfcHJvdG9jb2woc2tiLCB0cnVlKSkgeworCWNhc2UgaHRv
bnMoRVRIX1BfSVApOgogCQlpZiAoc2tiLT5sZW4gPCBzaXplb2Yoc3RydWN0IGlwaGRyKSkKIAkJ
CWdvdG8gb3V0OwogCiAJCXByb3RvID0gTkZQUk9UT19JUFY0OwotCX0gZWxzZSBpZiAoc2tiLT5w
cm90b2NvbCA9PSBodG9ucyhFVEhfUF9JUFY2KSkgeworCQlicmVhazsKKwljYXNlIGh0b25zKEVU
SF9QX0lQVjYpOgogCQlpZiAoc2tiLT5sZW4gPCBzaXplb2Yoc3RydWN0IGlwdjZoZHIpKQogCQkJ
Z290byBvdXQ7CiAKIAkJcHJvdG8gPSBORlBST1RPX0lQVjY7Ci0JfSBlbHNlIHsKKwkJYnJlYWs7
CisJZGVmYXVsdDoKIAkJZ290byBvdXQ7CiAJfQogCmRpZmYgLS1naXQgYS9uZXQvc2NoZWQvYWN0
X2NzdW0uYyBiL25ldC9zY2hlZC9hY3RfY3N1bS5jCmluZGV4IGNiODYwOGYwYTc3YS4uYzYwNjc0
Y2YyNWM0IDEwMDY0NAotLS0gYS9uZXQvc2NoZWQvYWN0X2NzdW0uYworKysgYi9uZXQvc2NoZWQv
YWN0X2NzdW0uYwpAQCAtNTg3LDcgKzU4Nyw3IEBAIHN0YXRpYyBpbnQgdGNmX2NzdW1fYWN0KHN0
cnVjdCBza19idWZmICpza2IsIGNvbnN0IHN0cnVjdCB0Y19hY3Rpb24gKmEsCiAJCWdvdG8gZHJv
cDsKIAogCXVwZGF0ZV9mbGFncyA9IHBhcmFtcy0+dXBkYXRlX2ZsYWdzOwotCXByb3RvY29sID0g
dGNfc2tiX3Byb3RvY29sKHNrYik7CisJcHJvdG9jb2wgPSBza2JfcHJvdG9jb2woc2tiLCBmYWxz
ZSk7CiBhZ2FpbjoKIAlzd2l0Y2ggKHByb3RvY29sKSB7CiAJY2FzZSBjcHVfdG9fYmUxNihFVEhf
UF9JUCk6CmRpZmYgLS1naXQgYS9uZXQvc2NoZWQvYWN0X2N0LmMgYi9uZXQvc2NoZWQvYWN0X2N0
LmMKaW5kZXggZTlmMzU3NmNiZjcxLi44NmVkMDI0ODc0NjcgMTAwNjQ0Ci0tLSBhL25ldC9zY2hl
ZC9hY3RfY3QuYworKysgYi9uZXQvc2NoZWQvYWN0X2N0LmMKQEAgLTYyNCw3ICs2MjQsNyBAQCBz
dGF0aWMgdTggdGNmX2N0X3NrYl9uZl9mYW1pbHkoc3RydWN0IHNrX2J1ZmYgKnNrYikKIHsKIAl1
OCBmYW1pbHkgPSBORlBST1RPX1VOU1BFQzsKIAotCXN3aXRjaCAoc2tiLT5wcm90b2NvbCkgewor
CXN3aXRjaCAoc2tiX3Byb3RvY29sKHNrYiwgdHJ1ZSkpIHsKIAljYXNlIGh0b25zKEVUSF9QX0lQ
KToKIAkJZmFtaWx5ID0gTkZQUk9UT19JUFY0OwogCQlicmVhazsKQEAgLTc0OCw2ICs3NDgsNyBA
QCBzdGF0aWMgaW50IGN0X25hdF9leGVjdXRlKHN0cnVjdCBza19idWZmICpza2IsIHN0cnVjdCBu
Zl9jb25uICpjdCwKIAkJCSAgY29uc3Qgc3RydWN0IG5mX25hdF9yYW5nZTIgKnJhbmdlLAogCQkJ
ICBlbnVtIG5mX25hdF9tYW5pcF90eXBlIG1hbmlwdHlwZSkKIHsKKwlfX2JlMTYgcHJvdG8gPSBz
a2JfcHJvdG9jb2woc2tiLCB0cnVlKTsKIAlpbnQgaG9va251bSwgZXJyID0gTkZfQUNDRVBUOwog
CiAJLyogU2VlIEhPT0syTUFOSVAoKS4gKi8KQEAgLTc1OSwxNCArNzYwLDEzIEBAIHN0YXRpYyBp
bnQgY3RfbmF0X2V4ZWN1dGUoc3RydWN0IHNrX2J1ZmYgKnNrYiwgc3RydWN0IG5mX2Nvbm4gKmN0
LAogCXN3aXRjaCAoY3RpbmZvKSB7CiAJY2FzZSBJUF9DVF9SRUxBVEVEOgogCWNhc2UgSVBfQ1Rf
UkVMQVRFRF9SRVBMWToKLQkJaWYgKHNrYi0+cHJvdG9jb2wgPT0gaHRvbnMoRVRIX1BfSVApICYm
CisJCWlmIChwcm90byA9PSBodG9ucyhFVEhfUF9JUCkgJiYKIAkJICAgIGlwX2hkcihza2IpLT5w
cm90b2NvbCA9PSBJUFBST1RPX0lDTVApIHsKIAkJCWlmICghbmZfbmF0X2ljbXBfcmVwbHlfdHJh
bnNsYXRpb24oc2tiLCBjdCwgY3RpbmZvLAogCQkJCQkJCSAgIGhvb2tudW0pKQogCQkJCWVyciA9
IE5GX0RST1A7CiAJCQlnb3RvIG91dDsKLQkJfSBlbHNlIGlmIChJU19FTkFCTEVEKENPTkZJR19J
UFY2KSAmJgotCQkJICAgc2tiLT5wcm90b2NvbCA9PSBodG9ucyhFVEhfUF9JUFY2KSkgeworCQl9
IGVsc2UgaWYgKElTX0VOQUJMRUQoQ09ORklHX0lQVjYpICYmIHByb3RvID09IGh0b25zKEVUSF9Q
X0lQVjYpKSB7CiAJCQlfX2JlMTYgZnJhZ19vZmY7CiAJCQl1OCBuZXh0aGRyID0gaXB2Nl9oZHIo
c2tiKS0+bmV4dGhkcjsKIAkJCWludCBoZHJsZW4gPSBpcHY2X3NraXBfZXh0aGRyKHNrYiwKQEAg
LTE1NTAsNCArMTU1MCwzIEBAIE1PRFVMRV9BVVRIT1IoIllvc3NpIEt1cGVybWFuIDx5b3NzaWt1
QG1lbGxhbm94LmNvbT4iKTsKIE1PRFVMRV9BVVRIT1IoIk1hcmNlbG8gUmljYXJkbyBMZWl0bmVy
IDxtYXJjZWxvLmxlaXRuZXJAZ21haWwuY29tPiIpOwogTU9EVUxFX0RFU0NSSVBUSU9OKCJDb25u
ZWN0aW9uIHRyYWNraW5nIGFjdGlvbiIpOwogTU9EVUxFX0xJQ0VOU0UoIkdQTCB2MiIpOwotCmRp
ZmYgLS1naXQgYS9uZXQvc2NoZWQvYWN0X2N0aW5mby5jIGIvbmV0L3NjaGVkL2FjdF9jdGluZm8u
YwppbmRleCAxOTY0OTYyMzQ5M2IuLmI1MDQyZjNlYTA3OSAxMDA2NDQKLS0tIGEvbmV0L3NjaGVk
L2FjdF9jdGluZm8uYworKysgYi9uZXQvc2NoZWQvYWN0X2N0aW5mby5jCkBAIC05NiwxOSArOTYs
MjIgQEAgc3RhdGljIGludCB0Y2ZfY3RpbmZvX2FjdChzdHJ1Y3Qgc2tfYnVmZiAqc2tiLCBjb25z
dCBzdHJ1Y3QgdGNfYWN0aW9uICphLAogCWFjdGlvbiA9IFJFQURfT05DRShjYS0+dGNmX2FjdGlv
bik7CiAKIAl3bGVuID0gc2tiX25ldHdvcmtfb2Zmc2V0KHNrYik7Ci0JaWYgKHRjX3NrYl9wcm90
b2NvbChza2IpID09IGh0b25zKEVUSF9QX0lQKSkgeworCXN3aXRjaCAoc2tiX3Byb3RvY29sKHNr
YiwgdHJ1ZSkpIHsKKwljYXNlIGh0b25zKEVUSF9QX0lQKToKIAkJd2xlbiArPSBzaXplb2Yoc3Ry
dWN0IGlwaGRyKTsKIAkJaWYgKCFwc2tiX21heV9wdWxsKHNrYiwgd2xlbikpCiAJCQlnb3RvIG91
dDsKIAogCQlwcm90byA9IE5GUFJPVE9fSVBWNDsKLQl9IGVsc2UgaWYgKHRjX3NrYl9wcm90b2Nv
bChza2IpID09IGh0b25zKEVUSF9QX0lQVjYpKSB7CisJCWJyZWFrOworCWNhc2UgaHRvbnMoRVRI
X1BfSVBWNik6CiAJCXdsZW4gKz0gc2l6ZW9mKHN0cnVjdCBpcHY2aGRyKTsKIAkJaWYgKCFwc2ti
X21heV9wdWxsKHNrYiwgd2xlbikpCiAJCQlnb3RvIG91dDsKIAogCQlwcm90byA9IE5GUFJPVE9f
SVBWNjsKLQl9IGVsc2UgeworCQlicmVhazsKKwlkZWZhdWx0OgogCQlnb3RvIG91dDsKIAl9CiAK
ZGlmZiAtLWdpdCBhL25ldC9zY2hlZC9hY3RfbXBscy5jIGIvbmV0L3NjaGVkL2FjdF9tcGxzLmMK
aW5kZXggYmUzZjIxNWNkMDI3Li44MTE4ZTI2NDA5NzkgMTAwNjQ0Ci0tLSBhL25ldC9zY2hlZC9h
Y3RfbXBscy5jCisrKyBiL25ldC9zY2hlZC9hY3RfbXBscy5jCkBAIC04Miw3ICs4Miw3IEBAIHN0
YXRpYyBpbnQgdGNmX21wbHNfYWN0KHN0cnVjdCBza19idWZmICpza2IsIGNvbnN0IHN0cnVjdCB0
Y19hY3Rpb24gKmEsCiAJCQlnb3RvIGRyb3A7CiAJCWJyZWFrOwogCWNhc2UgVENBX01QTFNfQUNU
X1BVU0g6Ci0JCW5ld19sc2UgPSB0Y2ZfbXBsc19nZXRfbHNlKE5VTEwsIHAsICFldGhfcF9tcGxz
KHNrYi0+cHJvdG9jb2wpKTsKKwkJbmV3X2xzZSA9IHRjZl9tcGxzX2dldF9sc2UoTlVMTCwgcCwg
IWV0aF9wX21wbHMoc2tiX3Byb3RvY29sKHNrYiwgdHJ1ZSkpKTsKIAkJaWYgKHNrYl9tcGxzX3B1
c2goc2tiLCBuZXdfbHNlLCBwLT50Y2ZtX3Byb3RvLCBtYWNfbGVuLAogCQkJCSAgc2tiLT5kZXYg
JiYgc2tiLT5kZXYtPnR5cGUgPT0gQVJQSFJEX0VUSEVSKSkKIAkJCWdvdG8gZHJvcDsKZGlmZiAt
LWdpdCBhL25ldC9zY2hlZC9hY3Rfc2tiZWRpdC5jIGIvbmV0L3NjaGVkL2FjdF9za2JlZGl0LmMK
aW5kZXggYjEyNWIyYmU0NDY3Li5iMmIzZmFhNTcyOTQgMTAwNjQ0Ci0tLSBhL25ldC9zY2hlZC9h
Y3Rfc2tiZWRpdC5jCisrKyBiL25ldC9zY2hlZC9hY3Rfc2tiZWRpdC5jCkBAIC00MSw3ICs0MSw3
IEBAIHN0YXRpYyBpbnQgdGNmX3NrYmVkaXRfYWN0KHN0cnVjdCBza19idWZmICpza2IsIGNvbnN0
IHN0cnVjdCB0Y19hY3Rpb24gKmEsCiAJaWYgKHBhcmFtcy0+ZmxhZ3MgJiBTS0JFRElUX0ZfSU5I
RVJJVERTRklFTEQpIHsKIAkJaW50IHdsZW4gPSBza2JfbmV0d29ya19vZmZzZXQoc2tiKTsKIAot
CQlzd2l0Y2ggKHRjX3NrYl9wcm90b2NvbChza2IpKSB7CisJCXN3aXRjaCAoc2tiX3Byb3RvY29s
KHNrYiwgdHJ1ZSkpIHsKIAkJY2FzZSBodG9ucyhFVEhfUF9JUCk6CiAJCQl3bGVuICs9IHNpemVv
ZihzdHJ1Y3QgaXBoZHIpOwogCQkJaWYgKCFwc2tiX21heV9wdWxsKHNrYiwgd2xlbikpCmRpZmYg
LS1naXQgYS9uZXQvc2NoZWQvY2xzX2FwaS5jIGIvbmV0L3NjaGVkL2Nsc19hcGkuYwppbmRleCBm
YWE3OGI3ZGQ5NjIuLmU2MmJlZWMwZDg0NCAxMDA2NDQKLS0tIGEvbmV0L3NjaGVkL2Nsc19hcGku
YworKysgYi9uZXQvc2NoZWQvY2xzX2FwaS5jCkBAIC0xNTM4LDcgKzE1MzgsNyBAQCBzdGF0aWMg
aW5saW5lIGludCBfX3RjZl9jbGFzc2lmeShzdHJ1Y3Qgc2tfYnVmZiAqc2tiLAogcmVjbGFzc2lm
eToKICNlbmRpZgogCWZvciAoOyB0cDsgdHAgPSByY3VfZGVyZWZlcmVuY2VfYmgodHAtPm5leHQp
KSB7Ci0JCV9fYmUxNiBwcm90b2NvbCA9IHRjX3NrYl9wcm90b2NvbChza2IpOworCQlfX2JlMTYg
cHJvdG9jb2wgPSBza2JfcHJvdG9jb2woc2tiLCBmYWxzZSk7CiAJCWludCBlcnI7CiAKIAkJaWYg
KHRwLT5wcm90b2NvbCAhPSBwcm90b2NvbCAmJgpkaWZmIC0tZ2l0IGEvbmV0L3NjaGVkL2Nsc19m
bG93LmMgYi9uZXQvc2NoZWQvY2xzX2Zsb3cuYwppbmRleCA4MGFlN2I5ZmE5MGEuLmFiNTNhOTNi
MmYyYiAxMDA2NDQKLS0tIGEvbmV0L3NjaGVkL2Nsc19mbG93LmMKKysrIGIvbmV0L3NjaGVkL2Ns
c19mbG93LmMKQEAgLTgwLDcgKzgwLDcgQEAgc3RhdGljIHUzMiBmbG93X2dldF9kc3QoY29uc3Qg
c3RydWN0IHNrX2J1ZmYgKnNrYiwgY29uc3Qgc3RydWN0IGZsb3dfa2V5cyAqZmxvdykKIAlpZiAo
ZHN0KQogCQlyZXR1cm4gbnRvaGwoZHN0KTsKIAotCXJldHVybiBhZGRyX2ZvbGQoc2tiX2RzdChz
a2IpKSBeIChfX2ZvcmNlIHUxNikgdGNfc2tiX3Byb3RvY29sKHNrYik7CisJcmV0dXJuIGFkZHJf
Zm9sZChza2JfZHN0KHNrYikpIF4gKF9fZm9yY2UgdTE2KXNrYl9wcm90b2NvbChza2IsIHRydWUp
OwogfQogCiBzdGF0aWMgdTMyIGZsb3dfZ2V0X3Byb3RvKGNvbnN0IHN0cnVjdCBza19idWZmICpz
a2IsCkBAIC0xMDQsNyArMTA0LDcgQEAgc3RhdGljIHUzMiBmbG93X2dldF9wcm90b19kc3QoY29u
c3Qgc3RydWN0IHNrX2J1ZmYgKnNrYiwKIAlpZiAoZmxvdy0+cG9ydHMucG9ydHMpCiAJCXJldHVy
biBudG9ocyhmbG93LT5wb3J0cy5kc3QpOwogCi0JcmV0dXJuIGFkZHJfZm9sZChza2JfZHN0KHNr
YikpIF4gKF9fZm9yY2UgdTE2KSB0Y19za2JfcHJvdG9jb2woc2tiKTsKKwlyZXR1cm4gYWRkcl9m
b2xkKHNrYl9kc3Qoc2tiKSkgXiAoX19mb3JjZSB1MTYpc2tiX3Byb3RvY29sKHNrYiwgdHJ1ZSk7
CiB9CiAKIHN0YXRpYyB1MzIgZmxvd19nZXRfaWlmKGNvbnN0IHN0cnVjdCBza19idWZmICpza2Ip
CkBAIC0xNTEsNyArMTUxLDcgQEAgc3RhdGljIHUzMiBmbG93X2dldF9uZmN0KGNvbnN0IHN0cnVj
dCBza19idWZmICpza2IpCiBzdGF0aWMgdTMyIGZsb3dfZ2V0X25mY3Rfc3JjKGNvbnN0IHN0cnVj
dCBza19idWZmICpza2IsCiAJCQkgICAgIGNvbnN0IHN0cnVjdCBmbG93X2tleXMgKmZsb3cpCiB7
Ci0Jc3dpdGNoICh0Y19za2JfcHJvdG9jb2woc2tiKSkgeworCXN3aXRjaCAoc2tiX3Byb3RvY29s
KHNrYiwgdHJ1ZSkpIHsKIAljYXNlIGh0b25zKEVUSF9QX0lQKToKIAkJcmV0dXJuIG50b2hsKENU
VFVQTEUoc2tiLCBzcmMudTMuaXApKTsKIAljYXNlIGh0b25zKEVUSF9QX0lQVjYpOgpAQCAtMTY0
LDcgKzE2NCw3IEBAIHN0YXRpYyB1MzIgZmxvd19nZXRfbmZjdF9zcmMoY29uc3Qgc3RydWN0IHNr
X2J1ZmYgKnNrYiwKIHN0YXRpYyB1MzIgZmxvd19nZXRfbmZjdF9kc3QoY29uc3Qgc3RydWN0IHNr
X2J1ZmYgKnNrYiwKIAkJCSAgICAgY29uc3Qgc3RydWN0IGZsb3dfa2V5cyAqZmxvdykKIHsKLQlz
d2l0Y2ggKHRjX3NrYl9wcm90b2NvbChza2IpKSB7CisJc3dpdGNoIChza2JfcHJvdG9jb2woc2ti
LCB0cnVlKSkgewogCWNhc2UgaHRvbnMoRVRIX1BfSVApOgogCQlyZXR1cm4gbnRvaGwoQ1RUVVBM
RShza2IsIGRzdC51My5pcCkpOwogCWNhc2UgaHRvbnMoRVRIX1BfSVBWNik6CmRpZmYgLS1naXQg
YS9uZXQvc2NoZWQvY2xzX2Zsb3dlci5jIGIvbmV0L3NjaGVkL2Nsc19mbG93ZXIuYwppbmRleCBi
MmRhMzcyODYwODIuLmUzMGJkOTY5ZmM0OCAxMDA2NDQKLS0tIGEvbmV0L3NjaGVkL2Nsc19mbG93
ZXIuYworKysgYi9uZXQvc2NoZWQvY2xzX2Zsb3dlci5jCkBAIC0zMTMsNyArMzEzLDcgQEAgc3Rh
dGljIGludCBmbF9jbGFzc2lmeShzdHJ1Y3Qgc2tfYnVmZiAqc2tiLCBjb25zdCBzdHJ1Y3QgdGNm
X3Byb3RvICp0cCwKIAkJLyogc2tiX2Zsb3dfZGlzc2VjdCgpIGRvZXMgbm90IHNldCBuX3Byb3Rv
IGluIGNhc2UgYW4gdW5rbm93bgogCQkgKiBwcm90b2NvbCwgc28gZG8gaXQgcmF0aGVyIGhlcmUu
CiAJCSAqLwotCQlza2Jfa2V5LmJhc2ljLm5fcHJvdG8gPSBza2ItPnByb3RvY29sOworCQlza2Jf
a2V5LmJhc2ljLm5fcHJvdG8gPSBza2JfcHJvdG9jb2woc2tiLCBmYWxzZSk7CiAJCXNrYl9mbG93
X2Rpc3NlY3RfdHVubmVsX2luZm8oc2tiLCAmbWFzay0+ZGlzc2VjdG9yLCAmc2tiX2tleSk7CiAJ
CXNrYl9mbG93X2Rpc3NlY3RfY3Qoc2tiLCAmbWFzay0+ZGlzc2VjdG9yLCAmc2tiX2tleSwKIAkJ
CQkgICAgZmxfY3RfaW5mb190b19mbG93ZXJfbWFwLApkaWZmIC0tZ2l0IGEvbmV0L3NjaGVkL2Vt
X2lwc2V0LmMgYi9uZXQvc2NoZWQvZW1faXBzZXQuYwppbmRleCBkZjAwNTY2ZDMyN2QuLmM5NWNm
ODZmYjQzMSAxMDA2NDQKLS0tIGEvbmV0L3NjaGVkL2VtX2lwc2V0LmMKKysrIGIvbmV0L3NjaGVk
L2VtX2lwc2V0LmMKQEAgLTU5LDcgKzU5LDcgQEAgc3RhdGljIGludCBlbV9pcHNldF9tYXRjaChz
dHJ1Y3Qgc2tfYnVmZiAqc2tiLCBzdHJ1Y3QgdGNmX2VtYXRjaCAqZW0sCiAJfTsKIAlpbnQgcmV0
LCBuZXR3b3JrX29mZnNldDsKIAotCXN3aXRjaCAodGNfc2tiX3Byb3RvY29sKHNrYikpIHsKKwlz
d2l0Y2ggKHNrYl9wcm90b2NvbChza2IsIHRydWUpKSB7CiAJY2FzZSBodG9ucyhFVEhfUF9JUCk6
CiAJCXN0YXRlLnBmID0gTkZQUk9UT19JUFY0OwogCQlpZiAoIXBza2JfbmV0d29ya19tYXlfcHVs
bChza2IsIHNpemVvZihzdHJ1Y3QgaXBoZHIpKSkKZGlmZiAtLWdpdCBhL25ldC9zY2hlZC9lbV9p
cHQuYyBiL25ldC9zY2hlZC9lbV9pcHQuYwppbmRleCAxODc1NWQyOWZkMTUuLjM2NTAxMTdkYTQ3
ZiAxMDA2NDQKLS0tIGEvbmV0L3NjaGVkL2VtX2lwdC5jCisrKyBiL25ldC9zY2hlZC9lbV9pcHQu
YwpAQCAtMjEyLDcgKzIxMiw3IEBAIHN0YXRpYyBpbnQgZW1faXB0X21hdGNoKHN0cnVjdCBza19i
dWZmICpza2IsIHN0cnVjdCB0Y2ZfZW1hdGNoICplbSwKIAlzdHJ1Y3QgbmZfaG9va19zdGF0ZSBz
dGF0ZTsKIAlpbnQgcmV0OwogCi0Jc3dpdGNoICh0Y19za2JfcHJvdG9jb2woc2tiKSkgeworCXN3
aXRjaCAoc2tiX3Byb3RvY29sKHNrYiwgdHJ1ZSkpIHsKIAljYXNlIGh0b25zKEVUSF9QX0lQKToK
IAkJaWYgKCFwc2tiX25ldHdvcmtfbWF5X3B1bGwoc2tiLCBzaXplb2Yoc3RydWN0IGlwaGRyKSkp
CiAJCQlyZXR1cm4gMDsKZGlmZiAtLWdpdCBhL25ldC9zY2hlZC9lbV9tZXRhLmMgYi9uZXQvc2No
ZWQvZW1fbWV0YS5jCmluZGV4IGQ5OTk2NmE1NWM4NC4uNDYyNTQ5NjhkMzkwIDEwMDY0NAotLS0g
YS9uZXQvc2NoZWQvZW1fbWV0YS5jCisrKyBiL25ldC9zY2hlZC9lbV9tZXRhLmMKQEAgLTE5NSw3
ICsxOTUsNyBAQCBNRVRBX0NPTExFQ1RPUihpbnRfcHJpb3JpdHkpCiBNRVRBX0NPTExFQ1RPUihp
bnRfcHJvdG9jb2wpCiB7CiAJLyogTGV0IHVzZXJzcGFjZSB0YWtlIGNhcmUgb2YgdGhlIGJ5dGUg
b3JkZXJpbmcgKi8KLQlkc3QtPnZhbHVlID0gdGNfc2tiX3Byb3RvY29sKHNrYik7CisJZHN0LT52
YWx1ZSA9IHNrYl9wcm90b2NvbChza2IsIGZhbHNlKTsKIH0KIAogTUVUQV9DT0xMRUNUT1IoaW50
X3BrdHR5cGUpCmRpZmYgLS1naXQgYS9uZXQvc2NoZWQvc2NoX2Nha2UuYyBiL25ldC9zY2hlZC9z
Y2hfY2FrZS5jCmluZGV4IGNhODEzNjk3NzI4ZS4uZWJhZWVjMWU1YzgyIDEwMDY0NAotLS0gYS9u
ZXQvc2NoZWQvc2NoX2Nha2UuYworKysgYi9uZXQvc2NoZWQvc2NoX2Nha2UuYwpAQCAtNTkyLDcg
KzU5Miw3IEBAIHN0YXRpYyBib29sIGNha2VfdXBkYXRlX2Zsb3drZXlzKHN0cnVjdCBmbG93X2tl
eXMgKmtleXMsCiAJYm9vbCByZXYgPSAhc2tiLT5fbmZjdCwgdXBkID0gZmFsc2U7CiAJX19iZTMy
IGlwOwogCi0JaWYgKHRjX3NrYl9wcm90b2NvbChza2IpICE9IGh0b25zKEVUSF9QX0lQKSkKKwlp
ZiAoc2tiX3Byb3RvY29sKHNrYiwgdHJ1ZSkgIT0gaHRvbnMoRVRIX1BfSVApKQogCQlyZXR1cm4g
ZmFsc2U7CiAKIAlpZiAoIW5mX2N0X2dldF90dXBsZV9za2IoJnR1cGxlLCBza2IpKQpAQCAtMTU1
Nyw3ICsxNTU3LDcgQEAgc3RhdGljIHU4IGNha2VfaGFuZGxlX2RpZmZzZXJ2KHN0cnVjdCBza19i
dWZmICpza2IsIGJvb2wgd2FzaCkKIAl1MTYgKmJ1ZiwgYnVmXzsKIAl1OCBkc2NwOwogCi0Jc3dp
dGNoICh0Y19za2JfcHJvdG9jb2woc2tiKSkgeworCXN3aXRjaCAoc2tiX3Byb3RvY29sKHNrYiwg
dHJ1ZSkpIHsKIAljYXNlIGh0b25zKEVUSF9QX0lQKToKIAkJYnVmID0gc2tiX2hlYWRlcl9wb2lu
dGVyKHNrYiwgb2Zmc2V0LCBzaXplb2YoYnVmXyksICZidWZfKTsKIAkJaWYgKHVubGlrZWx5KCFi
dWYpKQpkaWZmIC0tZ2l0IGEvbmV0L3NjaGVkL3NjaF9kc21hcmsuYyBiL25ldC9zY2hlZC9zY2hf
ZHNtYXJrLmMKaW5kZXggMDU2MDViMzBiZWYzLi4yYjg4NzEwOTk0ZDcgMTAwNjQ0Ci0tLSBhL25l
dC9zY2hlZC9zY2hfZHNtYXJrLmMKKysrIGIvbmV0L3NjaGVkL3NjaF9kc21hcmsuYwpAQCAtMjEw
LDcgKzIxMCw3IEBAIHN0YXRpYyBpbnQgZHNtYXJrX2VucXVldWUoc3RydWN0IHNrX2J1ZmYgKnNr
Yiwgc3RydWN0IFFkaXNjICpzY2gsCiAJaWYgKHAtPnNldF90Y19pbmRleCkgewogCQlpbnQgd2xl
biA9IHNrYl9uZXR3b3JrX29mZnNldChza2IpOwogCi0JCXN3aXRjaCAodGNfc2tiX3Byb3RvY29s
KHNrYikpIHsKKwkJc3dpdGNoIChza2JfcHJvdG9jb2woc2tiLCB0cnVlKSkgewogCQljYXNlIGh0
b25zKEVUSF9QX0lQKToKIAkJCXdsZW4gKz0gc2l6ZW9mKHN0cnVjdCBpcGhkcik7CiAJCQlpZiAo
IXBza2JfbWF5X3B1bGwoc2tiLCB3bGVuKSB8fApAQCAtMzAzLDcgKzMwMyw3IEBAIHN0YXRpYyBz
dHJ1Y3Qgc2tfYnVmZiAqZHNtYXJrX2RlcXVldWUoc3RydWN0IFFkaXNjICpzY2gpCiAJaW5kZXgg
PSBza2ItPnRjX2luZGV4ICYgKHAtPmluZGljZXMgLSAxKTsKIAlwcl9kZWJ1ZygiaW5kZXggJWQt
PiVkXG4iLCBza2ItPnRjX2luZGV4LCBpbmRleCk7CiAKLQlzd2l0Y2ggKHRjX3NrYl9wcm90b2Nv
bChza2IpKSB7CisJc3dpdGNoIChza2JfcHJvdG9jb2woc2tiLCB0cnVlKSkgewogCWNhc2UgaHRv
bnMoRVRIX1BfSVApOgogCQlpcHY0X2NoYW5nZV9kc2ZpZWxkKGlwX2hkcihza2IpLCBwLT5tdltp
bmRleF0ubWFzaywKIAkJCQkgICAgcC0+bXZbaW5kZXhdLnZhbHVlKTsKQEAgLTMyMCw3ICszMjAs
NyBAQCBzdGF0aWMgc3RydWN0IHNrX2J1ZmYgKmRzbWFya19kZXF1ZXVlKHN0cnVjdCBRZGlzYyAq
c2NoKQogCQkgKi8KIAkJaWYgKHAtPm12W2luZGV4XS5tYXNrICE9IDB4ZmYgfHwgcC0+bXZbaW5k
ZXhdLnZhbHVlKQogCQkJcHJfd2FybigiJXM6IHVuc3VwcG9ydGVkIHByb3RvY29sICVkXG4iLAot
CQkJCV9fZnVuY19fLCBudG9ocyh0Y19za2JfcHJvdG9jb2woc2tiKSkpOworCQkJCV9fZnVuY19f
LCBudG9ocyhza2JfcHJvdG9jb2woc2tiLCB0cnVlKSkpOwogCQlicmVhazsKIAl9CiAKZGlmZiAt
LWdpdCBhL25ldC9zY2hlZC9zY2hfdGVxbC5jIGIvbmV0L3NjaGVkL3NjaF90ZXFsLmMKaW5kZXgg
Njg5ZWY2ZjNkZWQ4Li4yZjFmMGEzNzg0MDggMTAwNjQ0Ci0tLSBhL25ldC9zY2hlZC9zY2hfdGVx
bC5jCisrKyBiL25ldC9zY2hlZC9zY2hfdGVxbC5jCkBAIC0yMzksNyArMjM5LDcgQEAgX190ZXFs
X3Jlc29sdmUoc3RydWN0IHNrX2J1ZmYgKnNrYiwgc3RydWN0IHNrX2J1ZmYgKnNrYl9yZXMsCiAJ
CWNoYXIgaGFkZHJbTUFYX0FERFJfTEVOXTsKIAogCQluZWlnaF9oYV9zbmFwc2hvdChoYWRkciwg
biwgZGV2KTsKLQkJZXJyID0gZGV2X2hhcmRfaGVhZGVyKHNrYiwgZGV2LCBudG9ocyh0Y19za2Jf
cHJvdG9jb2woc2tiKSksCisJCWVyciA9IGRldl9oYXJkX2hlYWRlcihza2IsIGRldiwgbnRvaHMo
c2tiX3Byb3RvY29sKHNrYiwgZmFsc2UpKSwKIAkJCQkgICAgICBoYWRkciwgTlVMTCwgc2tiLT5s
ZW4pOwogCiAJCWlmIChlcnIgPCAwKQotLSAKMi4yNy4wCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1
ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtl
Cg==
