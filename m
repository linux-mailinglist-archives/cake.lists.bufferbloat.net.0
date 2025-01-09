Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 416E7A07CE7
	for <lists+cake@lfdr.de>; Thu,  9 Jan 2025 17:08:19 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id CC0113CB39;
	Thu,  9 Jan 2025 11:08:17 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1736438897;
	bh=QO7z4pauJa0GcWbTSCVg3As9IJSTUCiKqp+xXG7iHnA=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=Ixs1WnpOhFd+Hmdi3n5NaV2S6J2oH6Faf+tKZciftuFuNUVNy6V+r/ck8XfJV5pBA
	 WWlQcnU7l3cZrzfhIVHqpsWTjiPd7aW75LvWO4jSVNsTf0qHiEZgUEzgw//kznRGk7
	 BNpji7UUrWeZP+k6MkwhSSWcn+/QKbfuYkeNTPb5Ccq6FUFzb5lzIzA+Vh6FrgHTo8
	 j2oPovgnaP07SGaGoxND/+HL1ahreh2SKNwpYt/VC0wYeMgSMQZsS7RpswmGjf9XH7
	 GQJ8h7rLMlcnPXnw4V0mFGAmHZrsdB7WEHSJQSVRplAJti/INh1YD1/saS4hIP5BMt
	 xSEBmvHBNGVvg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 3FBF83B2A4
 for <cake@lists.bufferbloat.net>; Thu,  9 Jan 2025 11:08:16 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1736438894; bh=GV3fhrLaqo26vcZSfffabpj3GEwR3i4jx02OWTzFB0o=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=gI8y8vlPPUrZNDhkK8lb10VoRAugl4JA+M8L3jzo88YUWHjhrZRNksGBsbyjg/BLY
 7WFm6g5rYD/5Goy0OmW3pRZEcqY6VqBgPRBQmxB2zyI9j5BT597KKPArGkvHX9Xsiy
 PEtgZZSKk1Mdn3D/W1kOuj7mCsHqj5lPs4dQoU0rQZp92gM5gxkEdQh0sIk79uqV+h
 tYjs9pA2saiI1nWPTfI3BLupK2oHA5XcAoiYgXgJVHDEDpJpmByJMyUYQjB0fi93K8
 QW9ZGZmlCZYu0c+6t10+r8PZnzN883aIFDCU3BXEU6k8UWnbkaNeunnYpQFEvpq7WQ
 afS7LALtUWN1g==
To: Paolo Abeni <pabeni@redhat.com>, Jamal Hadi Salim <jhs@mojatatu.com>,
 Cong Wang <xiyou.wangcong@gmail.com>, Jiri Pirko <jiri@resnulli.us>
In-Reply-To: <11915c70-ec5e-4d94-b890-f07f41094e2c@redhat.com>
References: <20250107120105.70685-1-toke@redhat.com>
 <fb7a1324-41c6-4e10-a6a3-f16d96f44f65@redhat.com> <87plkwi27e.fsf@toke.dk>
 <11915c70-ec5e-4d94-b890-f07f41094e2c@redhat.com>
Date: Thu, 09 Jan 2025 17:08:14 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87ikqohswh.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] [PATCH net v2] sched: sch_cake: add bounds checks to
 host bulk flow fairness counts
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
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= via Cake
 <cake@lists.bufferbloat.net>
Reply-To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
Cc: netdev@vger.kernel.org, cake@lists.bufferbloat.net,
 Eric Dumazet <edumazet@google.com>, Simon Horman <horms@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>,
 syzbot+f63600d288bfb7057424@syzkaller.appspotmail.com,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

UGFvbG8gQWJlbmkgPHBhYmVuaUByZWRoYXQuY29tPiB3cml0ZXM6Cgo+IE9uIDEvOS8yNSAxOjQ3
IFBNLCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gd3JvdGU6Cj4+IFBhb2xvIEFiZW5pIDxwYWJl
bmlAcmVkaGF0LmNvbT4gd3JpdGVzOgo+Pj4gT24gMS83LzI1IDE6MDEgUE0sIFRva2UgSMO4aWxh
bmQtSsO4cmdlbnNlbiB3cm90ZToKPj4+PiBFdmVuIHRob3VnaCB3ZSBmaXhlZCBhIGxvZ2ljIGVy
cm9yIGluIHRoZSBjb21taXQgY2l0ZWQgYmVsb3csIHN5emJvdAo+Pj4+IHN0aWxsIG1hbmFnZWQg
dG8gdHJpZ2dlciBhbiB1bmRlcmZsb3cgb2YgdGhlIHBlci1ob3N0IGJ1bGsgZmxvdwo+Pj4+IGNv
dW50ZXJzLCBsZWFkaW5nIHRvIGFuIG91dCBvZiBib3VuZHMgbWVtb3J5IGFjY2Vzcy4KPj4+Pgo+
Pj4+IFRvIGF2b2lkIGFueSBzdWNoIGxvZ2ljIGVycm9ycyBjYXVzaW5nIG91dCBvZiBib3VuZHMg
bWVtb3J5IGFjY2Vzc2VzLAo+Pj4+IHRoaXMgY29tbWl0IGZhY3RvcnMgb3V0IGFsbCBhY2Nlc3Nl
cyB0byB0aGUgcGVyLWhvc3QgYnVsayBmbG93IGNvdW50ZXJzCj4+Pj4gdG8gYSBzZXJpZXMgb2Yg
aGVscGVycyB0aGF0IHBlcmZvcm0gYm91bmRzLWNoZWNraW5nIGJlZm9yZSBhbnkKPj4+PiBpbmNy
ZW1lbnRzIGFuZCBkZWNyZW1lbnRzLiBUaGlzIGFsc28gaGFzIHRoZSBiZW5lZml0IG9mIGltcHJv
dmluZwo+Pj4+IHJlYWRhYmlsaXR5IGJ5IG1vdmluZyB0aGUgY29uZGl0aW9uYWwgY2hlY2tzIGZv
ciB0aGUgZmxvdyBtb2RlIGludG8KPj4+PiB0aGVzZSBoZWxwZXJzLCBpbnN0ZWFkIG9mIGhhdmlu
ZyB0aGVtIHNwcmVhZCBvdXQgdGhyb3VnaG91dCB0aGUKPj4+PiBjb2RlICh3aGljaCB3YXMgdGhl
IGNhdXNlIG9mIHRoZSBvcmlnaW5hbCBsb2dpYyBlcnJvcikuCj4+Pj4KPj4+PiB2MjoKPj4+PiAt
IFJlbW92ZSBub3ctdW51c2VkIHNyY2hvc3QgYW5kIGRzdGhvc3QgbG9jYWwgdmFyaWFibGVzIGlu
IGNha2VfZGVxdWV1ZSgpCj4+Pgo+Pj4gU21hbGwgbml0OiB0aGUgY2hhbmdlbG9nIHNob3VsZCBj
b21lIGFmdGVyIHRoZSAnLS0tJyBzZXBhcmF0b3IuIE5vIG5lZWQKPj4+IHRvIHJlcG9zdCBqdXN0
IGZvciB0aGlzLgo+PiAKPj4gT2gsIEkgd2FzIHVuZGVyIHRoZSBpbXByZXNzaW9uIHRoYXQgd2Ug
d2FudGVkIHRoZW0gcHJlc2VydmVkIGluIHRoZSBnaXQKPj4gbG9nIChhbmQgaGVuY2UgYWJvdmUg
dGhlIC0tLSkuIElzIHRoYXQgbm90IHRoZSBjYXNlIChhbnltb3JlPyk/Cj4KPiBJdCB3YXMgc29t
ZSB0aW1lIGFnby4gSXMgdGhpcyB3YXkgc2luY2UgYSB3aGlsZToKPgo+IGh0dHBzOi8vZWxpeGly
LmJvb3RsaW4uY29tL2xpbnV4L3Y2LjEzLXJjMy9zb3VyY2UvRG9jdW1lbnRhdGlvbi9wcm9jZXNz
L21haW50YWluZXItbmV0ZGV2LnJzdCNMMjI5CgpIdWgsIHdoYWRkeWFrbm93LiBUaGFua3MgZm9y
IHRoZSBwb2ludGVyLgoKPiBbLi4uXQo+Pj4gZGl0aGVyaW5nIGlzIG5vdyBhcHBsaWVkIG9uIGJv
dGggZW5xdWV1ZSBhbmQgZGVxdWV1ZSwgd2hpbGUgcHJpb3IgdG8KPj4+IHRoaXMgcGF0Y2ggaXQg
b25seSBoYXBwZW5lZCBvbiBkZXF1ZXVlLiBJcyB0aGF0IGludGVudGlvbmFsPyBjYW4ndCBsZWFk
Cj4+PiB0byAoc21hbGwpIGZsb3dfZGVmaWNpdCBpbmNyZWFzZT8KPj4gCj4+IFllYWgsIHRoYXQg
d2FzIGRlbGliZXJhdGUuIFRoZSBmbG93IHF1YW50dW0gaXMgb25seSBzZXQgb24gZW5xdWV1ZSB3
aGVuCj4+IHRoZSBmbG93IGlzIGZpcnN0IGluaXRpYWxpc2VkIGFzIGEgc3BhcnNlIGZsb3csIG5v
dCBmb3IgZXZlcnkgcGFja2V0Lgo+PiBUaGUgb25seSB1c2VyLXZpc2libGUgZWZmZWN0IEkgY2Fu
IHNlZSB0aGlzIGhhdmluZyBpcyB0aGF0IHRoZSBtYXhpbXVtCj4+IHBhY2tldCBzaXplIHRoYXQg
Y2FuIGJlIHNlbnQgd2hpbGUgYSBmbG93IHN0YXlzIHNwYXJzZSB3aWxsIG5vdyB2YXJ5Cj4+IHdp
dGggKy8tIG9uZSBieXRlIGluIHNvbWUgY2FzZXMuIEkgYW0gcHJldHR5IHN1cmUgdGhpcyB3b24n
dCBoYXZlIGFueQo+PiBjb25zZXF1ZW5jZSBpbiBwcmFjdGljZSwgYW5kIEkgZG9uJ3QgdGhpbmsg
aXQncyB3b3J0aCBjb21wbGljYXRpbmcgdGhlCj4+IGNvZGUgKHdpdGggYSAnZGl0aGVyJyBhcmd1
bWVudCB0byBjYWtlX2Zsb3dfZ2V0X3F1YW50dW0oKSwgc2F5KSB0bwo+PiBwcmVzZXJ2ZSB0aGUg
b2xkIGJlaGF2aW91ci4KPgo+IFVuZGVyc3Rvb2QsIGFuZCBmaW5lIGJ5IG1lLgo+Cj4+IEkgZ3Vl
c3MgSSBzaG91bGQgaGF2ZSBtZW50aW9uZWQgaW4gdGhlIGNvbW1pdCBtZXNzYWdlIHRoYXQgdGhp
cyB3YXMKPj4gZGVsaWJlcmF0ZS4gU2luY2UgaXQgc2VlbXMgeW91J2xsIGJlIGVkaXRpbmcgdGhh
dCBhbnl3YXkgKGNmIHRoZSBhYm92ZSksCj4+IGhvdyBhYm91dCBhZGRpbmcgYSBwYXJhZ3JhcGgg
bGlrZToKPj4gCj4+ICBBcyBwYXJ0IG9mIHRoaXMgY2hhbmdlLCB0aGUgZmxvdyBxdWFudHVtIGNh
bGN1bGF0aW9uIGlzIGNvbnNvbGlkYXRlZAo+PiAgaW50byBhIGhlbHBlciBmdW5jdGlvbiwgd2hp
Y2ggbWVhbnMgdGhhdCB0aGUgZGl0aGVyaW5nIGFwcGxpZWQgdG8gdGhlCj4+ICBob3N0IGxvYWQg
c2NhbGluZyBpcyBub3cgYXBwbGllZCBib3RoIGluIHRoZSBEUlIgcm90YXRpb24gYW5kIHdoZW4g
YQo+PiAgc3BhcnNlIGZsb3cncyBxdWFudHVtIGlzIGZpcnN0IGluaXRpYXRlZC4gVGhlIG9ubHkg
dXNlci12aXNpYmxlIGVmZmVjdAo+PiAgb2YgdGhpcyBpcyB0aGF0IHRoZSBtYXhpbXVtIHBhY2tl
dCBzaXplIHRoYXQgY2FuIGJlIHNlbnQgd2hpbGUgYSBmbG93Cj4+ICBzdGF5cyBzcGFyc2Ugd2ls
bCBub3cgdmFyeSB3aXRoICsvLSBvbmUgYnl0ZSBpbiBzb21lIGNhc2VzLiBUaGlzIHNob3VsZAo+
PiAgbm90IG1ha2UgYSBub3RpY2VhYmxlIGRpZmZlcmVuY2UgaW4gcHJhY3RpY2UsIGFuZCB0aHVz
IGl0J3Mgbm90IHdvcnRoCj4+ICBjb21wbGljYXRpbmcgdGhlIGNvZGUgdG8gcHJlc2VydmUgdGhl
IG9sZCBiZWhhdmlvdXIuCj4KPiBJdCdzIGluIEpha3ViJ3MgaGFuZHMgbm93LCBwb3NzaWJseSBo
ZSBjb3VsZCBwcmVmZXIgYSByZXBvc3QgdG8gcmVkdWNlCj4gdGhlIG1haW50YWluZXIncyBvdmVy
aGVhZC4KCkFscmlnaHQsIHN1cmUsIEknbGwgcmVzcGluIDopCgotVG9rZQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtl
QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0
aW5mby9jYWtlCg==
