Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D8041C9FC
	for <lists+cake@lfdr.de>; Wed, 29 Sep 2021 18:22:14 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id ED44B3CB49;
	Wed, 29 Sep 2021 12:22:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1632932529;
	bh=q5uCOipwJjHF4Qwl/AWeb1u0z6BtMcstfLN66DGf9kY=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MSPAZ0qIu/DQ6VievW581qFlLRZs4G/KmTKOdD/F1og9Dbm9hS+2O4GrxtYhdSLqE
	 ETvDOPGmRtWzy7dwZGAZhpkQT6xRdT0b8H1fB7lUgmk0CCcX/MrNzEutJl13XFJfZh
	 s0sHlMr8DVx8mE+FW88plPP3lUi21dtyjq2BroIV43/2zpvqxvYhi6wFMvhWL6ipyG
	 P2h4qugu88ZyLcQANOb28aWpoltUFOKJvrZZKRffdKypSO1HCAhPDjvaBx7VcNCF8U
	 aRQ3JlFbTXFZkb4ggliH9tsQu01sMpuqtxZwyN5RW4d4pm2gNp3Yxqfvs7egdUBjZH
	 6h1R7ahUbu2qA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd2c.google.com (mail-io1-xd2c.google.com
 [IPv6:2607:f8b0:4864:20::d2c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C44843B2A4;
 Wed, 29 Sep 2021 12:22:08 -0400 (EDT)
Received: by mail-io1-xd2c.google.com with SMTP id r75so3858528iod.7;
 Wed, 29 Sep 2021 09:22:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=1ecySe8Kj4eyDG6/e1o/5wQ8UrC77sZ17NkHzw9Iy2c=;
 b=b0UAmjhOSMkOfRrfkWaacEzin7mix/s1eafpyNGTBwRJq9/mKPCvPtkyxadyDBbKvw
 NxxNqyRs0w/gVjxxMH3kKLDh+gQQZ+goa1iUDdBxuBJJmpM2XLy0SOFpMrNNKKT6xglO
 685N6qzMBgLNhZtdm1Zg1LVowHauB0Bcn/ReLJrX9Nrya3meyZ8RpfQ1QOKDxagjCdiV
 vOVGlcjkJYIDJpAY+JmSos0LLXuESaLyeNCwZxpWPnJSpv/34YSLy4tuJH3vHxOJBdAh
 5mtwFC6l97nMVLQAE+xqetli6amCOxFT3WDKh6T/i4FOcRQmO2RajofXhO6Q5qxCjMZH
 DWMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=1ecySe8Kj4eyDG6/e1o/5wQ8UrC77sZ17NkHzw9Iy2c=;
 b=ueCM44BVM6nAkY53DjGusN4gQOUbKaGL/9LocMS2AJArv5OcDiOh77z5965ilYyWhd
 3iLQ94yzVO0B3iF6KxRF+6jmVi7G5+RjsHZQ7iC0l62ICQiXkclzLlL5rs0Wm/7WmU0B
 piqZon1BFukWA9a+opYvyMKgJod6GQ8S73sfCw83JLYCUzzuuFsWKscIfeP9KQqbZ22M
 gxhhNnQqN07SG6v4YA9m1CFjzIsptE9PHfhZ4hTix/J3HrAGSYS/Bze1J9iXujOOjsmS
 edQM+GrLwK1zRyJAdklW6XbJStwhAiUK7CMFstTlrEl4OcsWEmpJo8u8SQ1ijTFjYYhH
 qJRQ==
X-Gm-Message-State: AOAM5338nlv2DUW+7731uCI/XIL9rlBFMWbmPzHmhmbTkN4Rgb6FFbkV
 CKk49D3HlPAiG4iSiCfEKcpK9/Z2SE90wi+Tf217rF2a
X-Google-Smtp-Source: ABdhPJynk0rGXntzmXjtnsKagdCyUUrEuqMnAixAbUCWOaNG4I3XTdC7gWfaM0Ko8RNeQ8y4yM/DKD6/K6gdtps02kQ=
X-Received: by 2002:a05:6602:180e:: with SMTP id
 t14mr482809ioh.204.1632932527636; 
 Wed, 29 Sep 2021 09:22:07 -0700 (PDT)
MIME-Version: 1.0
References: <AD02259F-4E80-42B7-9B02-A50023EEF2F7@cl.cam.ac.uk>
In-Reply-To: <AD02259F-4E80-42B7-9B02-A50023EEF2F7@cl.cam.ac.uk>
From: Dave Taht <dave.taht@gmail.com>
Date: Wed, 29 Sep 2021 09:21:54 -0700
Message-ID: <CAA93jw5FxLg6a+=8FqQVgSgp=GV1PKfffH5WXB2PoFV_tqZcpg@mail.gmail.com>
To: Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, 
 Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] Fwd: [NetFPGA-announce] Announcing NetFPGA PLUS 1.0
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

LS0tLS0tLS0tLSBGb3J3YXJkZWQgbWVzc2FnZSAtLS0tLS0tLS0KRnJvbTogQW5kcmV3IE1vb3Jl
IDxhbmRyZXcubW9vcmVAY2wuY2FtLmFjLnVrPgpEYXRlOiBGcmksIFNlcCAyNCwgMjAyMSBhdCAy
OjU4IFBNClN1YmplY3Q6IFtOZXRGUEdBLWFubm91bmNlXSBBbm5vdW5jaW5nIE5ldEZQR0EgUExV
UyAxLjAKVG86IDxjbC1uZXRmcGdhLWFubm91bmNlQGxpc3RzLmNhbS5hYy51az4KCgoKSXQgaXMg
d2l0aCBncmVhdCBleGNpdGVtZW50IHdlIGFubm91bmNlIHRoZSByZWxlYXNlIG9mIE5ldEZQR0Eg
UExVUy4KCk5ldEZQR0EgUExVUyAxLjAKCk5ldEZQR0EgUExVUyAxLjAgaGFzIGFycml2ZWQsIGF2
YWlsYWJsZSBpbiBhIHB1YmxpYyByZXBvc2l0b3J5IHRvIGFsbCwKbGlua3Mgb24gdGhlIG5ldGZw
Z2Eub3JnIHdlYnNpdGUuIEnigJl2ZSByZXByaW50ZWQgdGhlIG91dGxpbmUsIGluY2x1ZGVkCmFz
IHBhcnQgb2YgdGhlIG9yaWdpbmFsIGFubm91bmNlbWVudCwgYXQgdGhlIGJvdHRvbSBvZiB0aGlz
Cm5ld3NsZXR0ZXIuIFRoZSBvdmVybHkgb3B0aW1pc3RpYyB0aW1ldGFibGUgZmVsbCB0byB0aGUg
YnJ1dGFsCnJlYWxpdGllcyBvZiB0aGUgbGFzdCA5IG1vbnRocy4KCk5ldEZQR0EgUExVUyBoYXMg
YmVlbiAgaXMgYSBtb21lbnRvdXMgZWZmb3J0IHRoYXQgbGFyZ2VseSBoYXMgZmFsbGVuCnRvIHRo
ZSBicm9hZCBzaG91bGRlcnMgb2YgdGhlIGluY3JlYXNpbmdseSBzbGltIE5ldEZQR0EgdGVhbSBh
dApDYW1icmlkZ2U7IG9uZSBwZXJzb24gaW4gcGFydGljdWxhciBkZXNlcnZlcyBtdWNoIGNyZWRp
dCBmb3IgdGhpcyBodWdlCmVmZm9ydCBhbmQgZm9yIHVzIGFjaGlldmluZyB0aGlzIGZpcnN0IHJl
bGVhc2UuCgpPbiBiZWhhbGYgb2YgdXMgYWxsLCBJIHRoYW5rIFl1dGEgVG9rdXNhc2hpIHdobyBo
YXMgbGVhZCB0aGUgTmV0RlBHQQpQTFVTIHdvcmsgdGhyb3VnaG91dCB0aGlzIGVmZm9ydCBhbmQg
d2hvIGhhcyBtYW5hZ2VkIHRoaXMgZGVzcGl0ZSB0aGUKZXh0cmFvcmRpbmFyeSBjaGFsbGVuZ2Vz
IG9mIHRoZSBsYXN0IDE4IG1vbnRocy4KCk1hbnkgY3JpdGljYWwgaXNzdWVzIHdlcmUgbWFuYWdl
ZCBhbmQgb3ZlcmNvbWUgd2l0aCB0aGUgZXhwZXJ0Cmd1aWRhbmNlIG9mIE5vYSBaaWxiZXJtYW4s
IHdoaWxlIHJlbGVhc2UgdGVzdGluZyBhbmQgcHJlcGFyYXRpb24gd291bGQKbm90IGhhdmUgYmVl
biBwb3NzaWJsZSB3aXRob3V0IHRoZSBhc3Npc3RhbmNlIG9mIFNhbHZhdG9yIEdhbGVhLgoKVGhp
cyBlbnRpcmUgZWZmb3J0IHdhcyBlbmFibGVkIGJ5IG1hbnkgbWVtYmVycyBvZiB0aGUgZXhjZWxs
ZW50IFhpbGlueAp0ZWFtIGZyb20gR29yZG9uIEJyZWJuZXLigJlzIGxlYWRlcnNoaXAgYW5kIGVu
dGh1c2lhc20gdGhyb3VnaCB0byB0aGUKcGhlbm9tZW5hbCBlZmZvcnRzIG9mIHRoZSBPcGVuLU5J
QyB0ZWFtOyBub3RhYmx5IFlhbiBaaGFuZywgYW5kIENocmlzCk5lZWx5LCBhcyB3ZWxsIGFzIGNy
aXRpY2FsIGFkdmljZSBmcm9tIENhdGhhbCBNY0NhYmUsIHBhcnQgb2YgWGlsaW54CmluIER1Ymxp
bi4KCk15IHBlcnNvbmFsIHRoYW5rcyBhbmQgb24gYmVoYWxmIG9mIHRoZSBOZXRGUEdBIGNvbW11
bml0eSB0byBlYWNoIG9mCnRoZW0uIChJ4oCZbSBleGNydWNpYXRpbmdseSBhd2FyZSB0aGUgbW9t
ZW50IEkgc2VuZCB0aGlzIGVtYWlsIEkgd2lsbApyZWFsaXNlIEnigJl2ZSBub3QgY3JlZGl0ZWQg
YSBjcml0aWNhbCBtZW1iZXIgb2YgdGhlIHRlYW0gLSBteSBhcG9sb2dpZXMKaW4gYWR2YW5jZS4p
CgpJIHdpbGwgbGVhdmUgc29tZSBkZXRhaWxzIHRvIGEgZnV0dXJlIG5ld3NsZXR0ZXIgLSBpbiBw
cmVwYXJhdGlvbiAtCmJ1dCBwcm9taXNlIGl0IHNob3J0bHksIGFzIHNvb24gYXMgd2UgaGF2ZSBh
bGwgY2F1Z2h0IHVwIG9uIG91ciBzbGVlcC4KCkRvIGNoZWNrIG91dCB0aGUgbmV3IHdlYnNpdGUs
IHRoYW5rcyB0byBBZGFtIFBldHRpZ3JldyBmb3IgaGlzIGVmZm9ydHMKdGhlcmU7IGFuZCBvZiBj
b3Vyc2UgZG8gY2hlY2sgb3V0IHRoZSBwdWJsaWMsIG9wZW5seSBhdmFpbGFibGUsIEFwYWNoZQps
aWNlbnNlZCwgTmV0RlBHQSBQTFVTIGNvZGViYXNlIHRvbyEKCkl0ZW1zIHBsYW5uZWQgZm9yIHRo
ZSBuZXh0IGFubm91bmNlbWVudCB3aWxsIGluY2x1ZGUKCjEuIExpY2Vuc2UgY2hhbmdlIGZvciBO
ZXRGUEdBCjIuIE5ldEZQR0EgUExVUyBwbGFucwozLiBOZXRGUEdBIFNVTUUgc3RhdHVzCgoKVGhh
bmsgeW91IGFsbCwKQW5kcmV3IE1vb3JlCm9uIGJlaGFsZiBvZiB0aGUgTmV0RlBHQSB0ZWFtLgoK
CgoKW2RpcmVjdCBjb3B5IG9mIHRoZSBQTFVTIGFubm91bmNlbWVudCBmcm9tIHRoZSBEZWNlbWJl
ciAyMDIwIE5ldEZQR0EgbmV3c2xldHRlcl0KCjUuIEFubm91bmNpbmcgTmV0RlBHQSBQTFVTIChm
b3JtZXJseSBOZXRGUEdBIDIwMjApIC0gMTAwR2JwcyBhbmQgYmV5b25kLgoKQXQgdGhlIEFDTSBT
T1NSMTkga2V5bm90ZSwgSSBhbm5vdW5jZWQgdGhlIE5ldEZQR0EgMjAyMCBwcm9qZWN0LAp0YWtp
bmcgZm9yd2FyZCB0aGUgTmV0RlBHQSBlY29zeXN0ZW0gdG8gMTAwR2Jwcy4KCkNhbGxlZCBOZXRG
UEdBIFBMVVMsIHRoaXMgd29yayBkb2VzIG5vdCByZXF1aXJlIGEgYmVzcG9rZSBOZXRGUEdBCmJv
YXJkLiBJbnN0ZWFkIHRoZSBjb2RlYmFzZSBpcyBkZXNpZ25lZCB0byB3b3JrIGFjcm9zcyBhIG51
bWJlciBvZiB0aGUKKGNvbW1vZGl0eSkgQWx2ZW8gYm9hcmRzIHRoYXQgdXRpbGlzZSB0aGUgWGls
aW54IFVsdHJhU2NhbGUrIEZQR0EKZmFtaWx5LiBUaGlzIHByb2plY3Qgd2lsbCBwcm92aWRlIG1v
cmUgb3B0aW9ucyBmb3IgdGhlIE5ldEZQR0EKY29tbXVuaXR5IGFuZCBtb3JlIG9wcG9ydHVuaXRp
ZXMgZm9yIE5ldEZQR0Egd29yayB0byBjb250aW51ZSB0byBiZQp0aGUgZm91bmRhdGlvbiBzdG9u
ZSBvZiBmdXR1cmUgZWR1Y2F0aW9uLCBmdXR1cmUgZGVzaWducywgZnV0dXJlCnJlc2VhcmNoLCBh
bmQgb25nb2luZyBzdWNjZXNzLgoKQXQgdGhpcyB0aW1lLCB3ZSBoYXZlIGJlZW4gdGVzdGluZyBh
Y3Jvc3MgYSBzdWJzZXQgb2YgdGhlIFhpbGlueCBBbHZlbwpib2FyZCBmYW1pbHk6IFUyMDAsIFUy
NTAsIFUyODAsIGFuZCBhbHNvIHRoZSBhbmNlc3RvciBWQ1UxNTI1IGJvYXJkLgoKQSB0eXBpY2Fs
IHNwZWNpZmljYXRpb24gKFZDVTE1MjUvVTIwMCBpbiB0aGlzIGNhc2UpIGlzIHN1cHBvcnQgZm9y
IHR3bwpRU0ZQMjggMTAwRyBwb3J0cywgUENJZSBHZW4zIHgxNiBvciBHZW40IHg4LCB1cCB0byA2
NEdCIG9mIEREUjQsIGFuZAphbiBGUEdBIHdoaWNoIHNwb3J0cyAyLDU4Nksgc3lzdGVtIGxvZ2lj
IGNlbGxzLCAzNDVNYml0IG9mIG9uIGNoaXAKbWVtb3J5IGFuZCBhIGdyZWF0IG1hbnkgb3RoZXIg
ZmVhdHVyZXMgYmVzaWRlLiBUaGUgVTI1MCBhbmQgVTI4MCBhcmUKZXZlbiBoaWdoZXIgc3BlY2lm
aWNhdGlvbiBzeXN0ZW1zLgoKQnVpbHQgdXBvbiB0aGUgWGlsaW54IFZpdmFkbyB0b29sY2hhaW4s
IHRoZSBpbml0aWFsIHJlbGVhc2Ugb2YgdGhlCk5ldEZQR0EtUExVUyBzeXN0ZW0gc3RpbGwgcHJv
dmlkZXMgdGhlIHNhbWUgbmZfZGF0YXBhdGggYXJjaGl0ZWN0dXJlCnRoYXQgd2Uga25vdyBhbmQg
bG92ZS4gIFRoZSBoeWJyaWQgYXBwcm9hY2ggb2YgdXNpbmcgTmV0RlBHQSBhbmQKWGlsaW54IGNv
bXBvbmVudHMgYnJpbmdzIHN0YW5kYXJkIGludGVyZmFjZXMgYW5kIGJvYXJkLXNwZWNpZmljIGJs
b2NrcwooZS5nLiwgQ01BQywgUENJZSksIGhvbGRzIHByb21pc2Ugb2YgYW4gZWFzaWVyIG1pZ3Jh
dGlvbiBiZXR3ZWVuCnBsYXRmb3Jtcywgd2hpbGUgaG9sZGluZyBjb25zdGFudCB0aGUgTmV0RlBH
QSBkYXRhcGF0aCBhbmQgbmV0d29ya2luZwpjYXBhYmlsaXRpZXMsIGFsb25nc2lkZSBob3N0IHNv
ZnR3YXJlIGFuZCB0aGUgYnVpbGQsIHRlc3QgYW5kCnNpbXVsYXRpb24gaW5mcmFzdHJ1Y3R1cmUg
Y3JpdGljYWwgZm9yIGRldmVsb3BtZW50LgoKSW4gdGhlIGZpcnN0IGluc3RhbmNlIHdlIGFyZSBm
b2N1c3NlZCB1cG9uIHRob3NlIHVzZXJzIHdpdGggb25lIG9yCm1vcmUgQWx2ZW8gYm9hcmRzIGlu
IGhhbmQgKG9yIGFjY2Vzc2libGUgcmVtb3RlbHkpLiBUaGUgaW5pdGlhbApyZWxlYXNlIChkdWUg
ZWFybHkgaW4gdGhlIG5ldyB5ZWFyKSB3aWxsIGhhdmUgdGhlIGJhc2ljIHJlZmVyZW5jZQpkZXNp
Z25zIG9mIE5ldEZQR0EtU1VNRToKLSAgTmV0d29yayBJbnRlcmZhY2UgQ2FyZCByZWZlcmVuY2Ug
cHJvamVjdAotICBTd2l0Y2ggcmVmZXJlbmNlIHByb2plY3QgKHNpbXBsZSBzd2l0Y2ggYW5kIGxl
YXJuaW5nIHN3aXRjaCksIGFuZAotICBJUHY0IFJvdXRlciByZWZlcmVuY2UgcHJvamVjdAoKYWxv
bmcgd2l0aCB0aGUgc3RhbmRhcmQgTmV0RlBHQSBQeXRob24zIGJhc2VkIHNpbXVsYXRpb24gYW5k
IGhhcmR3YXJlCnRlc3RpbmcgZnJhbWV3b3JrLgoKQWxzbyBvbiB0aGUgcGxhbm5pbmcgbGlzdCAo
YSByZWxlYXNlIGZvciBRMyAyMDIxKToKLSBGdWxseSBpbnRlZ3JhdGVkIFA0IGNvbXBpbGF0aW9u
IHN1cHBvcnQsIHRvIHByb3ZpZGUgYW4gb3BlbiBQNApoYXJkd2FyZSBwbGF0Zm9ybQotIE1BQy9Q
SFkgc3VwcG9ydCBmb3IgUVNGUDI4IHRvIDR4U0ZQMjgsIHBlcm1pdHRpbmcgdXAgdG8gOCAxMC8y
NUdicHMgcG9ydHMKLSBOZXcgZ2VuZXJhdGlvbiBvcGVuIHNvdXJjZSBuZXR3b3JrIHRlc3RlciBj
YXBhYmxlIG9mIG1hbnkgMTAwR2Jwcy4KCgoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmNsLW5ldGZwZ2EtYW5ub3VuY2UgbWFpbGluZyBsaXN0CmNs
LW5ldGZwZ2EtYW5ub3VuY2VAbGlzdHMuY2FtLmFjLnVrCmh0dHBzOi8vbGlzdHMuY2FtLmFjLnVr
L21haWxtYW4vbGlzdGluZm8vY2wtbmV0ZnBnYS1hbm5vdW5jZQoKCi0tIApGaXhpbmcgU3Rhcmxp
bmsncyBMYXRlbmNpZXM6IGh0dHBzOi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9YzlnTG82WHJ3
Z3cKCkRhdmUgVMOkaHQgQ0VPLCBUZWtMaWJyZSwgTExDCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVm
ZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
