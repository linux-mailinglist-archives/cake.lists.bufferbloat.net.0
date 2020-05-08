Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D4A31CA47B
	for <lists+cake@lfdr.de>; Fri,  8 May 2020 08:50:52 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 1C5173CB39;
	Fri,  8 May 2020 02:50:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1588920651;
	bh=v4iyF2PsGrqQTLF5G7LMIhXf/Kpd/RfR+/2x/fHOZgc=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AA8839te0OhgOIDeGVT/0oE+2jZFNTgzei0NkwREG2+pVKlu6w/MzBkqpk2GjABBN
	 UX6gq1CnBqNu+um3NbS6d+1AL1sImdRTcIv2zqV2Vul4gon6mhEp+KFkN11ORpSKJp
	 3wzc9NhFpLjFgCi+DplvDJrfC8XihFOE39+B2ud6YEpuiKrlXxrGPKmDBZwCNu9ZPT
	 3uTvjxC2BYgzHdMhParn1ileRmeW8sSh2Bvs7fD0rB8CgflQZ3WS3laZrvvmR4HhB3
	 WEGeDg4QUZ5ec8tifhm1kgjivqcWzrQxYQtC1IHjzAivreCOmRJx9EB/y5b3/SzKQ4
	 /pSAv22pD9ijA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd33.google.com (mail-io1-xd33.google.com
 [IPv6:2607:f8b0:4864:20::d33])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 8C5183B2A4
 for <cake@lists.bufferbloat.net>; Fri,  8 May 2020 02:50:50 -0400 (EDT)
Received: by mail-io1-xd33.google.com with SMTP id w4so800194ioc.6
 for <cake@lists.bufferbloat.net>; Thu, 07 May 2020 23:50:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=4XnFBnGr43qCOC8ft3QrLvLWdYAi3rJtyU/hWGZozf4=;
 b=QJKoQJIbYj8JEGo4LkCWWWS+Pz3BNvSA8XXRgV/5d3VhCjlC5yVyyUbzoMeYMDfjWy
 Pf09yoT3fg/uJesTBYgUVf0Er/hKpQFPwGL7UUJa8jKCNWWSdNadxM5r0zMQDhzpQ/YH
 bDQEtMzUS1Bcx0nf4K3zwpXlzNbselHw3GIQ1DRXx92CV9JVXT1vkXTx6i7fUYfNc30O
 D82i4YzR2CqvAoETc0XMVU+YQsXgKgA3WRSBzBl77m2k29ts4YPRLufFPEuz6/3MWPl0
 wB1meWpWEjrZkRqnAfrKKuyI/RR6U4NB1f/DCxDmDzBAPHLXIPKt8av9brMLCRhZoBV4
 s0sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=4XnFBnGr43qCOC8ft3QrLvLWdYAi3rJtyU/hWGZozf4=;
 b=bv4xWwdjzkD3espFeucH3KZUc3mTZ2B74c3Y4TFhdgE64j3N7lDo8HOHzXHlMVfSa6
 c7mnUfUjycJ6uvapwWvwk3YXdBJxrijFuRa595C949ZvyG+ndGqWPJFuTx2LgOJZNk7L
 wRuugxBXX8wSQGH8PaNsbUqr/o3DbXWUFhRYHFhJofJvHSH/y5A9Usxt7qV6i45ANWBM
 PMwKZ/yJeW+u13Pz5Ct+AA5G+4NUQcDD+1zZ6ALjr4G7GKCGPW4Vm3TaJHJxdGzGE2fc
 B4jbsm7OBCGcTUvYdqjRrHfHQRrTGuxqbWbiEOGQHsAKhZoMCHCoMalQT60XA+z48QQS
 VuhQ==
X-Gm-Message-State: AGi0Pubm+QZ4+JWS2MNKCIH4Zfu0+waqaQMihD77nLkhV6aO/Jf0VSDU
 y3GE+0aXfy7PrIitEdoIZLFWndwrr1M6XRfqh5M=
X-Google-Smtp-Source: APiQypLGW4UgW5KfqFvdBINAacbDOjYk9WXm5D9nmja+mI/yu8Kk+ct425sU1z5ebnD5y4PS1oIZszSh7clCWOUtREk=
X-Received: by 2002:a6b:510d:: with SMTP id f13mr1216505iob.25.1588920650019; 
 Thu, 07 May 2020 23:50:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAC8NkTBHv6_6u21bRu2BcEAW2X1Sio-JWvCYwQgLR2q-6eBgOA@mail.gmail.com>
 <C24C4CCB-C30D-452A-9386-5AA533F11CEE@gmail.com> <87wo5okhbo.fsf@toke.dk>
 <CAC8NkTCYBokx0NedyuOKjhZqUMHXAc5tZtObTpdyjkvE4U_zUw@mail.gmail.com>
 <A85845BB-010A-4F39-99F4-C6206F7FEA65@gmx.de>
 <CAC8NkTBRWrhAQneAf6ZacTzWLYyM5TqX6jmD4-fafAD=7iPgfQ@mail.gmail.com>
In-Reply-To: <CAC8NkTBRWrhAQneAf6ZacTzWLYyM5TqX6jmD4-fafAD=7iPgfQ@mail.gmail.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Thu, 7 May 2020 23:50:38 -0700
Message-ID: <CAA93jw6xZRcUerJ8JuxjtjW2_C+wyAUKRtqDojPj6hLdg1w0Dg@mail.gmail.com>
To: Avakash bhat <avakash261@gmail.com>
Subject: Re: [Cake] Query on ACK
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
Cc: Vybhav Pai <vybhavpai1999.vp@gmail.com>,
 Shrinidhi Varna <shrinidhivarna.171co145@nitk.edu.in>,
 Cake List <cake@lists.bufferbloat.net>,
 "Mohit P. Tahiliani" <tahiliani@nitk.edu.in>,
 Deepak K <deepakkavoor99@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gVGh1LCBNYXkgNywgMjAyMCBhdCAxMTozNiBQTSBBdmFrYXNoIGJoYXQgPGF2YWthc2gyNjFA
Z21haWwuY29tPiB3cm90ZToKPgo+IE9rIHRoYW5rcyBzbyBtdWNoIGZvciB0aGUgY2xhcmlmaWNh
dGlvbnMuCj4gVGhhdCBjbGVhcmVkIGl0IHVwIHF1aXRlIGEgYml0LgoKSSBub3RlIHRoYXQgdGhl
cmUgd2FzIHNvbWV0aGluZyByZWFsbHkgc3VidGxlIHRoYXQgY291bGQgaGF2ZSBiZWVuCmRvbmUg
dG8gaW1wcm92ZSBjYWtlJ3MgYWNrIGhhbmRsaW5nLCBhbmQgZm9yIGFsbCBJIGtub3cKaXQgYWN0
dWFsbHkgaGFwcGVuZWQgaW4gdGhlIGZpbmFsIGNvZGViYXNlLgoKc28sIHBsZWFzZSwgZ28gZm9y
dGggYW5kIGR1cGxpY2F0ZSB0aGUgZXhpc3RpbmcgaW1wbGVtZW50YXRpb24sIGFuZAppZ25vcmUg
bWUsIGNhdXNlIGxvb2tpbmcgYXQgdGhpcyBoYWlyeSBjb2RlIGdpdmVzIG1lIGEKaGVhZGFjaGUu
Cgphbnl3YXksIHRvIHRyeSBhbmQgZGVzY3JpYmUgd2hhdCBJIHRob3VnaHQgSSBzYXcgYW4gaW50
ZXJhY3Rpb24gd2l0aAp0aGUgc2NoZWR1bGVyIGJhY2sgaW4gdGhlIGRheS4KClRoZSBhY2stZmls
dGVyIHJ1bnMsIGRlbGV0aW5nIGFsbCBidXQgb25lIHBhY2tldCBmcm9tIHRoZSBhY2sgcXVldWUs
CmFuZCBkZWxpdmVycyB0aGF0Lgp0aGUgc2NoZWR1bGVyIHJ1bnMsIHNlcnZlcyBhIGJ1bmNoIG9m
IG90aGVyIGZsb3dzLCB0aGVuIHJldHVybnMgdG8gdGhlCmFjayBxdWV1ZSwgd2hpY2ggaGFzIGFj
Y3VtdWxhdGVkIGEgY291cGxlIG1vcmUgcGFja2V0cywKdGhlIGFjay1maWx0ZXIgcnVucywgZGVs
ZXRpbmcgYWxsIGJ1dCBvbmUgcGFja2V0IGZyb20gdGhlIGFjayBxdWV1ZSwKYW5kIGRlbGl2ZXJz
IHRoYXQsIGJ1dCBkb2Vzbid0IGV4aGF1c3QgaXRzIHFhdW50dW0KYnV0IG5vdyB0aGF0IGZsb3cg
aXMgaW4gdGhlICJmYXN0IiBxdWV1ZSwgYW5kIHdlIHNlcnZpY2UganVzdCBhIGZldwpvdGhlciBm
bG93cywgYW5kIHJldHVybiB0byBpdCwgZGVsZXRlIGEgY291cGxlLCBzZXJ2aWNlIG9uZS4uLiBh
bmQKc3RheSBzdHVjayBpbiB0aGUgZmFzdCBxdWV1ZS4KCmJldHRlciwgSSB0aG91Z2h0LCB3YXMg
b25jZSB0aGUgYWNrIGZpbHRlciBleGNlZWRlZCB0aGUgcXVhbnR1bSBvZgpwYWNrZXRzIGZvciB0
aGF0IGZsb3cgaW4gdGhhdCBkcnIgcm91bmQsIGV2ZW4gaWYgaXQgb25seSBkZWxpdmVyZWQgb25l
CnBhY2tldCwKdGhhdCBpdCBzaG91bGQgYWx3YXlzIHJldHVybiBpdCB0byB0aGUgYnVsayBxdWV1
ZSwgYmVjYXVzZSB0b25zIG1vcmUKcGFja2V0cyB3b3VsZCBhcnJpdmUgaW4gdGhlIGludGVydmFs
IGJldHdlZW4gc2VydmljaW5nCmFsbCB0aGUgcmVzdCBvZiB0aGUgZmxvd3MsIHRodXMgbW9yZSBv
ZiB3aGljaCBjb3VsZCBiZSBzYWZlbHkgcmVtb3ZlZCwKd2hpbGUgbWFpbnRhaW5pbmcgYSBzdGVh
ZGllciBjbG9jayBmb3IgdGNwLgoKSSd2ZSBhbHJlYWR5IHNlZW4gY2FrZSByZW1vdmUgb3ZlciAy
NSUgb2YgYWxsIGFjayBwYWNrZXRzIHdpdGggbm8gaGFybQp0byB0aGUgb3RoZXIgZmxvd3MuIFNv
IGZvciBhbGwgSSBrbm93IChhbmQgSSdkIGhhdmUgdG8KbG9vaykgaXQncyBhbHJlYWR5IGRvaW5n
IGl0IHRoaXMgd2F5LgoKPgo+IFRoYW5rcywKPiBBdmFrYXNoIEJoYXQKPgo+IE9uIFRodSwgTWF5
IDcsIDIwMjAgYXQgMTI6MzcgUE0gU2ViYXN0aWFuIE1vZWxsZXIgPG1vZWxsZXIwQGdteC5kZT4g
d3JvdGU6Cj4+Cj4+IEkgdGhpbmsgdGhhdCB5b3Ugd2lsbCByZW1vdmUgYWxsIHJlZHVuZGFudCBC
YWNrcyBpbiBvbmUgZ28gY29uc2lkZXJhYmx5IGFkdmFuY2luZyB0aGUgbmV3IEFDSyBpbiB0aGUg
cXVldWUuIEFuZCBtb3JlIGltcG9ydGFudGx5LCBpbiBtb3N0IHJlbGV2YW50IG1vZGVzIGNha2Ug
d2lsbCBhcHBseSBvbmUgcXVldWUgcGVyIGZsb3cgc3RvY2hhc3RpY2FsbHksIHNvIGFsbW9zdCBh
bGwgcGFja2V0J3MgaW4gYSByZXZlcnNlIEFDSyBmbG93IHdpbGwgYmUgQUNLIHdpdGggaWRlbnRp
Y2FsIDUtdHVwZWwuLi4uCj4+Cj4+IE9uIDcgTWF5IDIwMjAgMDg6NDQ6NTkgQ0VTVCwgQXZha2Fz
aCBiaGF0IDxhdmFrYXNoMjYxQGdtYWlsLmNvbT4gd3JvdGU6Cj4+Pgo+Pj4KPj4+IFRoYW5rcyBm
b3IgdGhlIHF1aWNrIHJlc3BvbnNlLiBJIGFsc28gaGFkIGEgZm9sbG93dXAgcXVlc3Rpb24uCj4+
Pgo+Pj4gSWYgdGhlIGFjayBmaWx0ZXIgYWRkcyB0aGUgbmV3IGFjayB0byB0aGUgdGFpbCBvZiB0
aGUgcXVldWUgYWZ0ZXIgcmVtb3ZpbmcgYW4gYWNrIGZyb20gdGhlIHF1ZXVlLCB3b24ndCBpdCBi
ZSBzdGFydmluZyB0aGUgYWNrPwo+Pj4gVGhlIHJlcGxhY2VkIGFjayB3YXMgbXVjaCBhaGVhZCBp
biB0aGUgcXVldWUgdGhhbiB0aGUgYWNrIHdlIHJlcGxhY2VkIGF0IHRoZSB0YWlsIHJpZ2h0Pwo+
Pj4KPj4+IFRoYW5rcywKPj4+IEF2YWthc2ggQmhhdAo+Pgo+Pgo+PiAtLQo+PiBTZW50IGZyb20g
bXkgQW5kcm9pZCBkZXZpY2Ugd2l0aCBLLTkgTWFpbC4gUGxlYXNlIGV4Y3VzZSBteSBicmV2aXR5
Lgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBD
YWtlIG1haWxpbmcgbGlzdAo+IENha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cj4gaHR0cHM6Ly9s
aXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQoKCgotLSAKTWFrZSBNdXNpYywgTm90
IFdhcgoKRGF2ZSBUw6RodApDVE8sIFRla0xpYnJlLCBMTEMKaHR0cDovL3d3dy50ZWtsaWJyZS5j
b20KVGVsOiAxLTgzMS00MzUtMDcyOQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5l
dApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
