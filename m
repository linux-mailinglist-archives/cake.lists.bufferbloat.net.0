Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C47520A62B
	for <lists+cake@lfdr.de>; Thu, 25 Jun 2020 21:54:02 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 5C2433CB38;
	Thu, 25 Jun 2020 15:54:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1593114841;
	bh=QgmLuIczbzffwAqTH4duqvNxskEyHBP6oO/+CkC7vqk=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=d8+PwZ5jcFEoSq02Tgwk+bP+OX+utqhN8kJarNRA4lPFQH5ngPog60S9aksNA0fT6
	 rzEN15/y+5W2kBLgNrLvcIloYFQoEdgD5IQLmNBd4bQ2/kf+N98xu3X38DSvmcp9uV
	 I+RISRFqxt7pNwvQkw4ZXdJbW2J2J2WR7BI56XR786x2Kl/wlMVHKaAVuhK30QWckE
	 93uQqn8xjJqDhwaKCLIvX84yrpOts/v+ok8UwTIgapBQEcvXIfBgAwdC/T6N3ped7z
	 LWeAdf0wlyuiHUXIjysr+S7zOjW+zYxxCptUHjoJtSNiM8WfUxXipGsoi/0ztmbxAr
	 BHmAifCGYTMcw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id ED2553B29D
 for <cake@lists.bufferbloat.net>; Thu, 25 Jun 2020 15:53:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1593114839;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4RcGLpg3u5qLcX1VpWke4rfqFK2+icMpY3Tee102yDY=;
 b=IUK3fugYxcxbageFWzsjTr+yjg2Tw6sLDAVeV7hSLJA2z/M1HVAg6VucesS2il/gm4119B
 YetHVAGgPFOcVMPAVXsCLFvbS3+cdPASbRwWU7CeD0PXR1taCBNOOcnF3zEdKnIHRtf5Nj
 +fIQwQhbKq5+lT1OsjVQGgipbO598Gc=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-299-n3xx70rvPgyfNkazzyGUog-1; Thu, 25 Jun 2020 15:53:57 -0400
X-MC-Unique: n3xx70rvPgyfNkazzyGUog-1
Received: by mail-ed1-f71.google.com with SMTP id i11so5962604edx.4
 for <cake@lists.bufferbloat.net>; Thu, 25 Jun 2020 12:53:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=cS7ZRqCXaXGLEgCdmvMXOz2AM+S+PTeNcCJzZKUNa0M=;
 b=TYn0dRFNhG/6+WiLXmxZJI2mXCmr5ZchjYpZADwdWDs88UoTDzJw9xfKHTP7PgH4Ee
 gv9AlNpmhqi6iVhOmgJwcBHdPsVf9jF0gvrN2Ya50qS+TNJVifm4+1KB58tFNi1Ce/OB
 GCHGjbOrAj0bd+KNPK+IBr3dUPYImNBJrdri4b5QKTW5Uu4NMYD2+VFjln6EVq65lnCb
 utRFtnDCY7iHcK2SbDNwiRA+sSdVqPJGk01Xe20AZtxFxhBzbk3tDTcJyEWzWL+2UnTs
 FQv5xDFOjgaopo5d6a94xchS7t3j4igJWtaqGR4VMIiGfWZ2db6f3Qsqw09DVqWGK1dA
 u2Eg==
X-Gm-Message-State: AOAM532/oiaA/B2THqb7OVl501n/2DAdc03p+opTlnkwW46aQ22MDwcC
 fqTU8aZ7cfXyIMOEMmiuYkaDF/dKMkcRZz4ivdTrRZnMmsMXxmX2dt5G9bFkEqYhtgJwUggGQpt
 S/VCl3H4ry3z7YDyZsHc3RA==
X-Received: by 2002:aa7:c24d:: with SMTP id y13mr24219490edo.123.1593114835833; 
 Thu, 25 Jun 2020 12:53:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxPpNmKIUZ03MOVPY6kzP3vRwyXHdLLFbQ9anv7+nD1LWLxtb1zeMHS+rbhu0pCCB+67BZMtg==
X-Received: by 2002:aa7:c24d:: with SMTP id y13mr24219479edo.123.1593114835649; 
 Thu, 25 Jun 2020 12:53:55 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id m13sm7655147ejc.1.2020.06.25.12.53.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Jun 2020 12:53:55 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 92A201814F9; Thu, 25 Jun 2020 21:53:53 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: David Miller <davem@davemloft.net>
In-Reply-To: <20200625.122945.321093402617646704.davem@davemloft.net>
References: <159308610282.190211.9431406149182757758.stgit@toke.dk>
 <159308610390.190211.17831843954243284203.stgit@toke.dk>
 <20200625.122945.321093402617646704.davem@davemloft.net>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Thu, 25 Jun 2020 21:53:53 +0200
Message-ID: <87k0zuj50u.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Cake] [PATCH net-next 1/5] sch_cake: fix IP protocol handling
	in the presence of VLAN tags
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

RGF2aWQgTWlsbGVyIDxkYXZlbUBkYXZlbWxvZnQubmV0PiB3cml0ZXM6Cgo+IEZyb206IFRva2Ug
SMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUByZWRoYXQuY29tPgo+IERhdGU6IFRodSwgMjUgSnVu
IDIwMjAgMTM6NTU6MDMgKzAyMDAKPgo+PiBGcm9tOiBJbHlhIFBvbmV0YXlldiA8aS5wb25ldGFl
dkBuZG1zeXN0ZW1zLmNvbT4KPj4gCj4+IENBS0Ugd2FzIHVzaW5nIHRoZSByZXR1cm4gdmFsdWUg
b2YgdGNfc2tiX3Byb3RvY29sKCkgYW5kIGV4cGVjdGluZyBpdCB0byBiZQo+PiB0aGUgSVAgcHJv
dG9jb2wgdHlwZS4gVGhpcyBjYW4gZmFpbCBpbiB0aGUgcHJlc2VuY2Ugb2YgUWluUSBWTEFOIHRh
Z3MsCj4+IG1ha2luZyBDQUtFIHVuYWJsZSB0byBoYW5kbGUgRUNOIG1hcmtpbmcgYW5kIGRpZmZz
ZXJ2IHBhcnNpbmcgaW4gdGhpcyBjYXNlLgo+PiBGaXggdGhpcyBieSBpbXBsZW1lbnRpbmcgb3Vy
IG93biB2ZXJzaW9uIG9mIHRjX3NrYl9wcm90b2NvbCgpLCB3aGljaCB3aWxsCj4+IHVzZSBza2It
PnByb3RvY29sIGRpcmVjdGx5LCBidXQgYWxzbyBwYXJzZSBhbmQgc2tpcCBvdmVyIGFueSBWTEFO
IHRhZ3MgYW5kCj4+IHJldHVybiB0aGUgaW5uZXIgcHJvdG9jb2wgbnVtYmVyIGluc3RlYWQuCj4+
IAo+PiBBbHNvIGZpeCBDRSBtYXJraW5nIGJ5IGltcGxlbWVudGluZyBhIHZlcnNpb24gb2YgSU5F
VF9FQ05fc2V0X2NlKCkgdGhhdAo+PiB1c2VzIHRoZSBzYW1lIHBhcnNpbmcgcm91dGluZS4KPj4g
Cj4+IEZpeGVzOiBlYTgyNTExNTE4ZjQgKCJzY2hfY2FrZTogQWRkIE5BVCBhd2FyZW5lc3MgdG8g
cGFja2V0IGNsYXNzaWZpZXIiKQo+PiBGaXhlczogYjIxMDBjYzU2ZmNhICgic2NoX2Nha2U6IFVz
ZSB0Y19za2JfcHJvdG9jb2woKSBoZWxwZXIgZm9yIGdldHRpbmcgcGFja2V0IHByb3RvY29sIikK
Pj4gRml4ZXM6IDA0NmY2ZmQ1ZGFlZiAoInNjaGVkOiBBZGQgQ29tbW9uIEFwcGxpY2F0aW9ucyBL
ZXB0IEVuaGFuY2VkIChjYWtlKSBxZGlzYyIpCj4+IFNpZ25lZC1vZmYtYnk6IElseWEgUG9uZXRh
eWV2IDxpLnBvbmV0YWV2QG5kbXN5c3RlbXMuY29tPgo+PiBbIHNxdWFzaCBvcmlnaW5hbCB0d28g
cGF0Y2hlcywgcmV3cml0ZSBjb21taXQgbWVzc2FnZSBdCj4+IFNpZ25lZC1vZmYtYnk6IFRva2Ug
SMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUByZWRoYXQuY29tPgo+Cj4gRmlyc3QsIHRoaXMgaXMg
YSBidWcgZml4IGFuZCBzaG91bGQgcHJvYmFibHkgYmUgc3RlZXJlZCB0byAnbmV0Jy4KPgo+IEFs
c28sIG90aGVyIHVzZXJzIG9mIHRjX3NrYl9wcm90b2NvbCgpIGFyZSBhbG1vc3QgY2VydGFpbmx5
IGhpdHRpbmcgYQo+IHNpbWlsYXIgcHJvYmxlbSBhcmVuJ3QgdGhleT8gIE1heWJlIGZpeCB0aGlz
IGdlbmVyaWNhbGx5LgoKSSB0aGluayBpdCBkZXBlbmRzIGEgbGl0dGxlIG9uIHRoZSB1c2UgY2Fz
ZTsgc29tZSBjYWxsZXJzIGFjdHVhbGx5IGNhcmUKYWJvdXQgdGhlIFZMQU4gdGFncyB0aGVtc2Vs
dmVzIGFuZCBoYW5kbGUgdGhhdCBzcGVjaWFsbHkgKGUuZy4sCmFjdF9jc3VtKS4gV2hlcmVhcyBv
dGhlcnMgKGUuZy4sIHNjaF9kc21hcmspIHByb2JhYmx5IHdpbGwgaGF2ZSB0aGUgc2FtZQppc3N1
ZS4gSSBndWVzcyBJIGNhbiB0cnlpbmcgZ29pbmcgdGhyb3VnaCB0aGVtIGFsbCBhbmQgZmlndXJp
bmcgb3V0IGlmCnRoZXJlJ3MgYSBtb3JlIGdlbmVyaWMgc29sdXRpb24uCgpJJ2xsIHNwbGl0IG91
dCB0aGUgZGlmZnNlcnYgcGFyc2luZyBmaXhlcyBhbmQgc2VuZCB0aG9zZSBmb3IgeW91ciBuZXQK
dHJlZSBzdHJhaWdodCBhd2F5LCB0aGVuIGNpcmNsZSBiYWNrIHRvIHRoaXMgb25lLi4uCgotVG9r
ZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBt
YWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZm
ZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
