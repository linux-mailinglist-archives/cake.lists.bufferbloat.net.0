Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A304B603
	for <lists+cake@lfdr.de>; Sun, 28 Apr 2019 15:15:59 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id C91B33CB3B;
	Sun, 28 Apr 2019 09:15:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1556457357;
	bh=qZh23BxLspezZVWGnylQacHJ7+V+lSBLwP7L3/f5338=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=TN2TbcotEsExvF8NDjTo94yVVHlgyoXOaz+9CFbeWmq8b+AS5VlE0hp2R+AVhHsML
	 79OPjVkHdnna8CI3y29dG7h3dCPUGNVbcC9bQ8rDwKW3tpQSnvS6YoKQgX4r2x0Lkx
	 qFPcUfz7SD2Uj/TvhA4LPRDqNBQ4xXSk3LN71ERLTFuQgdZDBBU2+/9c0ZpKVuXyT7
	 WN7lX0cMjFYXzqj5kmP8KjEjTxAwlngFxYZQ8XlyZe30VU3XP0vlvFCyjOv0OAOWFF
	 YhPNpK0iQ3HhmZv2V+Iv9+2yck1hnkC8RvgAl5XHrEKhUdPSgxRRHo2WNuHyXJuVTQ
	 R4ZtK6YMeIptw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com
 [IPv6:2607:f8b0:4864:20::d2f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 9714B3CB37
 for <cake@lists.bufferbloat.net>; Sun, 28 Apr 2019 09:15:56 -0400 (EDT)
Received: by mail-io1-xd2f.google.com with SMTP id v9so6704331iol.10
 for <cake@lists.bufferbloat.net>; Sun, 28 Apr 2019 06:15:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=/IcVpYLZHvheZz/hovsVN6CKrqkz+UXohDfNKzalfq4=;
 b=R2jfqtO7iLQP9po7d/japovXmmYPfZBRKtkDCjnxyhYzM6wlVbGPPltMY/F/asxSgq
 HDy+n+m8vCOF6kZl1kI98HCh4GqhndffDbGkePSMVGec8UdW5bF/40K8+72/Jvz7apDA
 Pip/22p+JTyUDKG8ux94jn2yoPpim6LT0p8FNVDiHuigo/WU/AWZKEIMKuYxnOlfUvPb
 PMMhuMYEhH66262k0yV7euWlBUdsk3R66hRWljnt+S64OzjJfjAG4OTUT8o/MCneTlZy
 jcxAOTM1b0oBC/HsCQZ7hMqaovoy8ZifuGp/vQHHF6o7OaNhgie2Q5NFzdDEWOASwcrp
 UQaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=/IcVpYLZHvheZz/hovsVN6CKrqkz+UXohDfNKzalfq4=;
 b=tLhqvyhi2BiJ0NN097kb0llQTGjKUQbadhxXgBS4GgGnbQxKAp8I0ER4kODgVFU+eW
 EJfwIzUI8DWuPFHKcubPrNvyWGgLsOoFvCOOnN0L3E4MGnjmeVhr1E+kxVcmykY47qF7
 ux3wJfL1ZDxQ8NROS7p/Ee9Jp8Bw8EGO5itaqcjKYyo9DPW8yXITG8kqIIldlenvbfc8
 t7PDFSI6oX9P6NGSUE1hqab66lCmluI7fAQENRrfDHguZeq3M4pQrSujWolaQCvk/iqe
 x2zZRwhHCOy824Oa41KycGTfyf4k05B0h67ibkyaYZe1+xebYIwItNEG1jfUZ/tQET08
 OWJg==
X-Gm-Message-State: APjAAAUH8GrCfMtbdN35EBD5seeta9CHHQCMRKGtqihhmKjT9K5L7tOX
 hmLiR3vNSrtuETVCTxdkRVEgC3qUBmWaRzl9mODz2By7dkALFA==
X-Google-Smtp-Source: APXvYqyA615LkbisQtvppstkt1Q1fLLnFFy/3CmVw7ko0e+H4x3nhcTVER74bZormnoLp1po0oVnPCqgmt3uolbFRiY=
X-Received: by 2002:a6b:f809:: with SMTP id o9mr37300915ioh.232.1556457355796; 
 Sun, 28 Apr 2019 06:15:55 -0700 (PDT)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Sun, 28 Apr 2019 15:15:44 +0200
Message-ID: <CAA93jw5eU8f7Ldp1-ssHyfO104GOGbQh8m28guTum5KMafoPtw@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>, tsvwg IETF list <tsvwg@ietf.org>, 
 iccrg IRTF list <iccrg@irtf.org>, rmcat@ietf.org,
 BBR Development <bbr-dev@googlegroups.com>
Subject: [Cake] sch_cake shaper/aqm/fq implementation in linux slides and
	paper
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

U2luY2Ugc2NoX2Nha2UgaGFzIGJlZW4gZ2VuZXJhbGx5IGF2YWlsYWJsZSBhcyBkdWFsIGxpY2Vu
c2VkIChCU0QvR1BMKQpvcGVuIHNvdXJjZSBzaW5jZSBsYXN0IGF1Z3VzdCAoYXMgb2YgbGludXgg
NC4xOSksIGFuZCBzaGlwcGluZyBpbgpvcGVud3J0IGFuZCBldmVucm91dGUgZm9yIDMgeWVhcnMs
IEkgaGF2ZSBnZW5lcmFsbHkgbG9uZ2VkIGZvciBtb3JlCmZvbGsgdG8gYmUgZmlkZGxpbmcgd2l0
aCBpdCBpbiB0aGUgaWV0Zi4gVGhlIG1vc3QgY3VycmVudCBzdGFibGUKdmVyc2lvbiBpcyBpbiBv
cGVud3J0IDE4LjAyLCB3aGljaCBzaGlwcGVkIGluIGphbnVhcnkuIENha2UgaXMgaW4KZ2VuZXJh
bCBpcyB0b28gY29tcGxpY2F0ZWQgYW5kIGFkZHJlc3NlcyB0b28gbWFueSB0aGluZ3MgdG8KZW5j
YXBzdWxhdGUgaW50byBhbiBSRkMsIGJ1dCBpbiBwYXJ0aWN1bGFyLCB0aGUgRE9DU0lTL0RTTC9F
dGhlcm5ldApmcmFtaW5nIGNvbXBlbnNhdGlvbiBtb2RlcyBhcmUgZXhjZWxsZW50ICh1bmxpa2Ug
dGhlIEJTRCBwZnNlbnNlIG9uZSksCmFuZCB3ZSBoYXZlIG1hbnkgb3RoZXIgaW1wcm92ZW1lbnRz
IHRvIG11bHRpcGxlIGNvbXBvbmVudHMgb2YgdGhlIFNRTQpzeXN0ZW1zIHdlJ3ZlIGJlZW4gc2hp
cHBpbmcgZm9yIDggeWVhcnMuIHN1Y2ggYXMgcGVyIGhvc3QvcGVyIGZsb3cgRlEsCnNhbmUgZGlm
ZnNlcnYgc3VwcG9ydCwgYW5kIGFjay1maWx0ZXJpbmcgYmVpbmcgdGhlcHJpbWFyeSBvbmVzIGNv
dmVyZWQKaW4gc2xpZGVzIGZyb20gbXkgSUVFRSBsYW5tYW4gdGFsazoKCmh0dHA6Ly93d3cudGFo
dC5uZXQvfmQvc2NoX2Nha2VfaWVlZV9sYW5tYW4yMDE4JTIwKDIpLnBkZgoKT25lIG1ham9yIGZl
YXR1cmUgbm90IGJyb3VnaHQgb3V0IGluIHBhcGVyIG9yIHNsaWRlcyBpcyB0aGF0IGNha2UKd29y
a3MgdGhlIHNhbWUgd2hldGhlciBpdCBoYXMgYmFja3ByZXNzdXJlIGZyb20gdGhlIGRldmljZSBv
ciB2aWEKIkJRTCIsIE9SIGluIHNoYXBpbmcgaW4gc29mdHdhcmUuIEFub3RoZXIgaW1wb3J0YW50
IGZlYXR1cmUgLQpHUk8tc3BsaXR0aW5nLCB3ZSBoYXZlbid0IGdvbmUgaW50byBtdWNoIGluIHBy
aW50IHlldC4gSW4gdGhlIGV4dHJhCnNsaWRlcyBzZWN0aW9uIGFyZSBzb21lIG5pY2UgcmVzdWx0
cyBmcm9tIGEgR1BPTiBmaWJlciBuZXR3b3JrLiBJdCBjYW4KYWxzbyBiZSB1c2VkIGFzIGEgbG9j
YWwgaG9zdC1vbmx5IHFkaXNjOyB0aGVyZSBpcyBhIGJyaWVmIGNvbXBhcmlzb24Kb2YgY2FrZSB2
cyBzY2hfZnEgYWxzbyBpbiB0aGUgc2xpZGVzIGFib3ZlLiBBcyB3ZWxsIGFzIGluIG5ldHdvcmsK
bmFtZXNwYWNlcywgdm1zLCBkb2NrZXIgY29udGFpbmVycywgbXVsdGktdGVuYW50IGRjcywgZXRj
LCBldGMuCgpBbGwgdGhlIGZlYXR1cmVzIG9mIGNha2Ugd2VyZSBkZXZlbG9wZWQgaW4gY2xvc2Ug
Y29sbGFib3JhdGlvbiB3aXRoCnRoZSBhY3R1YWwgdXNlcnMgb2YgU1FNIGluIHRoZSBmaWVsZC4K
ClRoYXQgcGFwZXI6IGh0dHBzOi8vYXJ4aXYub3JnL3BkZi8xODA0LjA3NjE3LnBkZiAtIHRhbGtz
IGFib3V0ICJIb21lIgpnYXRld2F5cyBidXQgc2luY2UgdGhlbiB3ZSBnb3QgaXQgdG8gc2NhbGUg
cGFzdCA1MEdpZ0UgaW4gc29mdHdhcmUKYWxvbmUuIEkgbG9vayBmb3J3YXJkIHRvIG1vcmUgaW5k
ZXBlbmRlbnQgYmVuY2htYXJraW5ncyBpbiBvdGhlcgpzY2VuYXJpb3MsIGFuZCB3ZSBkbyB0YWtl
IGJ1ZyByZXBvcnRzIG9uIHRoZSBnaXRodWIuCgpTb21lIG9mIHRoZSBuZXcgU0NFICgiU29tZSBD
b25nZXN0aW9uIEV4cGVyaWVuY2VkIikgcmVsYXRlZCB3b3JrIGhhcwpsYW5kZWQgaW4gdGhlIGh0
dHBzOi8vZ2l0aHViLmNvbS9kdGFodC9zY2hfY2FrZSByZXBvIGFscmVhZHkgKGFzIHdlbGwKYXMg
ZnFfY29kZWxfZmFzdCkgYnV0IHRoZSBtYWpvcml0eSBvZiB3b3JrIGlzIHRha2luZyBwbGFjZSBv
dmVyIGluCmpvbmF0aGFuJ3MgcmVwb3MgcHJlc2VudGx5LgoKVGhlcmUgaXMgYSBwYXBlciBwZW5k
aW5nLCBhbHNvLCBvbiB0aGUgaW1wcm92ZW1lbnRzIHRvIGNvZGVsIHRoYXQKam9uYXRoYW4gKHBy
aW1hcmlseSkgbWFkZSBpbiB0aGUgQ09CQUxUIEFRTSB0aGF0IEkgaG9wZSB3aWxsIGJlCnB1Ymxp
c2hlZCBzb29uLgoKT25lIHRoaW5nIEkndmUgbG9uZ2VkIGZvciBpcyBzb21lIGNvaGVyZW50IHRl
c3Rpbmcgb2YgdGhlIG1vZGVybgp2aWRlb2NvbmZlcmVuY2luZyBhbmQgcXVpYyBhbmQgYmJyIGNv
bmdlc3Rpb24gY29udHJvbCBhbGdvcml0aG1zCmFnYWluc3QgaXQuIElzIHRoZXJlIGFueW9uZSBv
dXQgdGhlcmUgYWJsZSB0byBkbyB0aGlzIGFuZCBwb3NzaWJseQpjb2xsYWJvcmF0ZSBvbiBhIHBh
cGVyIG9uIGl0PwoKSSB3YXMgcmVhbGx5IHF1aXRlIHVuYXdhcmUgdW50aWwgdGhpcyBwYXN0IGll
dGYgdGhhdCBzbyBmZXcgaGFkIGhhZCBhCnRhc3RlIG9mIGNha2UgeWV0LgoKdGh4IQoKLS0gCgpE
YXZlIFTDpGh0CkNUTywgVGVrTGlicmUsIExMQwpodHRwOi8vd3d3LnRla2xpYnJlLmNvbQpUZWw6
IDEtODMxLTIwNS05NzQwCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBz
Oi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
