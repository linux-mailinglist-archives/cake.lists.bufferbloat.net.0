Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3252643AB1A
	for <lists+cake@lfdr.de>; Tue, 26 Oct 2021 06:24:11 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 3A21B3CB48;
	Tue, 26 Oct 2021 00:24:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1635222245;
	bh=9muD+86C2cfS9BWbC7ULNAj5NZem4YpgJFPMgp2Npc0=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XXwGlmPYcHbcXw2xZgPvPaxgh6yL/LsBembhjVHcPpsrYsWKBpxG4YxOr+KnXIdWX
	 ay+JlIX79b/eXf+t0eL5YE0XtlM+Tkm0+u5BVsRA2DdvDLXzx/mrO2qdX5w3G1/K2U
	 fG4r0RnI9RFwfFPabESAWl7isIqSkr2Go2do9D70OMrSWo7HdtHGp3MsZbINg0S/+3
	 pgxdWXsdaGTbz0g1dPow4IsmlrG62smWUojoJXgjKdyA6iMGKSXzLxz9sslvRvjRxI
	 HkUHy8AiO3705xX6l/PTAga8EHR48egz4sVkPw71D0ih0oMRnL2cLagQADxazIq2nX
	 aGoVA71ueKv9A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com
 [IPv6:2607:f8b0:4864:20::52b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id E4B683B2A4;
 Tue, 26 Oct 2021 00:24:03 -0400 (EDT)
Received: by mail-pg1-x52b.google.com with SMTP id e65so12846733pgc.5;
 Mon, 25 Oct 2021 21:24:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=PKb7UU1QSgRHi5jYJKikFlYHRXkEGpsBiEsJ2fQnE30=;
 b=PL01X5O9yz8rAexDpkpxxpmYnwuiPzKDsNP180RoMDJ9bcNczxaWYls+UalMCIULQg
 H68azVecPYIxyTIvAROgyztXp+uJDpcDE5Pn8IbK6sOsLztxjQi4+Sg018iCgwzDC6M8
 F+YS+97OTIgsrh5oFrXPWSuTnhzAorhvO0O3hebCqBW2h4fCPYOn1Qpo3JgCRK4qm3kY
 l1e+4tK5LexVwAMRIrJIUU4g+Jnrq25MeK/C3Kk9YNL5e0MhM3SFc476cMfFW9ZTsjL1
 SzedyLvsAvxiLUuGxYvJxjzPI1paVwSf0dZrMIrtBeaHu036Irw+Y/bKVgijhPTlD2Uf
 2ipA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=PKb7UU1QSgRHi5jYJKikFlYHRXkEGpsBiEsJ2fQnE30=;
 b=e+PWhcTxFtzLEW+yLp7Ss2df1npgn9oTLWC8ZGvboSr5AmM+p8sCygAHSwbCCVdOvs
 RN4HMpzEmL2ZVIJ/zQxVZruqwzL7obRE4Bjj3WvqCwupR7ObN1GPyJg5pPtJxDhjIXmk
 8ICF2j6D+wk2aXYVrNCdC/bAIkxffmoQieQQ1tDx8RLICy3xU+6a2kyPO8sEYDCDeal/
 IMslqkvW9z+Cv/XpsdJzxI5uJ764denQCpu2DOoVWq2NVk4epIBNcY3FWndVzRGEJFGh
 4gXy+V8JxULTj1Kkm8E6X4ihaRQo7VwX445NMrI4aK4EINSOhvFLd+AFbfiurqR7OdDD
 uAkQ==
X-Gm-Message-State: AOAM533hLjprr3ml2k5q8iDYk/CemcUY6UcOGX+hHrYoy0wVluAfzvOd
 OfVSrlbDty8C1yJmkW/vD90=
X-Google-Smtp-Source: ABdhPJz/UOqdqlhGynStBjdV7Gt+qvrR0RNstSiDSHlpdvElGsLOKWc7608LOAVw0P758IoiIwbT6w==
X-Received: by 2002:a62:e901:0:b0:47b:f1bc:55e4 with SMTP id
 j1-20020a62e901000000b0047bf1bc55e4mr9934159pfh.0.1635222242926; 
 Mon, 25 Oct 2021 21:24:02 -0700 (PDT)
Received: from [192.168.86.235] (c-73-241-150-58.hsd1.ca.comcast.net.
 [73.241.150.58])
 by smtp.gmail.com with ESMTPSA id k14sm20577188pji.45.2021.10.25.21.24.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 Oct 2021 21:24:02 -0700 (PDT)
To: Stuart Cheshire <cheshire@apple.com>,
 Bob McMahon <bob.mcmahon@broadcom.com>
References: <CAA93jw7ZFWRWsBK-R1See9jRCASHd1U8ZFawyDXOT8fh2pLTag@mail.gmail.com>
 <1625188609.32718319@apps.rackspace.com>
 <CAA93jw5wQ5PYL08hWcdUucUYWt-n=uKDAbF23Pp3t5u9dEDEng@mail.gmail.com>
 <CAHb6LvrjgKnfe_jaGgx7_B1VDTkZfTmP0OyTmxL9ojWoxogrsA@mail.gmail.com>
 <989de0c1-e06c-cda9-ebe6-1f33df8a4c24@candelatech.com>
 <1625773080.94974089@apps.rackspace.com>
 <FDF5C7A7-47A6-4123-A948-352C07C35F02@cs.ucla.edu>
 <CAH8sseShtJHZ1mZWu-hhKYsDLG_LC9GBpX9XRrj68yyzQLPcAg@mail.gmail.com>
 <1625859083.09751240@apps.rackspace.com>
 <CAA93jw5QyH4SqKT07hP+skijfimZ0GU=AgLJtkVOQGzKrAkazg@mail.gmail.com>
 <257851.1632110422@turing-police>
 <CABf5zv+yq_oJ7O7YqVeSbZ2Qns3C4hESzNA2V0zNb0L1Zg-mgw@mail.gmail.com>
 <CAHxHggd-4rZ5Nc4raaoRUjjL17MVh8UsNu_5eL8eiLJ=R_68wA@mail.gmail.com>
 <CAHb6Lvp86iw=DQMN8Z+f7yUJu-5pmVUxsM1_1Jw8RJb2XRcMcg@mail.gmail.com>
 <1632680642.869711321@apps.rackspace.com>
 <CAHb6Lvp1dxnbuCNiE5FKC-yRyD6HGkb0H1ZQAm_nSxANwJg2pA@mail.gmail.com>
 <E3373586-EF4C-40DF-885B-0D6134E6EAF1@apple.com>
From: Eric Dumazet <eric.dumazet@gmail.com>
Message-ID: <0e29e225-9f55-4392-640a-2d27c4c26116@gmail.com>
Date: Mon, 25 Oct 2021 21:24:00 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <E3373586-EF4C-40DF-885B-0D6134E6EAF1@apple.com>
Content-Language: en-US
Subject: Re: [Cake] [Bloat] [Make-wifi-fast] TCP_NOTSENT_LOWAT applied to
 e2e TCP msg latency
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
 =?UTF-8?Q?Valdis_Kl=c4=93tnieks?= <valdis.kletnieks@vt.edu>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 starlink@lists.bufferbloat.net, codel <codel@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Steve Crocker <steve@shinkuro.com>,
 Vint Cerf <vint@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

CgpPbiAxMC8yNS8yMSA4OjExIFBNLCBTdHVhcnQgQ2hlc2hpcmUgdmlhIEJsb2F0IHdyb3RlOgo+
IE9uIDIxIE9jdCAyMDIxLCBhdCAxNzo1MSwgQm9iIE1jTWFob24gdmlhIE1ha2Utd2lmaS1mYXN0
IDxtYWtlLXdpZmktZmFzdEBsaXN0cy5idWZmZXJibG9hdC5uZXQ+IHdyb3RlOgo+IAo+PiBIaSBB
bGwsCj4+Cj4+IFNvcnJ5IGZvciB0aGUgc3BhbS4gSSdtIHRyeWluZyB0byBzdXBwb3J0IGEgbWVh
bmluZ2Z1bCBUQ1AgbWVzc2FnZSBsYXRlbmN5IHcvaXBlcmYgMiBmcm9tIHRoZSBzZW5kZXIgc2lk
ZSB3L28gcmVxdWlyaW5nIGUyZSBjbG9jayBzeW5jaHJvbml6YXRpb24uIEkgdGhvdWdodCBJJ2Qg
dHJ5IHRvIHVzZSB0aGUgVENQX05PVFNFTlRfTE9XQVQgZXZlbnQgdG8gaGVscCB3aXRoIHRoaXMu
IEl0IHNlZW1zIHRoYXQgdGhpcyBldmVudCBnb2VzIG9mZiB3aGVuIHRoZSBieXRlcyBhcmUgaW4g
ZmxpZ2h0IHZzIGhhdmUgcmVhY2hlZCB0aGUgZGVzdGluYXRpb24gbmV0d29yayBzdGFjay4gSWYg
dGhhdCdzIHRoZSBjYXNlLCB0aGVuIGlwZXJmIDIgY2xpZW50IChzZW5kZXIpIG1heSBiZSBhYmxl
IHRvIHByb2R1Y2UgdGhlIG1lc3NhZ2UgbGF0ZW5jeSBieSBhZGRpbmcgdGhlIGRyYWluIHRpbWUg
KHdyaXRlIHN0YXJ0IHRvIFRDUF9OT1RTRU5UX0xPV0FUKSBhbmQgdGhlIHNhbXBsZWQgUlRULgo+
Pgo+PiBEb2VzIHRoaXMgc2VlbSByZWFzb25hYmxlPwo+IAo+IEnigJltIG5vdCAxMDAlIHN1cmUg
d2hhdCB5b3XigJlyZSBhc2tpbmcsIGJ1dCBJIHdpbGwgdHJ5IHRvIGhlbHAuCj4gCj4gV2hlbiB5
b3Ugc2V0IFRDUF9OT1RTRU5UX0xPV0FULCB0aGUgVENQIGltcGxlbWVudGF0aW9uIHdvbuKAmXQg
cmVwb3J0IHlvdXIgZW5kcG9pbnQgYXMgd3JpdGFibGUgKGUuZy4sIHZpYSBrcXVldWUgb3IgZXBv
bGwpIHVudGlsIGxlc3MgdGhhbiB0aGF0IHRocmVzaG9sZCBvZiBkYXRhIHJlbWFpbnMgdW5zZW50
LiBJdCB3b27igJl0IHN0b3AgeW91IHdyaXRpbmcgbW9yZSBieXRlcyBpZiB5b3Ugd2FudCB0bywg
dXAgdG8gdGhlIHNvY2tldCBzZW5kIGJ1ZmZlciBzaXplLCBidXQgaXQgd29u4oCZdCAqYXNrKiB5
b3UgZm9yIG1vcmUgZGF0YSB1bnRpbCB0aGUgVENQX05PVFNFTlRfTE9XQVQgdGhyZXNob2xkIGlz
IHJlYWNoZWQuCgoKV2hlbiBJIGltcGxlbWVudGVkIFRDUF9OT1RTRU5UX0xPV0FUIGJhY2sgaW4g
MjAxMyBbMV0sIEkgbWFkZSBzdXJlIHRoYXQgc2VuZG1zZygpIHdvdWxkIGFjdHVhbGx5CnN0b3Ag
ZmVlZGluZyBtb3JlIGJ5dGVzIGluIFRDUCB0cmFuc21pdCBxdWV1ZSBpZiB0aGUgY3VycmVudCBh
bW91bnQgb2YgdW5zZW50IGJ5dGVzCndhcyBhYm92ZSB0aGUgdGhyZXNob2xkLgoKU28gaXQgbG9v
a3MgbGlrZSBBcHBsZSBpbXBsZW1lbnRhdGlvbiBpcyBkaWZmZXJlbnQsIGJhc2VkIG9uIHlvdXIg
ZGVzY3JpcHRpb24gPwoKWzFdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9r
ZXJuZWwvZ2l0L25ldGRldi9uZXQuZ2l0L2NvbW1pdC8/aWQ9YzliZWUzYjdmZGVjYjBjMWQwNzBj
N2I1NDExM2IzYmRmYjlhM2QzNgoKbmV0cGVyZiBkb2VzIG5vdCB1c2UgZXBvbGwoKSwgYnV0IHJh
dGhlciBhIGxvb3Agb3ZlciBzZW5kbXNnKCkuCgpPbmUgb2YgdGhlIHBvaW50IG9mIFRDUF9OT1RT
RU5UX0xPV0FUIGZvciBHb29nbGUgd2FzIHRvIGJlIGFibGUgdG8gY29uc2lkZXJhYmx5IGluY3Jl
YXNlCm1heCBudW1iZXIgb2YgYnl0ZXMgaW4gdHJhbnNtaXQgcXVldWVzICgzcmQgY29sdW1uIG9m
IC9wcm9jL3N5cy9uZXQvaXB2NC90Y3Bfd21lbSkKYnkgMTB4LCBhbGxvd2luZyBmb3IgYXV0b3R1
bmUgdG8gaW5jcmVhc2UgQkRQIGZvciBiaWcgUlRUIGZsb3dzLCB0aGlzIHdpdGhvdXQKaW5jcmVh
c2luZyBtZW1vcnkgbmVlZHMgZm9yIGZsb3dzIHdpdGggc21hbGwgUlRULgoKIEluIG90aGVyIHdv
cmRzLCB0aGUgVENQIGltcGxlbWVudGF0aW9uIGF0dGVtcHRzIHRvIGtlZXAgQkRQIGJ5dGVzIGlu
IGZsaWdodCArIFRDUF9OT1RTRU5UX0xPV0FUIGJ5dGVzIGJ1ZmZlcmVkIGFuZCByZWFkeSB0byBn
by4gVGhlIEJEUCBvZiBieXRlcyBpbiBmbGlnaHQgaXMgbmVjZXNzYXJ5IHRvIGZpbGwgdGhlIG5l
dHdvcmsgcGlwZSBhbmQgZ2V0IGdvb2QgdGhyb3VnaHB1dC4gVGhlIFRDUF9OT1RTRU5UX0xPV0FU
IG9mIGJ5dGVzIGJ1ZmZlcmVkIGFuZCByZWFkeSB0byBnbyBpcyBwcm92aWRlZCB0byBnaXZlIHRo
ZSBzb3VyY2Ugc29mdHdhcmUgc29tZSBhZHZhbmNlIG5vdGljZSB0aGF0IHRoZSBUQ1AgaW1wbGVt
ZW50YXRpb24gd2lsbCBzb29uIGJlIGxvb2tpbmcgZm9yIG1vcmUgYnl0ZXMgdG8gc2VuZCwgc28g
dGhhdCB0aGUgYnVmZmVyIGRvZXNu4oCZdCBydW4gZHJ5LCB0aGVyZWJ5IGxvd2VyaW5nIHRocm91
Z2hwdXQuIChUaGUgb2xkIFNPX1NOREJVRiBvcHRpb24gY29uZmxhdGVzIGJvdGgg4oCcYnl0ZXMg
aW4gZmxpZ2h04oCdIGFuZCDigJxieXRlcyBidWZmZXJlZCBhbmQgcmVhZHkgdG8gZ2/igJ0gaW50
byB0aGUgc2FtZSBudW1iZXIuKQo+IAo+IElmIHlvdSB3YWl0IGZvciB0aGUgVENQX05PVFNFTlRf
TE9XQVQgbm90aWZpY2F0aW9uLCB3cml0ZSBhIGNodW5rIG9mIG4gYnl0ZXMgb2YgZGF0YSwgYW5k
IHRoZW4gd2FpdCBmb3IgdGhlIG5leHQgVENQX05PVFNFTlRfTE9XQVQgbm90aWZpY2F0aW9uLCB0
aGF0IHdpbGwgdGVsbCB5b3Ugcm91Z2hseSBob3cgbG9uZyBpdCB0b29rIG4gYnl0ZXMgdG8gZGVw
YXJ0IHRoZSBtYWNoaW5lLiBZb3Ugd29u4oCZdCBrbm93IHdoeSwgdGhvdWdoLiBUaGUgYnl0ZXMg
Y291bGQgZGVwYXJ0IHRoZSBtYWNoaW5lIGluIHJlc3BvbnNlIGZvciBhY2tzIGluZGljYXRpbmcg
dGhhdCB0aGUgc2FtZSBudW1iZXIgb2YgYnl0ZXMgaGF2ZSBiZWVuIGFjY2VwdGVkIGF0IHRoZSBy
ZWNlaXZlci4gQnV0IHRoZSBieXRlcyBjYW4gYWxzbyBkZXBhcnQgdGhlIG1hY2hpbmUgYmVjYXVz
ZSBDV05EIGlzIGdyb3dpbmcuIE9mIGNvdXJzZSwgYm90aCBvZiB0aG9zZSB0aGluZ3MgYXJlIHVz
dWFsbHkgaGFwcGVuaW5nIGF0IHRoZSBzYW1lIHRpbWUuCj4gCj4gSG93IHRvIHVzZSBUQ1BfTk9U
U0VOVF9MT1dBVCBpcyBleHBsYWluZWQgaW4gdGhpcyB2aWRlbzoKPiAKPiA8aHR0cHM6Ly9kZXZl
bG9wZXIuYXBwbGUuY29tL3ZpZGVvcy9wbGF5L3d3ZGMyMDE1LzcxOS8/dGltZT0yMTk5Pgo+IAo+
IExhdGVyIGluIHRoZSBzYW1lIHZpZGVvIGlzIGEgdHdvLW1pbnV0ZSBkZW1vICh0aW1lIG9mZnNl
dCA0MjowMCB0byB0aW1lIG9mZnNldCA0NDowMCkgc2hvd2luZyBhIOKAnGJlZm9yZSBhbmQgYWZ0
ZXLigJ0gZGVtbyBpbGx1c3RyYXRpbmcgdGhlIGRyYW1hdGljIGRpZmZlcmVuY2UgdGhpcyBtYWtl
cyBmb3Igc2NyZWVuIHNoYXJpbmcgcmVzcG9uc2l2ZW5lc3MuCj4gCj4gPGh0dHBzOi8vZGV2ZWxv
cGVyLmFwcGxlLmNvbS92aWRlb3MvcGxheS93d2RjMjAxNS83MTkvP3RpbWU9MjUyMD4KPiAKPiBT
dHVhcnQgQ2hlc2hpcmUKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IEJsb2F0IG1haWxpbmcgbGlzdAo+IEJsb2F0QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5l
dAo+IGh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Jsb2F0Cj4gCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBs
aXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQu
bmV0L2xpc3RpbmZvL2Nha2UK
